# gatling-performance-docker
Docker image for Gatling (Free version) performance tests

# V1.0 Settings:

* Linux Alpine 3.19.1
* Gatling 3.10.4
* OpenJDK 17

# Pull the image 
```docker pull viniab/docker-gatling:latest```

# Run the docker container 
 ```docker run -v /path/to/simulations/:/gatling/user-files/simulations -v /path/to/resources/:/gatling/user-files/resources -v /path/to/results/:/gatling/results -e GATLING_OPTS="-Dusers=1" -e SIMULATION_FQN=gatlingdemostore.DemoStoreSimulation viniab/docker-gatling:latest```
