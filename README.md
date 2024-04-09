# WAO Prediction Service

Prediction service used in WAO-Scheduler and WAO-LB.

Author: [kaz260](https://github.com/kaz260)

## Directory Structure

- `models/`: The power consumption model
- `clients/`: Clients
- `k8s/`: Kubernetes manifests

## Usage

### 1. Build the Docker image

```sh
docker build -t wao-predict-konohana-pc:1.0 .
```

### 2. Push the Docker image to your registry

```sh
REGISTRY=localhost # set your registry here
docker tag wao-predict-konohana-pc:1.0 $REGISTRY/wao-predict-konohana-pc:1.0
docker push $IMAGE
```

### 3. Run the prediction service

#### 3.1. Run with Kubernetes

Make sure you set the correct image name in `k8s/tensorflow-server-dep.yaml`.

```sh
kubectl apply -f k8s
```

> [!NOTE]
> You may need to expose the service with NodePort, Ingress, etc.

#### 3.2. Run with Docker

```sh
docker run -d --rm -p 8500:8500 -p 8501:8501 --name wao-pred $IMAGE
```

### 4. Predict with clients

Usage: `./TOOL SERVER_IP CPU_USAGE AMBIENT_TEMP CPU1_TEMP CPU2_TEMP`

Example: `./main.py 10.0.0.100 0.5 0.5 0.5 0.5`

> [!NOTE]
> CPU usage and temperatures are normalized to [0, 1].

#### 4.1. Python gRPC client

Local: 

```sh
cd clients/pred_pc_grpc_py

python -mvenv venv
. venv/bin/activate
pip install -r requirements.txt

./main.py -h
```

Docker:

```sh
cd clients/pred_pc_grpc_py

docker run -it --rm -v $PWD:/tmp -w /tmp tensorflow/tensorflow:2.9.1 /bin/bash
pip install tensorflow-serving-api==2.9.1

./main.py -h
```

You will get results like:

```
outputs {
  key: "outputs"
  value {
    dtype: DT_FLOAT
    tensor_shape {
      dim {
        size: 1
      }
      dim {
        size: 1
      }
    }
    float_val: 150.6072540283203
  }
}
model_spec {
  name: "konohana"
  version {
    value: 1218
  }
  signature_name: "konohana"
}
```

#### 4.2. Python HTTP client

```sh
cd clients/pred_pc_http_py

python -mvenv venv
. venv/bin/activate
pip install -r requirements.txt

./main.py -h
```

You will get results like:

```
{
    "outputs": [
        [
            150.607254
        ]
    ]
}
```

#### 4.3. Go gRPC client

```sh
cd clients/pred_pc_grpc_go
./prepare.sh

go run main.go -h
```

You will get results like:

```
name:"konohana" version:<value:1218 > signature_name:"konohana" 
map[outputs:dtype:DT_FLOAT tensor_shape:<dim:<size:1 > dim:<size:1 > > float_val:150.60725 ]
150.607254
```

#### 4.4. Go HTTP client

```sh
cd clients/pred_pc_http_go
go run main.go -h
```

You will get results like:

```
{
    "outputs": [
        [
            150.607254
        ]
    ]
}
```
