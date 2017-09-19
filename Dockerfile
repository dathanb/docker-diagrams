FROM node:8

RUN apt-get update &&\
    apt-get install -y libgtk2.0-0 libgconf-2-4 libasound2 libxtst6 libxss1 libnss3 xvfb

# from https://github.com/itsjustcon/docker-node-xvfb/blob/master/Dockerfile
#RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
#    sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list' && \
#    apt-get update -y && \
#    apt-get install -y google-chrome-stable xvfb
#RUN apt-get update \
#    && apt-get install -y libgtkextra-dev libgconf2-dev libnss3 libasound2 libxtst-dev libxss1
COPY . /diagrams/
WORKDIR /diagrams
RUN npm i

CMD ["run"]
