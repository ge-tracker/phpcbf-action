# Container image that runs your code
FROM cytopia/phpcbf:3

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

ENV WORKDIR ${GITHUB_WORKSPACE}
WORKDIR ${GITHUB_WORKSPACE}

# Code file to execute when the docker container starts up (`entrypoint.sh`)
#ENTRYPOINT ["/entrypoint.sh"]
