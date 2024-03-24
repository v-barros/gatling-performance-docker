FROM alpine:3.19.1

ARG gatlingVersion=3.10.4

ENV GATLING_VERSION ${gatlingVersion}
ENV GATLING_HOME /gatling

WORKDIR ${GATLING_HOME}

RUN apk add --no-cache openjdk17-jre wget libc6-compat
RUN mkdir -p /gatling \
    && mkdir -p /tmp \
    && wget -O /tmp/gatling.zip https://repo1.maven.org/maven2/io/gatling/highcharts/gatling-charts-highcharts-bundle/${GATLING_VERSION}/gatling-charts-highcharts-bundle-${GATLING_VERSION}-bundle.zip \
    && unzip /tmp/gatling.zip -d /tmp/gatling \
    && mv /tmp/gatling/gatling-charts-highcharts-bundle-${GATLING_VERSION}/* /gatling/ \
    && rm -rf /tmp/*
    
WORKDIR /

COPY entrypoint.sh entrypoint.sh

RUN chmod +x entrypoint.sh

CMD [ "sh", "/entrypoint.sh" ]
