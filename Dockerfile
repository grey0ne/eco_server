FROM cm2network/steamcmd

RUN ./steamcmd.sh +quit
RUN ./steamcmd.sh +force_install_dir /home/steam/eco_server +login anonymous +app_update 739590 +quit
