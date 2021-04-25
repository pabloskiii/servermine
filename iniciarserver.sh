#!/bin/bash

#variables(la ram tiene que ser en el formato = (num)M/G)

MINRAM=512M
MAXRAM=1024m
USUARIO=pablo

cd /home/$USUARIO/servidorminecraft/server

chmod +x eula.txt



screen -dmS minecraft java -Xms$MINRAM -Xmx$MAXRAM -jar forge-1.16.5-36.1.6.jar nogui >> /home/$USUARIO/servidorminecraft/logs/log.txt