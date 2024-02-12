ARG SHAREPOINT_GENERATOR_VERSION=1.18.2
ARG NODE_VERSION=18.19.0

FROM node:${NODE_VERSION}

EXPOSE 4321 35729 5432

ENV NPM_CONFIG_PREFIX=/usr/app/.npm-global \
  PATH=$PATH:/usr/app/.npm-global/bin

VOLUME /usr/app/spfx
WORKDIR /usr/app/spfx
RUN useradd --create-home --shell /bin/bash spfx && \
    usermod -aG sudo spfx && \
    chown -R spfx:spfx /usr/app

USER spfx

RUN npm i --location=global gulp-cli@2 yo @microsoft/generator-sharepoint@${SHAREPOINT_GENERATOR_VERSION}

CMD /bin/bash
