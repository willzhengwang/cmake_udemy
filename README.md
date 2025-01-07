# cmake_udemy
Udemy course: Master Modern CMake, Unit Testing, Continuous Integration, and More for Your daily C/C++ Workflow!


# Build the docker image

```
cd C:\Users\anais\cmake_udemy
docker build -t ubuntu-22.04 .
```

# Run the docker image in a container
Run the container and mount the host directory (C:\Users\anais\cmake_udemy) to /cmake_udemy in the container:

```
docker run -it --name ubuntu-dev-container -v C:\Users\anais\cmake_udemy:/workspace/cmake_udemy ubuntu-22.04
```

# Access the Container. 
If you need to re-enter the running container later, use:

```
docker exec -it ubuntu-tools-container bash
```

# Stop the Container

```
docker stop ubuntu-dev-container
// docker rm ubuntu-dev-container
```

# Restart the Container 
To restart and reattach to the container:
`docker start -ai ubuntu-tools-container`
