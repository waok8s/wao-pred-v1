package main

import (
	"context"
	"fmt"
	"os"
	"strconv"

	tfcoreframework "tensorflow/core/framework"
	pb "tensorflow_serving/apis"

	"google.golang.org/grpc"
)

func mustParseF64(s string) float64 {
	v, err := strconv.ParseFloat(s, 64)
	if err != nil {
		panic(err)
	}
	return v
}

func main() {

	if len(os.Args) != 6 {
		fmt.Printf("Usage: %s SERVER_IP CPU_USAGE AMBIENT_TEMP CPU1_TEMP CPU2_TEMP\nExample: %s 10.0.0.100 0.5 0.5 0.5 0.5\n* CPU usage and temperatures must be normalized (0.0-1.0).\n", os.Args[0], os.Args[0])
		os.Exit(1)
	}

	var (
		serverIP    = os.Args[1]
		serverPort  = 8500
		cpuUsage    = mustParseF64(os.Args[2])
		ambientTemp = mustParseF64(os.Args[3])
		cpu1Temp    = mustParseF64(os.Args[4])
		cpu2Temp    = mustParseF64(os.Args[5])
	)

	request := &pb.PredictRequest{
		ModelSpec: &pb.ModelSpec{
			Name:          "konohana",
			SignatureName: "konohana",
		},
		Inputs: map[string]*tfcoreframework.TensorProto{
			"inputs": {
				Dtype: tfcoreframework.DataType_DT_FLOAT,
				TensorShape: &tfcoreframework.TensorShapeProto{
					Dim: []*tfcoreframework.TensorShapeProto_Dim{
						{
							Size: int64(1),
						},
						{
							Size: int64(4),
						},
					},
				},
				FloatVal: []float32{float32(cpuUsage), float32(ambientTemp), float32(cpu1Temp), float32(cpu2Temp)},
			},
		},
	}

	conn, err := grpc.Dial(fmt.Sprintf("%s:%d", serverIP, serverPort), grpc.WithInsecure())
	if err != nil {
		panic(err)
	}
	defer conn.Close()

	client := pb.NewPredictionServiceClient(conn)
	resp, err := client.Predict(context.Background(), request)
	if err != nil {
		panic(err)
	}

	fmt.Printf("%+v\n", resp.GetModelSpec())
	fmt.Printf("%+v\n", resp.GetOutputs())
	fmt.Printf("%f\n", resp.GetOutputs()["outputs"].FloatVal[0])
}
