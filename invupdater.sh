@echo off
CYAN='\033[0;36m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34'
MAGENTA='\033[0;35'
NC='\033[0m'

echo -e "${CYAN}Invidous Updater for docker by GoldDominik893${NC}"
echo -e "${YELLOW}Updating Invidious...${NC}"
docker-compose pull
echo -e "${BLUE}- Steps 1/3 Complete${NC}"
docker-compose up -d
echo -e "${BLUE}- Steps 2/3 Complete${NC}"
docker image prune -f
echo -e "${BLUE}- Steps 3/3 Complete${NC}"
echo -e "${GREEN}Invidious is running on the latest version${NC}"
echo -e "${YELLOW}Restarting Invidious...${NC}"
docker restart invidious-master_invidious-db_1
echo -e "${BLUE}- Invidious DB restarted.${NC}"
docker restart invidious-master_invidious_1
echo -e "${BLUE}- Invidious Main restarted.${NC}"
echo -e "${GREEN}Invidious restarted.${NC}"
echo -e "${MAGENTA}Invidious Update Complete${NC}"
sleep 60
