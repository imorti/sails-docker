FROM node:slim


RUN apt-get update && \
    apt-get install -y git

RUN npm install -g sails grunt bower pm2 npm-check-updates
RUN mkdir -p /src/app


# Define working directory.
WORKDIR /src/app

# Expose ports.
EXPOSE 1337

CMD ["sails", "lift"]
