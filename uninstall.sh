#!/bin/bash

echo "   __  __        _               __          __ __ _                  ___                                                                          __";
echo "  / / / /____   (_)____   _____ / /_ ____ _ / // /(_)____   ____ _   /   | _      __ ___   _____ ____   ____ ___   ___   ____   ___   _____ _____ / /";
echo " / / / // __ \ / // __ \ / ___// __// __ \`// // // // __ \ / __ \`/  / /| || | /| / // _ \ / ___// __ \ / __ \`__ \ / _ \ / __ \ / _ \ / ___// ___// / ";
echo "/ /_/ // / / // // / / /(__  )/ /_ / /_/ // // // // / / // /_/ /  / ___ || |/ |/ //  __/(__  )/ /_/ // / / / / //  __// / / //  __/(__  )(__  )/_/  ";
echo "\____//_/ /_//_//_/ /_//____/ \__/ \__,_//_//_//_//_/ /_/ \__, /  /_/  |_||__/|__/ \___//____/ \____//_/ /_/ /_/ \___//_/ /_/ \___//____//____/(_)   ";
echo "                                                         /____/                                                                                      ";


for i in .hushlogin .spotify .psqlrc Brewfile .gitignore .gitmodules .bash mongorc .bash_logout .pryrc .bashrc  bin  .tmux.conf .tmux-powerlinerc  .bash_profile 
 
do
	rm i $HOME/$i;
done;

rm -rf $HOME/.*.old
rm -rf $HOME/*.old

echo -n "Do you want to delete the vim configs? [n/Y]"
read -n 1 remove_vim_configs

if [ "$remove_vim_configs" == "Y" ]; then
	rm -rf $HOME/.vim
	rm -rf $HOME/.vimrc
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

echo
rm  $HOME/.gitconfig

echo "    ____         __       __         _              ";
echo "   / __ \ ___   / /___   / /_ ___   (_)____   ____ _";
echo "  / / / // _ \ / // _ \ / __// _ \ / // __ \ / __ \`/";
echo " / /_/ //  __// //  __// /_ /  __// // / / // /_/ / ";
echo "/_____/ \___//_/ \___/ \__/ \___//_//_/ /_/ \__, /  ";
echo "                                           /____/   ";

rm $HOME/.osx
rm -rf $HOME/.bash-git-prompt
rm -rf  $HOME/iterm
rm $HOME/inputrc
rm $HOME/bash_options
rm $HOME/git-completion.bash
rm $HOME/Npmfile
rm $HOME/brew_whitelist.json
rm $HOME/mongorc.js
rm $HOME/.prev_dir

if [  -d $HOME/repos ]; then
	rm -rf $HOME/repos
fi

if [  -d $HOME/.node-completion ]; then
	rm -rf $HOME/.node-completion
fi

if [  -d $HOME/iterm ]; then
	rm -rf $HOME/iterm
fi

if [  -d $HOME/.nvm ]; then
	rm -rf $HOME/.nvm
fi
echo "   __  __        _               __          __ __           __   ____          __       ";
echo "  / / / /____   (_)____   _____ / /_ ____ _ / // /___   ____/ /  / __ \ ____   / /_ _____";
echo " / / / // __ \ / // __ \ / ___// __// __ \`// // // _ \ / __  /  / / / // __ \ / __// ___/";
echo "/ /_/ // / / // // / / /(__  )/ /_ / /_/ // // //  __// /_/ /  / /_/ // /_/ // /_ (__  ) ";
echo "\____//_/ /_//_//_/ /_//____/ \__/ \__,_//_//_/ \___/ \__,_/  /_____/ \____/ \__//____/  ";
echo "                                                                                         ";

echo


echo -n "Do you want to use remove the Home Brew Packages? [n/Y]"
read -n 1 use_brew_configs

if [ "$use_brew_configs" == "Y" ]; then
echo

echo "   _____  __                __   _                  __            __  __        ____                      ";
echo "  / ___/ / /_ ____ _ _____ / /_ (_)____   ____ _   / /_ ____     / / / /____   / __ ) _____ ___  _      __";
echo "  \__ \ / __// __ \`// ___// __// // __ \ / __ \`/  / __// __ \   / / / // __ \ / __  |/ ___// _ \| | /| / /";
echo " ___/ // /_ / /_/ // /   / /_ / // / / // /_/ /  / /_ / /_/ /  / /_/ // / / // /_/ // /   /  __/| |/ |/ / ";
echo "/____/ \__/ \__,_//_/    \__//_//_/ /_/ \__, /   \__/ \____/   \____//_/ /_//_____//_/    \___/ |__/|__/  ";
echo "                                       /____/                                                             ";

for i in $(cat .brew_uninstall );  
  do
    brew uninstall "$i"; 
 done

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
