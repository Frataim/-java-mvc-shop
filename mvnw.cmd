@echo off
setlocal

set WRAPPER_DIR=%~dp0.mvn\wrapper
set WRAPPER_JAR=%WRAPPER_DIR%\maven-wrapper.jar
set WRAPPER_MAIN=org.apache.maven.wrapper.MavenWrapperMain
set MAVEN_PROJECTBASEDIR=%~dp0

if "%JAVA_HOME%"=="" (
  set JAVACMD=java
) else (
  set JAVACMD=%JAVA_HOME%\bin\java.exe
)

if not exist "%WRAPPER_JAR%" (
  echo Maven Wrapper JAR not found: %WRAPPER_JAR% 1>&2
  exit /b 1
)

"%JAVACMD%" -Dmaven.multiModuleProjectDirectory="%MAVEN_PROJECTBASEDIR%" -classpath "%WRAPPER_JAR%" "%WRAPPER_MAIN%" %*
endlocal
