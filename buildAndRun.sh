#!/bin/sh
./gradlew clean war && docker build -t sogis/ilirepo .
docker rm -f ilirepo || true && docker run -d -p 8080:8080 --name ilirepo sogis/ilirepo 
