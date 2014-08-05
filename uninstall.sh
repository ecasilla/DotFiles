#!/bin/bash

echo "   __  __        _               __          __ __ _                  ___                                                                          __";
echo "  / / / /____   (_)____   _____ / /_ ____ _ / // /(_)____   ____ _   /   | _      __ ___   _____ ____   ____ ___   ___   ____   ___   _____ _____ / /";
echo " / / / // __ \ / // __ \ / ___// __// __ \`// // // // __ \ / __ \`/  / /| || | /| / // _ \ / ___// __ \ / __ \`__ \ / _ \ / __ \ / _ \ / ___// ___// / ";
echo "/ /_/ // / / // // / / /(__  )/ /_ / /_/ // // // // / / // /_/ /  / ___ || |/ |/ //  __/(__  )/ /_/ // / / / / //  __// / / //  __/(__  )(__  )/_/  ";
echo "\____//_/ /_//_//_/ /_//____/ \__/ \__,_//_//_//_//_/ /_/ \__, /  /_/  |_||__/|__/ \___//____/ \____//_/ /_/ /_/ \___//_/ /_/ \___//____//____/(_)   ";
echo "                                                         /____/                                                                                      ";

INSTALLDIR=${1:-$HOME}

for i in .hushlogin .spotify .psqlrc Brewfile .gitignore .gitmodules .bash mongorc .bash_logout .pryrc .bashrc  bin  .tmux.conf .tmux-powerlinerc  .bash_profile 
 
do
	rm -rf $INSTALLDIR/$i $INSTALLDIR/$i.old 2> /dev/null
	rm  $PWD/$i $INSTALLDIR/$i;
done;

echo -n "Do you want to delet the vim configs? [n/Y]"
read -n 1 remove_vim_configs

if [ "$remove_vim_configs" == "Y" ]; then
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

echo
rm $PWD/.gitconfig $INSTALLDIR/.gitconfig

echo "    ____         __       __         _              ";
echo "   / __ \ ___   / /___   / /_ ___   (_)____   ____ _";
echo "  / / / // _ \ / // _ \ / __// _ \ / // __ \ / __ \`/";
echo " / /_/ //  __// //  __// /_ /  __// // / / // /_/ / ";
echo "/_____/ \___//_/ \___/ \__/ \___//_//_/ /_/ \__, /  ";
echo "                                           /____/   ";

rm $PWD/.osx $INSTALLDIR/.osx
rm -rf $PWD/.bash-git-prompt $INSTALLDIR/.bash-git-prompt
rm -rf $PWD/iterm $INSTALLDIR/iterm
rm $PWD/inputrc $INSTALLDIR/inputrc
rm $PWD/bash_options $INSTALLDIR/bash_options
rm $PWD/git-completion.bash $INSTALLDIR/git-completion.bash
rm $PWD/Npmfile $INSTALLDIR/Npmfile
rm $PWD/brew_whitelist.json $INSTALLDIR/brew_whitelist.json
rm $PWD/mongorc.js $INSTALLDIR/mongorc.js

if [ ! -d $HOME/repos ]; then
	rm -rf $HOME/repos
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
    brew rm $(join <(brew leaves) <(brew deps "$i")) ; 
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
