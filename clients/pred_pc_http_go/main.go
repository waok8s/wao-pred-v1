package main

import (
	"bytes"
	"encoding/json"
	"fmt"
	"io"
	"net/http"
	"os"
	"strconv"
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
		serverPort  = 8501
		cpuUsage    = mustParseF64(os.Args[2])
		ambientTemp = mustParseF64(os.Args[3])
		cpu1Temp    = mustParseF64(os.Args[4])
		cpu2Temp    = mustParseF64(os.Args[5])
	)

	url := fmt.Sprintf("http://%s:%d/v1/models/konohana:predict", serverIP, serverPort)

	type requestFormat struct {
		Inputs        [][]float64 `json:"inputs"`
		SignatureName string      `json:"signature_name"`
	}

	req := requestFormat{
		Inputs: [][]float64{
			{cpuUsage, ambientTemp, cpu1Temp, cpu2Temp},
		},
		SignatureName: "konohana",
	}
	var buf bytes.Buffer
	if err := json.NewEncoder(&buf).Encode(&req); err != nil {
		panic(err)
	}

	resp, err := http.Post(url, "application/json", &buf)
	if err != nil {
		panic(err)
	}
	defer resp.Body.Close()

	p, err := io.ReadAll(resp.Body)
	if err != nil {
		panic(err)
	}

	fmt.Printf("%s\n", string(p))
}
