#!/bin/sh
# Auto-download gradle wrapper jar if missing
if [ ! -f "gradle/wrapper/gradle-wrapper.jar" ]; then
  mkdir -p gradle/wrapper
  curl -sL "https://raw.githubusercontent.com/gradle/gradle/v8.2.0/gradle/wrapper/gradle-wrapper.jar" -o gradle/wrapper/gradle-wrapper.jar
fi
exec gradle "$@"
