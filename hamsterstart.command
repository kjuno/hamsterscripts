#!/bin/bash

cd "$(dirname "$0")"

JDK_PATH="./hamstersimulator-v29-06/zulu8.64.0.19-ca-jdk8.0.345-macosx_aarch64/zulu-8.jdk/Contents/Home/bin"

$JDK_PATH/java -jar ./hamstersimulator-v29-06/hamstersimulator.jar
