#!/bin/bash

echo "    __  ___              __                 ____          __   ____ _  __           ";
echo "   /  |/  /____ _ _____ / /_ ___   _____   / __ \ ____   / /_ / __/(_)/ /___   _____";
echo "  / /|_/ // __ \`// ___// __// _ \ / ___/  / / / // __ \ / __// /_ / // // _ \ / ___/";
echo " / /  / // /_/ /(__  )/ /_ /  __// /     / /_/ // /_/ // /_ / __// // //  __/(__  ) ";
echo "/_/  /_/ \__,_//____/ \__/ \___//_/     /_____/ \____/ \__//_/  /_//_/ \___//____/  ";
echo "                                                                                    ";

echo "Old .dotfiles moved to .file.old";

INSTALLDIR=${1:-$HOME}

for i in gocomplete.sh .profile .hushlogin .psqlrc Brewfile .gitignore .gitmodules .bash mongorc .bash_logout .pryrc .bashrc  bin  .tmux.conf .tmux-powerlinerc  .bash_profile  .bash_prompt
 
do
	mv $INSTALLDIR/$i $INSTALLDIR/$i.old 2> /dev/null
	ln -s $PWD/$i $INSTALLDIR/$i;
done;

echo -n "Do you want to use my vim configs? [n/Y]"
read -n 1 use_vim_configs

if [ "$use_vim_configs" == "Y" ]; then
	ln -s $PWD/.vim $INSTALLDIR/.vim
	ln -s $PWD/.vimrc $INSTALLDIR/.vimrc
else
  echo
  echo " \\\  ///   .-.     ";
  echo " ((O)(O)) c(O_O)c   ";
  echo "  | \ || ,'.---.\`,  ";
  echo "  ||\\||/ /|_|_|\ \ ";
  echo "  || \ || \_____/ | ";
  echo "  ||  ||'. \`---' .\` ";
  echo " (_/  \_) \`-...-'   ";
fi
echo

echo "Git && Npm config settings"
echo -n "Name: "
read name
echo -ne "\nEmail: "
read email
echo -n "Website/blog: "
read url

echo
cp $PWD/.gitconfig $INSTALLDIR/.gitconfig
sed -i '' "s/%%GITNAME%%/$name/" $INSTALLDIR/.gitconfig
sed -i '' "s/%%GITEMAIL%%/$email/" $INSTALLDIR/.gitconfig


cp $PWD/.npmrc $INSTALLDIR/.npmrc
sed -i '' "s/%%NPMNAME%%/$name/" $INSTALLDIR/.npmrc
sed -i '' "s/%%NPMEMAIL%%/$email/" $INSTALLDIR/.npmrc
sed -i '' "s/%%NPMURL%%/$url/" $INSTALLDIR/.npmrc

echo "   ______   ____     ____ __  __    ____    _   __   ______";
echo "  / ____/  / __ \   / __ \\ \/ /   /  _/   / | / /  / ____/";
echo " / /      / / / /  / /_/ / \  /    / /    /  |/ /  / / __  ";
echo "/ /___   / /_/ /  / ____/  / /   _/ /    / /|  /  / /_/ /  ";
echo "\____/   \____/  /_/      /_/   /___/   /_/ |_/   \____/   ";
echo "                                                           ";

cp $PWD/.osx $INSTALLDIR/.osx
cp $PWD/inputrc $INSTALLDIR/inputrc
cp $PWD/bash_options $INSTALLDIR/bash_options
cp $PWD/git-completion.bash $INSTALLDIR/git-completion.bash
cp $PWD/Npmfile $INSTALLDIR/Npmfile
cp $PWD/brew_whitelist.json $INSTALLDIR/brew_whitelist.json
cp $PWD/mongorc.js $INSTALLDIR/mongorc.js

if [ ! -d $INSTALLDIR/.node-completion ]; then
    mkdir $INSTALLDIR/.node-completion
fi


echo "    ____                                ______                             _                  ";
echo "   / __ \  ____    ____   ___          / ____/  ____     ____    __  __   (_)   ____    ____ _";
echo "  / / / / / __ \  / __ \ / _ \        / /      / __ \   / __ \  / / / /  / /   / __ \  / __ \`/";
echo " / /_/ / / /_/ / / / / //  __/       / /___   / /_/ /  / /_/ / / /_/ /  / /   / / / / / /_/ / ";
echo "/_____/  \____/ /_/ /_/ \___/        \____/   \____/  / .___/  \__, /  /_/   /_/ /_/  \__, /  ";
echo "                                                     /_/      /____/                 /____/   ";

echo

if hash brew 2>/dev/null; then
  echo "    ____              __          __ __ _                  __  __                         ____                        __";
  echo "   /  _/____   _____ / /_ ____ _ / // /(_)____   ____ _   / / / /____   ____ ___   ___   / __ ) _____ ___  _      __ / /";
  echo "   / / / __ \ / ___// __// __ \`// // // // __ \ / __ \`/  / /_/ // __ \ / __ \`__ \ / _ \ / __  |/ ___// _ \| | /| / // / ";
  echo " _/ / / / / /(__  )/ /_ / /_/ // // // // / / // /_/ /  / __  // /_/ // / / / / //  __// /_/ // /   /  __/| |/ |/ //_/  ";
  echo "/___//_/ /_//____/ \__/ \__,_//_//_//_//_/ /_/ \__, /  /_/ /_/ \____//_/ /_/ /_/ \___//_____//_/    \___/ |__/|__/(_)   ";
  echo "                                              /____/                                                                    ";
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
fi

