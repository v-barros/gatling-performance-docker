#!/bin/sh
GATLING_BIN=${GATLING_HOME}/bin

sh ${GATLING_BIN}/gatling.sh -s ${SIMULATION_FQN} -erjo "${GATLING_OPTS}" --run-mode local
