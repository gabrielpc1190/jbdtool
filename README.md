# jbdtool

#Dockerfile has this information:
´´´
FROM alpine
RUN apk update
COPY jbdtool /bin/jbdtool
COPY jbdtool-example.txt .
ENV IP=
ENV MQTT_BROKER=
ENV CLIENTID=
ENV MQTT_TOPIC=
ENV MQTT_USER=
ENV MQTT_PASS=
CMD jbdtool -i 20 -F -t ip:$IP -m $MQTT_BROKER:$CLIENTID:$MQTT_TOPIC:$MQTT_USER:$MQTT_PASS
´´´

#Set your ENV as:
IP = The IP of your RS485 to TCP Converter
MQTT_BROKER = Your MQTT Broker IP address
CLIENTID = Your ClientID for MQTT
MQTT_USER = User to authenticate to MQTT Broker
MQTT_PASS = Password to authenticate to MQTT Broker

All help and suggestions are well received!
gabrielpc1190 at gmail
