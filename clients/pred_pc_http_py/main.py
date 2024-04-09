#!/usr/bin/python3

import sys
import requests
import json

if len(sys.argv) != 6:
    print(
        f"Usage: {sys.argv[0]} SERVER_IP CPU_USAGE AMBIENT_TEMP CPU1_TEMP CPU2_TEMP\nExample: {sys.argv[0]} 10.0.0.100 0.5 0.5 0.5 0.5\n* CPU usage and temperatures must be normalized (0.0-1.0).")
    exit(1)

server_ip = sys.argv[1]
cpu_usage = float(sys.argv[2])
ambient_temp = float(sys.argv[3])
cpu1_temp = float(sys.argv[4])
cpu2_temp = float(sys.argv[5])

data = [[cpu_usage, ambient_temp, cpu1_temp, cpu2_temp]]

req = {"inputs": data, "signature_name": "konohana"}

url = f"http://{server_ip}:8501/v1/models/konohana:predict"

res = requests.post(url, json=req)
print(res.text)
