#!/bin/bash

ANDROID_HOME=${ANDROID_HOME:-${HOME}/android-sdk}
DOTNET_ROOT=${HOME}/.dotnet
PATH=${DOTNET_ROOT}:${PATH}

bash ./install-build-deps.sh

dotnet --info
dotnet build -p:AndroidSdkDirectory=${ANDROID_HOME} SheepBrowser/
