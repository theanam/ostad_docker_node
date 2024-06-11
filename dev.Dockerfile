FROM node:20-alpine
WORKDIR /opt/app
RUN npm install -g nodemon
COPY ./package.json .
RUN npm install 
HEALTHCHECK --interval=5m --timeout=3s \
  CMD curl -f http://localhost:${PORT}/healthcheck || exit 1
CMD ["npm", "run", "debug"]