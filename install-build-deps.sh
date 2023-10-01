#!/bin/bash

sdk_home=${ANDROID_HOME:-${HOME}/android-sdk}

echo "Downloading dotnet-install script"
wget https://dot.net/v1/dotnet-install.sh -O /tmp/dotnet-install.sh

echo "Installing .NET 8"
bash /tmp/dotnet-install.sh --channel 8.0

echo "Installing maui-android workload"
dotnet workload install maui-android

echo "Installing OpenJDK 11"
sudo apt-get update && sudo DEBIAN_FRONTEND=noninteractive apt-get install -y msopenjdk-11

echo "Intalling Android sdkmanager"
wget https://dl.google.com/android/repository/commandlinetools-linux-10406996_latest.zip -O /tmp/commandlinetools.zip
mkdir -pv $sdk_home/cmdline-tools
unzip -o /tmp/commandlinetools.zip -d $sdk_home/cmdline-tools
ln -sv ./cmdline-tools $sdk_home/cmdline-tools/latest

echo "Installing Android sdkmanager dependencies"
yes | $sdk_home/cmdline-tools/latest/bin/sdkmanager --licenses >/dev/null
$sdk_home/cmdline-tools/latest/bin/sdkmanager --install "platform-tools" "build-tools;34.0.0" "platforms;android-34" >/dev/null
