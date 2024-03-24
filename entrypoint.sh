#!/bin/sh
GATLING_BIN=${GATLING_HOME}/bin

sh ${GATLING_BIN}/gatling.sh -s ${SIMULATION_FQN} --run-mode local
