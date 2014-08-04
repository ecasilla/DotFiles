#!/bin/bash

echo " /$$      /$$                       /$$                               /$$$$$$$              /$$      /$$$$$$  /$$ /$$                    ";
echo "| $$$    /$$$                      | $$                              | $$__  $$            | $$     /$$__  $$|__/| $$                    ";
echo "| $$$$  /$$$$  /$$$$$$   /$$$$$$$ /$$$$$$    /$$$$$$   /$$$$$$       | $$  \ $$  /$$$$$$  /$$$$$$  | $$  \__/ /$$| $$  /$$$$$$   /$$$$$$$";
echo "| $$ $$/$$ $$ |____  $$ /$$_____/|_  $$_/   /$$__  $$ /$$__  $$      | $$  | $$ /$$__  $$|_  $$_/  | $$$$    | $$| $$ /$$__  $$ /$$_____/";
echo "| $$  $$$| $$  /$$$$$$$|  $$$$$$   | $$    | $$$$$$$$| $$  \__/      | $$  | $$| $$  \ $$  | $$    | $$_/    | $$| $$| $$$$$$$$|  $$$$$$ ";
echo "| $$\  $ | $$ /$$__  $$ \____  $$  | $$ /$$| $$_____/| $$            | $$  | $$| $$  | $$  | $$ /$$| $$      | $$| $$| $$_____/ \____  $$";
echo "| $$ \/  | $$|  $$$$$$$ /$$$$$$$/  |  $$$$/|  $$$$$$$| $$            | $$$$$$$/|  $$$$$$/  |  $$$$/| $$      | $$| $$|  $$$$$$$ /$$$$$$$/";
echo "|__/     |__/ \_______/|_______/    \___/   \_______/|__/            |_______/  \______/    \___/  |__/      |__/|__/ \_______/|_______/ ";
echo "                                                                                                                                         ";
echo "                                                                                                                                         ";
echo "                                                                                                                                         ";

echo "Old .dotfiles moved to .file.old";

INSTALLDIR=${1:-$HOME}

for i in Brewfile .gitignore .gitmodules .bash mongorc .bash_logout .pryrc .bashrc  bin  .tmux.conf .tmux-powerlinerc  .bash_profile 
 
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
  echo " \\\  ///   .-.     ";
  echo " ((O)(O)) c(O_O)c   ";
  echo "  | \ || ,'.---.\`,  ";
  echo "  ||\\||/ /|_|_|\ \ ";
  echo "  || \ || \_____/ | ";
  echo "  ||  ||'. \`---' .\` ";
  echo " (_/  \_) \`-...-'   ";"'"
fi
echo

echo "Git config settings"
echo -n "Name: "
read git_name
echo -ne "\nEmail: "
read git_email

cp $PWD/.gitconfig $INSTALLDIR/.gitconfig
sed -i "s/%%GITNAME%%/$git_name/" $INSTALLDIR/.gitconfig
sed -i "s/%%GITEMAIL%%/$git_email/" $INSTALLDIR/.gitconfig

echo "  /$$$$$$   /$$$$$$  /$$$$$$$  /$$     /$$ /$$$$$$ /$$   /$$  /$$$$$$ ";
echo " /$$__  $$ /$$__  $$| $$__  $$|  $$   /$$/|_  $$_/| $$$ | $$ /$$__  $$";
echo "| $$  \__/| $$  \ $$| $$  \ $$ \  $$ /$$/   | $$  | $$$$| $$| $$  \__/";
echo "| $$      | $$  | $$| $$$$$$$/  \  $$$$/    | $$  | $$ $$ $$| $$ /$$$$";
echo "| $$      | $$  | $$| $$____/    \  $$/     | $$  | $$  $$$$| $$|_  $$";
echo "| $$    $$| $$  | $$| $$          | $$      | $$  | $$\  $$$| $$  \ $$";
echo "|  $$$$$$/|  $$$$$$/| $$          | $$     /$$$$$$| $$ \  $$|  $$$$$$/";
echo " \______/  \______/ |__/          |__/    |______/|__/  \__/ \______/ ";
echo "                                                                      ";
echo "                                                                      ";
echo "                                                                      ";

cp $PWD/.osx $INSTALLDIR/.osx
cp -rf $PWD/.bash-git-prompt $INSTALLDIR/.bash-git-prompt
cp -rf $PWD/iterm $INSTALLDIR/iterm
cp $PWD/inputrc $INSTALLDIR/inputrc
cp $PWD/bash_options $INSTALLDIR/bash_options
cp $PWD/git-completion.bash $INSTALLDIR/git-completion.bash
cp $PWD/Npmfile $INSTALLDIR/Npmfile
cp $PWD/brew_whitelist.json $INSTALLDIR/brew_whitelist.json
cp $PWD/mongorc.js $INSTALLDIR/mongorc.js

