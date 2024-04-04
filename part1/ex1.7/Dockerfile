FROM ubuntu:22.04

WORKDIR /usr/src/app

COPY script.sh .

# Execute a command with `/bin/sh -c` prefix.
RUN apt-get update && apt-get install -y curl

RUN chmod +x script.sh

# When running Docker run the command will be ./hello.sh
ENTRYPOINT ["./script.sh"]
