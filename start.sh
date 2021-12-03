if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Team-MasterXBots/TheFlash.git /TheFlash
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /TheFlash
fi
cd /TheFlash
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
