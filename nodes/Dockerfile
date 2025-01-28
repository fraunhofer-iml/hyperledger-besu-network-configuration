# Copyright Fraunhofer Institute for Material Flow and Logistics
#
# Licensed under the Apache License, Version 2.0 (the "License").
# For details on the licensing terms, see the LICENSE file.
# SPDX-License-Identifier: Apache-2.0

FROM hyperledger/besu:24.12.2-amd64

ARG NAME

ENV HOSTNAME=besu-${NAME}
ENV LOG4J_CONFIGURATION_FILE="data/log4j2-config.xml"

RUN mkdir data
COPY keys data/

RUN mkdir logs

# HTTP, WS, P2P
EXPOSE 8545
EXPOSE 8546
EXPOSE 30303

RUN echo "### Docker build of $HOSTNAME was successful - starting Entrypoint"
ENTRYPOINT ["/docker-entrypoint.sh"]
