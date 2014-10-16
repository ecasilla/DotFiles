# Make sure using latest Homebrew
update || true

# Update already-installed formula
upgrade || true

# Add Repository
tap homebrew/versions    || true
tap phinze/homebrew-cask || true
tap homebrew/binary      || true

## Editor
install macvim || true

## Shell
install bash-completion || true

## DevOps
install docker       || true
install boot2docker  || true

## Git
install git         || true
install hub         || true
install gist        || true
install git-extras  || true

## Heroku
install heroku-toolbelt || true

##Utils
install autoconf                    || true
install automake                    || true
install casperjs                    || true
install cscope                      || true
install ctags                       || true
install fontconfig                  || true
install fontforge                   || true
install freetype                    || true
install gdbm                        || true
install gettext                     || true
install grep                        || true
install jpeg                        || true
install libevent                    || true
install libgpg-error                || true
install libksba                     || true
install libmpdclient                || true
install libpng                      || true
install libtiff                     || true
install libtool                     || true
install libyaml                     || true
install mailcheck                   || true
install mongodb                     || true
install node                        || true
install openssl                     || true
install pcre                        || true
install phantomjs                   || true
install pkg-config                  || true
install python                      || true
install rainbarf                    || true
install readline                    || true
install reattach-to-user-namespace  || true
install redis                       || true
install rmtrash                     || true
install sqlite                      || true
install the_silver_searcher         || true
install tmux                        || true
install wget                        || true
install xz                          || true

# Casks
install brew-cask
cask install google-chrome    || true
cask install mou              || true
cask install spotify          || true
cask install dropbox          || true
cask install hipchat          || true
cask install alfred           || true
cask install evernote         || true
cask install dash             || true
cask install robomongo        || true
cask install bettertouchtool  || true
cask install onepassword      || true
cask install daisydisk        || true
cask install caffeine         || true
cask install google-hangouts  || true
cask install iterm2           || true
cask install cheatsheet       || true
cask install bartender        || true

#install fonts
brew tap caskroom/fonts 
cask install font-inconsolata || true
cask install font-inconsolata-dz-for-powerline || true


# Remove outdated versions
cleanup
