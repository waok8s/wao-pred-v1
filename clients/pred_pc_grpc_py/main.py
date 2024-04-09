#!/usr/bin/python3

import sys
import grpc
import tensorflow as tf
from tensorflow_serving.apis import predict_pb2
from tensorflow_serving.apis import prediction_service_pb2_grpc


if len(sys.argv) != 6:
    print(
        f"Usage: {sys.argv[0]} SERVER_IP CPU_USAGE AMBIENT_TEMP CPU1_TEMP CPU2_TEMP\nExample: {sys.argv[0]} 10.0.0.100 0.5 0.5 0.5 0.5\n* CPU usage and temperatures must be normalized (0.0-1.0).")
    exit(1)

server_ip = sys.argv[1]
cpu_usage = float(sys.argv[2])
ambient_temp = float(sys.argv[3])
cpu1_temp = float(sys.argv[4])
cpu2_temp = float(sys.argv[5])

data = [cpu_usage, ambient_temp, cpu1_temp, cpu2_temp]

request = predict_pb2.PredictRequest()
request.model_spec.name = 'konohana'
request.model_spec.signature_name = 'konohana'
request.inputs['inputs'].CopyFrom(tf.make_tensor_proto(data, shape=[1, 4]))

channel = grpc.insecure_channel(f"{server_ip}:8500")
stub = prediction_service_pb2_grpc.PredictionServiceStub(channel)

result = stub.Predict(request, 10)
print(result)
