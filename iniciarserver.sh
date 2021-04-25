#!/bin/bash

#variables(la ram tiene que ser en el formato = (num)M/G)

MINRAM=512M
MAXRAM=2G
USUARIO=ubuntu

cd /home/$USUARIO/servidorminecraft/server

screen -dmS minecraft java -Xms$MINRAM -Xmx$MAXRAM -jar forge-1.16.5-36.1.6.jar nogui >> /home/$USUARIO/servidorminecraft/logs/log.txt