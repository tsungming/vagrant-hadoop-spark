#!/bin/bash
source "/vagrant/scripts/common.sh"

function disableFirewall {
	echo "disabling firewall"
	ufw disable
}
function setsshConfig {
	echo "modifing ssh config"
	sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/g' /etc/ssh/sshd_config
	service ssh restart
}
echo "setup centos"

disableFirewall
setsshConfig
