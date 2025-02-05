# Use the lightweight Alpine Linux image
FROM alpine:latest

# Define a build argument with a default value "Captain"
ARG NAME="Captain"

# Optional: Transfer the build argument to an environment variable (so it’s available at runtime)
ENV NAME=${NAME}

# Set the default command to print the greeting message and then exit
CMD echo "Hello, ${NAME}!"
