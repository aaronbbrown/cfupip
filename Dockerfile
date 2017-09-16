FROM node:8.5-alpine

RUN apk --no-cache add curl
RUN npm install -g cloudflare-cli
ADD cfupip.sh /usr/local/bin/cfupip.sh

ENTRYPOINT ["/usr/local/bin/cfupip.sh"]
