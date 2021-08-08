cp -vi storage/samsung/termux/.bashrc .
cp -vi storage/samsung/termux/.screenrc .
sed -i -e s/^/#/ ../usr/etc/apt/sources.list.d/game.list
sed -i -e s/^/#/ ../usr/etc/apt/sources.list.d/science.list
