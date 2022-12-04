@echo off
powershell write-host -fore Cyan "Invidious Updater for docker by GoldDominik893"
powershell write-host -fore Yellow "Updating Invidious..."
docker-compose pull
powershell write-host -fore Blue "- Steps 1/3 Complete"
docker-compose up -d
powershell write-host -fore Blue "- Steps 2/3 Complete"
docker image prune -f
powershell write-host -fore Blue "- Steps 3/3 Complete"
powershell write-host -fore Green "Invidious is running on the latest version"
powershell write-host -fore Yellow "Restarting Invidious..."
docker restart invidious-master_invidious-db_1
powershell write-host -fore Blue "- Invidious DB restarted."
docker restart invidious-master_invidious_1
powershell write-host -fore Blue "- Invidious Main restarted."
powershell write-host -fore Green "Invidious restarted."
powershell write-host -fore Magenta "Invidious Update Complete"
pause