# recommended packages
apk add git nano bash
bashrc=/etc/bash/bashrc
echo "exec bash" >> $HOME/.profile
echo "PS1='\[\e[1;32m\][\u@\h \w] \\$ \[\e[0m\]'" >> $bashrc

## i will make a setup with a password soon
# setup vscode ssh server (no password setup). to connect "ssh -p 8023 root@<ip-address>"
apk add gcompat libstdc++ openssh openssh-server
ssh-keygen -A
passwd -d root

echo "/usr/sbin/sshd -p 8023" >> $bashrc # setup autorun for ssh

ssh_config_file="/etc/ssh/sshd_config"
rm $ssh_config_file # just delete it
echo "PermitEmptyPasswords yes" >> $ssh_config_file
echo "PasswordAuthentication yes" >> $ssh_config_file
echo "PermitRootLogin yes" >> $ssh_config_file
echo "AllowTcpForwarding yes" >> $ssh_config_file
echo "GatewayPorts yes" >> $ssh_config_file
echo "PermitTunnel yes" >> $ssh_config_file


# install programming languages support

# C/C++
apk add gcc g++ make musl-dev

# python3
apk add python3 py3-pip

# nodejs
apk add nodejs npm

# java
apk add openjdk17
export JAVA_HOME="/usr/lib/jvm/java-17-openjdk"
echo "JAVA_HOME=$JAVA_HOME" >> $BASHRC
echo "PATH=$JAVA_HOME/bin:$PATH" >> $BASHRC