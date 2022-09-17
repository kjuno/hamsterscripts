#!/bin/bash

cd "$(dirname "$0")"

# CONFIG
JDK_URL="https://cdn.azul.com/zulu/bin/zulu8.64.0.19-ca-jdk8.0.345-macosx_aarch64.tar.gz"
HAM_URL="https://www.java-hamster-modell.de/download/v29/hamstersimulator-v29-06.zip"
STARTUP="hamsterstart.command"

# DOWNLOAD
curl -o ./tmp_jdk.tar.gz $JDK_URL
curl -o ./tmp_ham.zip $HAM_URL

# UNPACK
tar -xvf ./tmp_ham.zip -C .
tar -xvf ./tmp_jdk.tar.gz -C ./hamstersimulator-v29-06
rm ./tmp_jdk.tar.gz
rm ./tmp_ham.zip

# UNUSED
rm ./hamstersimulator-v29-06/hamstersimulator.bat
rm ./hamstersimulator-v29-06/hamstersimulator.sh
rm ./README.md

# CHMOD EXECUTE FILE
chmod +x ./$STARTUP
