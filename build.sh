#!/bin/bash

ANDROID_HOME=${ANDROID_HOME:-${HOME}/android-sdk}

bash ./install-build-deps.sh

dotnet build -p:AndroidSdkDirectory=${ANDROID_HOME} SheepBrowser/
