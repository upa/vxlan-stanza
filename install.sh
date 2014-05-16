#!/bin/sh

cp ./vxlan-pre-up	/etc/network/if-pre-up.d/
cp ./vxlan-post-down	/etc/network/if-post-down.d/
cp ./veth-pre-up	/etc/network/if-pre-up.d/
cp ./veth-post-down	/etc/network/if-post-down.d/
