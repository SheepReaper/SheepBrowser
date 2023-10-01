#!/bin/bash

ANDROID_HOME=${ANDROID_HOME:-${HOME}/android-sdk}

bash ./install-build-deps.sh

DOTNET_ROOT=${HOME}/.dotnet
PATH=${DOTNET_ROOT}:${PATH}

dotnet --info
dotnet build -p:AndroidSdkDirectory=${ANDROID_HOME} SheepBrowser/