if [ ! -d $HOME/repos ]; then
	mkdir $HOME/repos
fi

if [ ! -d $HOME/repos/tmux-powerline ]; then
	git clone git://github.com/erikw/tmux-powerline.git $HOME/repos/tmux-powerline
fi

echo "  /$$$$$$  /$$$$$$ /$$            /$$$$$$            /$$                                     /$$           /$$                    ";
echo " /$$__  $$|_  $$_/| $$           /$$__  $$          | $$                                    | $$          | $$                    ";
echo "| $$  \__/  | $$ /$$$$$$        | $$  \__/ /$$   /$$| $$$$$$$  /$$$$$$/$$$$   /$$$$$$   /$$$$$$$ /$$   /$$| $$  /$$$$$$   /$$$$$$$";
echo "| $$ /$$$$  | $$|_  $$_/        |  $$$$$$ | $$  | $$| $$__  $$| $$_  $$_  $$ /$$__  $$ /$$__  $$| $$  | $$| $$ /$$__  $$ /$$_____/";
echo "| $$|_  $$  | $$  | $$           \____  $$| $$  | $$| $$  \ $$| $$ \ $$ \ $$| $$  \ $$| $$  | $$| $$  | $$| $$| $$$$$$$$|  $$$$$$ ";
echo "| $$  \ $$  | $$  | $$ /$$       /$$  \ $$| $$  | $$| $$  | $$| $$ | $$ | $$| $$  | $$| $$  | $$| $$  | $$| $$| $$_____/ \____  $$";
echo "|  $$$$$$/ /$$$$$$|  $$$$/      |  $$$$$$/|  $$$$$$/| $$$$$$$/| $$ | $$ | $$|  $$$$$$/|  $$$$$$$|  $$$$$$/| $$|  $$$$$$$ /$$$$$$$/";
echo " \______/ |______/ \___/         \______/  \______/ |_______/ |__/ |__/ |__/ \______/  \_______/ \______/ |__/ \_______/|_______/ ";
echo "                                                                                                                                  ";
echo "                                                                                                                                  ";
echo "                                                                                                                                  ";

git submodule init && git submodule update
echo


echo -n "Do you want to use my HomeBrew configs? [n/Y]"
read -n 1 use_brew_configs

if [ "$use_brew_configs" == "Y" ]; then
echo

echo "  /$$$$$$   /$$                           /$$     /$$                           /$$$$$$$$              /$$$$$$$                                   ";
echo " /$$__  $$ | $$                          | $$    |__/                          |__  $$__/             | $$__  $$                                  ";
echo "| $$  \__//$$$$$$    /$$$$$$   /$$$$$$  /$$$$$$   /$$ /$$$$$$$   /$$$$$$          | $$  /$$$$$$       | $$  \ $$  /$$$$$$   /$$$$$$  /$$  /$$  /$$";
echo "|  $$$$$$|_  $$_/   |____  $$ /$$__  $$|_  $$_/  | $$| $$__  $$ /$$__  $$         | $$ /$$__  $$      | $$$$$$$  /$$__  $$ /$$__  $$| $$ | $$ | $$";
echo " \____  $$ | $$      /$$$$$$$| $$  \__/  | $$    | $$| $$  \ $$| $$  \ $$         | $$| $$  \ $$      | $$__  $$| $$  \__/| $$$$$$$$| $$ | $$ | $$";
echo " /$$  \ $$ | $$ /$$ /$$__  $$| $$        | $$ /$$| $$| $$  | $$| $$  | $$         | $$| $$  | $$      | $$  \ $$| $$      | $$_____/| $$ | $$ | $$";
echo "|  $$$$$$/ |  $$$$/|  $$$$$$$| $$        |  $$$$/| $$| $$  | $$|  $$$$$$$         | $$|  $$$$$$/      | $$$$$$$/| $$      |  $$$$$$$|  $$$$$/$$$$/";
echo " \______/   \___/   \_______/|__/         \___/  |__/|__/  |__/ \____  $$         |__/ \______/       |_______/ |__/       \_______/ \_____/\___/ ";
echo "                                                                /$$  \ $$                                                                         ";
echo "                                                               |  $$$$$$/                                                                         ";
echo "                                                                \______/                                                                          ";

brew bundle
else

  echo " \\\  ///   .-.     ";
  echo " ((O)(O)) c(O_O)c   ";
  echo "  | \ || ,'.---.\`,  ";
  echo "  ||\\||/ /|_|_|\ \ ";
  echo "  || \ || \_____/ | ";
  echo "  ||  ||'. \`---' .\` ";
  echo " (_/  \_) \`-...-'   ";"'"
fi
