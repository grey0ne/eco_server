FROM cm2network/steamcmd:root

RUN apt update && apt install libicu72 vim libgdiplus -y
USER steam
RUN ./steamcmd.sh +force_install_dir /home/steam/eco_server +login anonymous +app_update 739590 +quit
COPY ./Configs/Network.eco /home/steam/eco_server/Configs/Network.eco


WORKDIR /home/steam/eco_server
