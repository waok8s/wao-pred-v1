module pred_pc_grpc_go

go 1.19

replace (
	tensorflow => ./pkg/tensorflow
	tensorflow_serving => ./pkg/tensorflow_serving
)

require (
	google.golang.org/grpc v1.48.0
	tensorflow v0.0.0-00010101000000-000000000000
	tensorflow_serving v0.0.0-00010101000000-000000000000
)

require (
	github.com/golang/protobuf v1.5.2 // indirect
	golang.org/x/net v0.0.0-20210405180319-a5a99cb37ef4 // indirect
	golang.org/x/sys v0.0.0-20210510120138-977fb7262007 // indirect
	golang.org/x/text v0.3.5 // indirect
	google.golang.org/genproto v0.0.0-20220819174105-e9f053255caa // indirect
	google.golang.org/protobuf v1.28.1 // indirect
)