echo -n "Do you want to use my Home Brew configs? [n/Y]"
read -n 1 use_brew_configs

if [ "$use_brew_configs" == "Y" ]; then
echo

echo "   _____   __                    __     _                           ______                  ____                         ";
echo "  / ___/  / /_  ____ _   _____  / /_   (_)   ____    ____ _        /_  __/  ____           / __ )   _____  ___  _      __";
echo "  \__ \  / __/ / __ \`/  / ___/ / __/  / /   / __ \  / __ \`/         / /    / __ \         / __  |  / ___/ / _ \| | /| / /";
echo " ___/ / / /_  / /_/ /  / /    / /_   / /   / / / / / /_/ /         / /    / /_/ /        / /_/ /  / /    /  __/| |/ |/ / ";
echo "/____/  \__/  \__,_/  /_/     \__/  /_/   /_/ /_/  \__, /         /_/     \____/        /_____/  /_/     \___/ |__/|__/  ";
echo "                                                  /____/                                                                 ";
brew tap Homebrew/brewdler
brew brewdle
else
  echo
  echo " \\\  ///   .-.     ";
  echo " ((O)(O)) c(O_O)c   ";
  echo "  | \ || ,'.---.\`,  ";
  echo "  ||\\||/ /|_|_|\ \ ";
  echo "  || \ || \_____/ | ";
  echo "  ||  ||'. \`---' .\` ";
  echo " (_/  \_) \`-...-'   ";
fi


echo
echo "    ____                   __             __    __    _                  ";
echo "   /  _/   ____    _____  / /_  ____ _   / /   / /   (_)   ____    ____ _";
echo "   / /    / __ \  / ___/ / __/ / __ \`/  / /   / /   / /   / __ \  / __ \`/";
echo " _/ /    / / / / (__  ) / /_  / /_/ /  / /   / /   / /   / / / / / /_/ / ";
echo "/___/   /_/ /_/ /____/  \__/  \__,_/  /_/   /_/   /_/   /_/ /_/  \__, /  ";
echo "                                                                /____/   ";
echo
echo "   ______    ____  ______          _____            __                            __            __              ";
echo "  / ____/   /  _/ /_  __/         / ___/  __  __   / /_    ____ ___   ____   ____/ /  __  __   / /  ___    _____";
echo " / / __     / /    / /            \__ \  / / / /  / __ \  / __ \`__ \ / __ \ / __  /  / / / /  / /  / _ \  / ___/";
echo "/ /_/ /   _/ /    / /            ___/ / / /_/ /  / /_/ / / / / / / // /_/ // /_/ /  / /_/ /  / /  /  __/ (__  ) ";
echo "\____/   /___/   /_/            /____/  \__,_/  /_.___/ /_/ /_/ /_/ \____/ \__,_/   \__,_/  /_/   \___/ /____/  ";
echo "                                                                                                                ";

git submodule init && git submodule update
echo
# copy these folders once the submodules have installed

if [ ! -d $HOME/.nvm ]; then
    cp -rf $PWD/.nvm  $INSTALLDIR/.nvm
fi


if [ ! -d $HOME/iterm ]; then
   cp -rf $PWD/iterm $INSTALLDIR/iterm
fi

if [ ! -d $HOME/SpotifyControl ]; then
   cp -rf $PWD/SpotifyControl $INSTALLDIR/SpotifyControl
fi

if [ ! -d $HOME/repos ]; then
  cp -rf $HOME/repos $INSTALLDIR/repos
fi

if [ ! -d $HOME/tmux ]; then
  cp -rf$HOME/tmux $INSTALLDIR/tmux
fi


if [ ! -d $HOME/.git_template ]; then
  cp -rf $HOME/.git_template $INSTALLDIR/.git_template
fi

if [ ! -d $HOME/repos/tmux-powerline ]; then
  git clone git://github.com/erikw/tmux-powerline.git $HOME/repos/tmux-powerline
fi

echo -n "Do you want to use my Npm Modules ? [n/Y]"
read -n 1 use_npm_configs

if [ "$use_npm_configs" == "Y" ]; then
echo

echo "    _   __                                ____                   __             __    __    _                      __";
echo "   / | / /    ____    ____ ___           /  _/   ____    _____  / /_  ____ _   / /   / /   (_)   ____    ____ _   / /";
echo "  /  |/ /    / __ \  / __ \`__ \          / /    / __ \  / ___/ / __/ / __ \`/  / /   / /   / /   / __ \  / __ \`/  / / ";
echo " / /|  /    / /_/ / / / / / / /        _/ /    / / / / (__  ) / /_  / /_/ /  / /   / /   / /   / / / / / /_/ /  /_/  ";
echo "/_/ |_/    / .___/ /_/ /_/ /_/        /___/   /_/ /_/ /____/  \__/  \__,_/  /_/   /_/   /_/   /_/ /_/  \__, /  (_)   ";
echo "          /_/                                                                                         /____/         ";

for i in $(cat Npmfile);
  do
   sudo chown -R $USER /usr/local
   echo "$i"
  done
echo "Become the master of your globals!!"
sudo chown -R $USER /usr/local
npm install
node npm-script.js

else
  echo
  echo " \\\  ///   .-.     ";
  echo " ((O)(O)) c(O_O)c   ";
  echo "  | \ || ,'.---.\`,  ";
  echo "  ||\\||/ /|_|_|\ \ ";
  echo "  || \ || \_____/ | ";
  echo "  ||  ||'. \`---' .\` ";
  echo " (_/  \_) \`-...-'   ";
fi
