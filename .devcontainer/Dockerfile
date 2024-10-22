# Load versions from the devcontainer.json file
ARG NODE_VERSION

# Use the specified node version
FROM node:${NODE_VERSION}

# Redeclare the ARG variables after the FROM instruction
ARG GULP_CLI_VERSION
ARG YO_VERSION
ARG SPFX_GENERATOR_VERSION

EXPOSE 4321 35729 5432

ENV NPM_CONFIG_PREFIX=/usr/app/.npm-global \
    PATH=$PATH:/usr/app/.npm-global/bin

VOLUME /usr/app/spfx
WORKDIR /usr/app/spfx

RUN useradd --create-home --shell /bin/bash spfx && \
    usermod -aG sudo spfx && \
    chown -R spfx:spfx /usr/app

USER spfx

# Use the specified versions of gulp, yo, and spfx generator
RUN npm cache clean --force && \
    npm install -g "gulp-cli@${GULP_CLI_VERSION}" && \
    npm install -g "yo@${YO_VERSION}" && \
    npm install -g "@microsoft/generator-sharepoint@${SPFX_GENERATOR_VERSION}"

CMD ["/bin/bash"]
