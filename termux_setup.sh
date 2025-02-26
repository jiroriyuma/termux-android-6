# setup storage
termux-setup-storage

# fix issues with repositories
rm $PREFIX/etc/apt/sources.list.d/* &>/dev/null 2>&1
sed -i 's@^\(deb.*stable main\)$@#\1\ndeb https://packages-cf.termux.org/termux-main-21 stable main@' $PREFIX/etc/apt/sources.list
apt update && apt upgrade -y --exclude=apt && apt install openssh nano git aria2 -y # essensial packages

# fix issues again after updating
rm $PREFIX/etc/apt/sources.list.d/* &>/dev/null 2>&1
sed -i 's@^\(deb.*stable main\)$@#\1\ndeb https://packages-cf.termux.org/termux-main-21 stable main@' $PREFIX/etc/apt/sources.list

# setting up bash
bashrc=$HOME/../usr/etc/bash.bashrc

echo 'sshd -p 8022' >> $bashrc # setup shell autorun

# just replacing the old variables 
echo 'clear' >> $bashrc # clear screen
echo 'PROMPT_DIRTRIM=2' >> $bashrc # don't know
echo "PS1='\[\e[1;32m\][\u@\h \w] \\$ \[\e[0m\]'" >> $bashrc # [u0_a115@localhost ~] $

# install working distro since termux android 6 support was discontinued
cd $HOME
curl -LO https://raw.githubusercontent.com/Hax4us/TermuxAlpine/master/TermuxAlpine.sh
bash TermuxAlpine.sh
clear
startalpine
exit