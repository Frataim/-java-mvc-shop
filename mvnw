#!/bin/sh

# Maven Wrapper startup script.

set -e

WRAPPER_DIR="$(dirname "$0")/.mvn/wrapper"
BASE_DIR="$(cd "$(dirname "$0")" && pwd)"
WRAPPER_JAR="$WRAPPER_DIR/maven-wrapper.jar"
WRAPPER_MAIN="org.apache.maven.wrapper.MavenWrapperMain"

if [ -z "$JAVA_HOME" ]; then
  JAVACMD="java"
else
  JAVACMD="$JAVA_HOME/bin/java"
fi

if [ ! -x "$(command -v "$JAVACMD")" ]; then
  echo "Java is not installed or JAVA_HOME is not configured correctly." >&2
  exit 1
fi

if [ ! -f "$WRAPPER_JAR" ]; then
  echo "Maven Wrapper JAR not found: $WRAPPER_JAR" >&2
  exit 1
fi

exec "$JAVACMD" -Dmaven.multiModuleProjectDirectory="$BASE_DIR" -classpath "$WRAPPER_JAR" "$WRAPPER_MAIN" "$@"
