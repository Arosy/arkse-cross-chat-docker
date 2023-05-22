# syntax=docker/dockerfile:1
#FROM mcr.microsoft.com/dotnet/runtime:6.0.7-jammy
FROM mcr.microsoft.com/dotnet/core/sdk:3.1
ARG TARGETPLATFORM

RUN apt-get update
RUN apt-get install libssl-dev -yq

# copy the actual binaries ..
RUN mkdir /var/app
COPY ./builds/$TARGETPLATFORM/ /var/app/

# register the startup script and make it executable
COPY ./startup.sh /bin/startup.sh
RUN chmod +x /bin/startup.sh

# runs the desired script everytime the container boots
ENTRYPOINT "bin/startup.sh"
