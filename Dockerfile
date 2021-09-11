# FROM node:12.16.3
# WORKDIR /usr/src/app
# COPY . /usr/src/app
# RUN npm install
# EXPOSE 3001 3030
# # ENTRYPOINT ["npm", "run", "yelp"]
# ENTRYPOINT ["npm", "run", "bitcoin"]
FROM confluentinc/cp-kafka:5.2.1

ADD prom-jmx-agent-config.yml /usr/app/prom-jmx-agent-config.yml
ADD https://repo1.maven.org/maven2/io/prometheus/jmx/jmx_prometheus_javaagent/0.16.1/jmx_prometheus_javaagent-0.16.1.jar /usr/app/jmx_prometheus_javaagent.jar