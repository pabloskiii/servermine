#!bin/bash

#variables(la ram tiene que ser en el formato = (num)M/G)



MINRAM=512M
MAXRAM=2G


#Instalación del server



apt update
 
apt upgrade -y

apt install default-jdk

apt install default-jre


mkdir home/$USER/servidorminecraft home/$USER/servidorminecraft/server home/$USER/servidorminecraft/modsbruto home/$USER/servidorminecraft/logs
cd home/$USER/servidorminecraft

wget https://maven.minecraftforge.net/net/minecraftforge/forge/1.16.5-36.1.6/forge-1.16.5-36.1.6-installer.jar


cd home/$USER/servidorminecraft/server
java -jar home/$USER/servidorminecraft/forge-1.16.5-36.1.6-installer.jar --installServer






#lanzar el servidor

java -Xms$MINRAM -Xmx$MAXRAM -jar forge-1.16.5-36.1.6-universal.jar nogui >> home/$USER/servidorminecraft/logs