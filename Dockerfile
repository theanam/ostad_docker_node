FROM node:20-alpine
WORKDIR /opt/app
COPY ./package.json .
RUN npm install 
COPY ./src/ src/
HEALTHCHECK --interval=5m --timeout=3s \
  CMD curl -f http://localhost:${PORT}/healthcheck || exit 1
CMD ["npm", "run", "start"]