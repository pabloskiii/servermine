#!/bin/bash

#variables(la ram tiene que ser en el formato = (num)M/G)



MINRAM=512M
MAXRAM=1024M
USUARIO=pablo


#Instalación del server

sudo add-apt-repository ppa:linuxuprising/java
apt update
 
apt upgrade -y

sudo apt install oracle-java10-installer

apt install zip -y


mkdir /home/$USUARIO/servidorminecraft /home/$USUARIO/servidorminecraft/server /home/$USUARIO/servidorminecraft/modsbruto /home/$USUARIO/servidorminecraft/logs
cd /home/$USUARIO/servidorminecraft

rm -rf forge-1.16.5-36.1.6-installer.jar

wget https://maven.minecraftforge.net/net/minecraftforge/forge/1.16.5-36.1.6/forge-1.16.5-36.1.6-installer.jar


cd /home/$USUARIO/servidorminecraft/server
java -jar /home/$USUARIO/servidorminecraft/forge-1.16.5-36.1.6-installer.jar --installServer >> /home/$USUARIO/servidorminecraft/logs/loginstall.txt



#añadimos los mods

unzip /home/$USUARIO/servermine/mods/modsmc.zip -d /home/$USUARIO/servidorminecraft/server/mods


#lanzar el servidor

cd /home/$USUARIO

chmod -R 777 /home/$USUARIO/servidorminecraft

cd /home/$USUARIO/servidorminecraft/server

screen -dmS minecraft java -Xms$MINRAM -Xmx$MAXRAM -jar forge-1.16.5-36.1.6.jar nogui >> /home/$USUARIO/servidorminecraft/logs/log.txt

screen -S minecraft -p 0 -X stuff "stop^M"

sed -i "s/false/true" eula.txt