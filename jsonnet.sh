#!/bin/bash
export TTY

cd "$GOPATH"

# export GOPATH=$HOME/go-workspace
# mkdir -pv $GOPATH

go get github.com/fatih/color
go get github.com/google/go-jsonnet
cd $GOPATH/src/github.com/google/go-jsonnet
cd jsonnet
go build
./jsonnet /dev/stdin <<< '{x: 1, y: self.x} + {x: 10}'