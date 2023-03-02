.PHONY: proto
.SILENT: proto

proto:
	protoc \
  --go_out=. --go_opt=module=github.com/pergamenum/protobuf \
  --go-grpc_out=. --go-grpc_opt=module=github.com/pergamenum/protobuf \
  ./proto/**/*.proto
	go mod tidy