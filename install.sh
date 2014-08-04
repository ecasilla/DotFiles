#!/bin/bash
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

echo "Initializing submodules..."
git submodule init && git submodule update
