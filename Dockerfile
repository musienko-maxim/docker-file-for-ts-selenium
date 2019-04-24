FROM cypress/browsers:chrome69
ENV RUN_DIR=/root/selenium/typescript-selenium
ENV ENTRYPOINT=/root/entrypoint
ENV CYPRESS_BINARY_DIR=/root/cypress/node_modules/.bin
RUN mkdir $ENTRYPOINT
RUN echo "cd $RUN_DIR && npm install && npm test" > $ENTRYPOINT/installDependency.sh
RUN chmod +x $ENTRYPOINT/installDependency.sh
WORKDIR $RUN_DIR
ENTRYPOINT $ENTRYPOINT/installDependency.sh