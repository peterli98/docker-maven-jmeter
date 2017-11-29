FROM maven:3.3.9-jdk-8
FROM alpine

# JMeter

RUN apk --update add wget
RUN wget http://mirror.switch.ch/mirror/apache/dist/jmeter/binaries/apache-jmeter-3.3.tgz
RUN tar zxvf apache-jmeter-3.3.tgz
RUN apk del wget
RUN rm -f apache-jmeter-3.3.tgz
RUN rm -fr /apache-jmeter-3.3/docs
