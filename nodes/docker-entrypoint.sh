# Copyright Fraunhofer Institute for Material Flow and Logistics
#
# Licensed under the Apache License, Version 2.0 (the "License").
# For details on the licensing terms, see the LICENSE file.
# SPDX-License-Identifier: Apache-2.0

#!/bin/sh

set -o errexit
set -o nounset

echo "### Starting ${HOSTNAME} ###"

exec besu \
  --api-gas-price-max=0 \
  --data-path=data \
  --data-storage-format=FOREST \
  --genesis-file=data/genesis.json \
  --host-allowlist="*" \
  --min-gas-price=0 \
  --nat-method=DOCKER \
  --node-private-key-file=data/key.priv \
  --p2p-enabled=true \
  --p2p-port=30303 \
  --revert-reason-enabled=true \
  --rpc-http-enabled=true \
  --rpc-http-api=ADMIN,DEBUG,ETH,NET,QBFT,TRACE,TXPOOL,WEB3 \
  --rpc-http-cors-origins="*" \
  --rpc-http-port=8545 \
  --rpc-max-logs-range=0 \
  --rpc-ws-enabled=true \
  --rpc-ws-api=ADMIN,DEBUG,ETH,NET,QBFT,TRACE,TXPOOL,WEB3 \
  --rpc-ws-port=8546 \
  --sync-mode=FULL \
  --tx-pool-min-gas-price=0
