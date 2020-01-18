#!/usr/bin/env bash
#!/usr/bin/env bash
mvn clean && \
	mvn package && \
    docker build -t hello-a:latest .
