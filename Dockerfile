FROM cypress/browsers:node8.9.3-chrome73
ENV RUN_DIR=/home
ENV ENTRYPOINT=/root/entrypoint
RUN mkdir $ENTRYPOINT
RUN echo "cd $RUN_DIR/typescript-selenium && npm install && npm test" > $ENTRYPOINT/installDependency.sh
RUN chmod +x $ENTRYPOINT/installDependency.sh
WORKDIR $RUN_DIR
ENTRYPOINT $ENTRYPOINT/installDependency.sh
