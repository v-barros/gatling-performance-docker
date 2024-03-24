# gatling-performance-docker
Docker image for Gatling (Free version) performance tests

# Pull the image 
```docker pull viniab/docker-gatling:latest```

# Run the docker 
 ```docker run -v /path/to/simulations/:/gatling/user-files/simulations -v /path/to/resources/:/gatling/user-files/resources -v /path/to/results/:/gatling/results -e GATLING_OPTS="-Dusers=1" -e SIMULATION_FQN=gatlingdemostore.DemoStoreSimulation viniab/docker-gatling:latest```
