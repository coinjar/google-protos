#!/bin/bash

PROTOS=("
  google/protobuf/any.proto
  google/protobuf/api.proto
  google/protobuf/duration.proto
  google/protobuf/empty.proto
  google/protobuf/field_mask.proto
  google/protobuf/source_context.proto
  google/protobuf/struct.proto
  google/protobuf/timestamp.proto
  google/protobuf/type.proto
  google/protobuf/wrappers.proto
")

rm -rf ./lib/google_protos/*

for file in $PROTOS; do
    protoc -I ./protobuf/src/google/protobuf/ --elixir_out=plugins=grpc:./lib/google_protos protobuf/src/$file
done
