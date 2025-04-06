#!/bin/bash

# General
alias x="xdg-open 2> /dev/null"
alias py3="python3"
alias cat="bat -pp"

# Docker-compose
alias dcu="docker compose up -d"
alias dcd="docker compose down"

# Maven
alias mc="mvn clean"
alias mci="mvn -V clean install"
alias mcist="mvn -V clean install -DskipTests"
alias mcp="mvn -V clean package"
alias mcpst="mvn -V clean package -DskipTests"

# Quarkus
alias qca="quarkus create app"
alias qd="quarkus dev"
alias qea="quarkus ext add"

# Jumping between Java versions
#   this is, among others, used by Maven -- hence, doing 'j11' and mcist will run the maven command with Java 11
alias j11="export JAVA_HOME=/usr/lib/jvm/java-11-openjdk"
alias j17="export JAVA_HOME=/usr/lib/jvm/java-17-openjdk"
alias j21="export JAVA_HOME=/usr/lib/jvm/java-21-openjdk"

