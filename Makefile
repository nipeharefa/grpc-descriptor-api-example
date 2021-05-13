generate-proto:
	protoc \
		--proto_path=${GOPATH}/src/github.com/googleapis/googleapis \
		--proto_path=/usr/local/include \
		--proto_path=helloworld \
		--include_imports --include_source_info  \
		--descriptor_set_out=proto_gen/helloworld.pb  \
		--go_out=.  \
		--go-grpc_out=. \
		--go-grpc_opt=require_unimplemented_servers=false \
		helloworld/*.proto