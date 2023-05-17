#!/bin/bash

BUILD_DIR="./builds"
AMD64_VER="5556890"
ARM64_VER="5556897"
ARM_VER="5556895"

if [ ! -d "$BUILD_DIR" ]; then
  mkdir -p "$BUILD_DIR"
  
  ## download the releases for the individual platforms
  #amd64
  mkdir -p "$BUILD_DIR/linux/amd64"
  pushd "$BUILD_DIR/linux/amd64"
  curl -OL "https://github.com/spikeydragoon/Cross-Ark-Chat/files/5556890/CrossArkChatLinux.zip"
  unzip CrossArkChatLinux.zip
  mv ./CrossArkChatLinux/* ./
  rm -r ./CrossArkChatLinux
  rm CrossArkChatLinux.zip
  popd
  
  #arm64
  mkdir -p "$BUILD_DIR/linux/arm64"
  pushd "$BUILD_DIR/linux/arm64"
  curl -OL "https://github.com/spikeydragoon/Cross-Ark-Chat/files/$ARM64_VER/CrossArkChatArm.zip"
  unzip CrossArkChatArm.zip
  mv ./CrossArkChatArm/* ./
  rm -r ./CrossArkChatArm
  rm CrossArkChatArm.zip
  popd
  
  #arm
  mkdir -p "$BUILD_DIR/linux/arm/v7"
  pushd "$BUILD_DIR/linux/arm/v7"
  curl -OL "https://github.com/spikeydragoon/Cross-Ark-Chat/files/$ARM_VER/CrossArkChatArm.zip"
  unzip CrossArkChatArm.zip
  mv ./CrossArkChatArm/* ./
  rm -r ./CrossArkChatArm
  rm CrossArkChatArm.zip
  popd
fi
