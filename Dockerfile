FROM node:12-slim

LABEL repository="https://github.com/bitprj/bitlabautomator"
LABEL homepage="https://github.com/bitprj/bitlabautomator"
LABEL maintainer="Emily Chen <emily@bitproject.org>"

LABEL com.github.actions.name="GitHub Action to Create BitLab files"
LABEL com.github.actions.description="Automatically create necessary files to create a BitLab"
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="blue"

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git && \
    apt-get install -y jq

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
