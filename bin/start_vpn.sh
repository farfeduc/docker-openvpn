#!/bin/bash

# Setup NAT for ethwe
iptables -t nat -A POSTROUTING -o ethwe -j MASQUERADE

cp /usr/local/share/easy-rsa/easyrsa3/openssl-1.0.cnf /etc/openvpn

# Generate configs, can be pretty safely overwritten
ovpn_genconfig -u $OVPN_SERVER_URL

# Initialize PKI stuff, need to guard these as the EasyRSA
# would override the existing config
if [ ! -f "$EASYRSA_PKI/private/ca.key" ]; then
    ovpn_initpki nopass
else
    echo "PKI already initialized, using old configuration"
fi

# Create client certs and config
if [ ! -f "$EASYRSA_PKI/private/KONTENA_VPN_CLIENT.key" ]; then
    easyrsa build-client-full KONTENA_VPN_CLIENT nopass
else
    echo "Client certificate already initialized, using old configuration"
fi

# Start VPN normally
ovpn_run
