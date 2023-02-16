#!/usr/bin/env bash
#####################################################
# This is the entry point for configuring the system.
# Source https://mailinabox.email/ https://github.com/mail-in-a-box/mailinabox
# Updated by afiniel for crypto use...
#####################################################

source /etc/functions.sh # load our functions
source /etc/yiimpool.conf

echo '
#!/usr/bin/env bash
source /etc/functions.sh # load our functions
source /etc/yiimpool.conf
cd $HOME/yiimpool/daemon_builder
bash start.sh
cd ~
' | sudo -E tee /usr/bin/daemonbuilder >/dev/null 2>&1
sudo chmod +x /usr/bin/daemonbuilder

cd $HOME/yiimpool/daemon_builder
source start.sh
