# Project: Building a Basic Dockerfile on Amazon Linux EC2

## Overview

In this project, I created a Docker image using a basic Dockerfile that outputs a personalized greeting message. Additionally, I automated the Docker installation process on an Amazon Linux EC2 instance by developing a custom setup script.

## Steps Undertaken

1. **Setting Up the EC2 Instance:**
   - Launched an Amazon Linux EC2 instance.
   - Connected to the instance via SSH.

2. **Automating Docker Installation:**
   - Developed a Bash script to automate the installation and configuration of Docker on Amazon Linux. This script:
     - Updates system packages.
     - Installs Docker.
     - Starts the Docker service.
     - Enables Docker to start on boot.
     - Adds the current user to the Docker group to allow Docker commands without `sudo`.
   - Executed the script on the EC2 instance to set up Docker efficiently.

3. **Creating the Dockerfile:**
   - Created a `Dockerfile` with the following specifications:
     - **Base Image:** `alpine:latest` for its minimal footprint.
     - **Build Argument:** Introduced a build argument `NAME` with a default value of "Captain".
     - **Environment Variable:** Set the `NAME` argument as an environment variable.
     - **Command:** Configured the container to print "Hello, [NAME]!" upon execution.

4. **Building and Running the Docker Image:**
   - Built the Docker image using the Dockerfile.
   - Ran the Docker container to verify it outputs the expected greeting message.

## Key Learnings

- **Dockerfile Creation:** Gained hands-on experience in writing Dockerfiles, specifying base images, and configuring build arguments and environment variables.
- **Docker Commands:** Learned to build Docker images and run containers using the Docker CLI.
- **Automation with Bash Scripts:** Enhanced skills in scripting to automate software installation and configuration processes.
- **System Administration:** Improved understanding of managing services and user permissions on Linux systems.

## Additional Resources

- **Project Inspiration:** This project was inspired by the [Basic Dockerfile Project on roadmap.sh](https://roadmap.sh/projects/basic-dockerfile).
- **Docker Documentation:** For more detailed information on Docker, refer to the [official Docker documentation](https://docs.docker.com/).

By completing this project, I have strengthened my proficiency in Docker and system automation, laying a solid foundation for more advanced containerization tasks in the future. 