DATE_DIR_NAME=$(date +%Y-%m-%d)
BACKUP_PATH="/home/greyone/eco_server/backups/${DATE_DIR_NAME}"
mkdir -p "${BACKUP_PATH}"
echo "Copying Storage dir to ${BACKUP_PATH}"
sudo docker cp eco_server:/home/steam/eco_server/Storage ${BACKUP_PATH}
