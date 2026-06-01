#!/bin/bash
docker pull zaproxy/zap-stable
docker run --rm -v "$(pwd):/zap/wrk" zaproxy/zap-stable zap-baseline.py \
  -t https://kenken64.github.io/bitcoin-order-app \
  -r /zap/wrk/zap_report.html
echo $? > /dev/null