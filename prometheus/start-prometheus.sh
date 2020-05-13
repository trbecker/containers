#!/bin/bash

podman run -dt -p 9091:9091 -v $PWD/data:/prometheus:z rlyeh/prometheus
