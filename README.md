Stanza for vxlan interface initialization
=========================================

This script enables that you can create, configure, destroy kernel 
vxlan interfaces through /etc/network/interfaces notation.

Install
-------

	 % git clone git://github.com/upa/vxlan-stanza.git
	 % cd vxlan-stanza
	 % ./install.sh


vxlan-post-down	will be moved to /etc/network/if-post-down.d, and
vxlan-pre-up will be moved to /etc/network/if-pre/up.d .
To uninstall, remove these files.


Notation in /etc/network/interfaces
-----------------------------------

	 auto vxlan0
	 iface vxlan0 inet manual
	 	vxlan-vni       0
	 	vxlan-group     239.0.0.1
	 	vxlan-dev       eth0
	 	post-up         ifconfig vxlan0 up


	 auto vxlan1
	 iface vxlan1 inet static
	 	address         192.168.0.1
	 	netmask         255.255.255.0
	 	vxlan-vni       1
	 	vxlan-group     239.0.0.1
	 	vxlan-dev       eth0


vxlan-dev can be omitted.


Contact
-------
upa@haeena.net
