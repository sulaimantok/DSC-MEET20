# Use whalesay image as a base image
FROM docker/whalesay:latest

# Install fortunes
RUN apt -y update && apt install -y fortunes

# Execute command
CMD /usr/games/fortune -a | cowsay
