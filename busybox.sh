#!/bin/bash

# run busybox environment by docker

docker run --rm -it -v $(pwd):/workspace -w /workspace busybox