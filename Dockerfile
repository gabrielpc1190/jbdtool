FROM alpine
RUN apk update
COPY jbdtool /bin/jbdtool
COPY jbdtool-example.txt .
ENV IP=172.16.10.99
ENV MQTT_BROKER=172.16.9.12
ENV CLIENTID=jbdtool
ENV MQTT_TOPIC=jbdtool
ENV MQTT_USER=mqtt-jbd
ENV MQTT_PASS=mqtt-jbd
CMD jbdtool -i 20 -F -t ip:$IP -m $MQTT_BROKER:$CLIENTID:$MQTT_TOPIC:$MQTT_USER:$MQTT_PASS