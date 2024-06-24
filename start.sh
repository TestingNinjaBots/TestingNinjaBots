if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Eagle-sight/LazyPrincess/tree/v9.0_Language_filter /LazyPrincess
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /LazyPrincess
fi
cd /LazyPrincess
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
