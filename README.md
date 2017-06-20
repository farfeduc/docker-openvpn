# OpenVPN Container for Weave Net

OpenVPN server in a Docker container complete with an EasyRSA PKI CA (fork from Kylemanna/docker-openvpn) with modifications to function properly on a Weave Net.

#### Upstream Links

* Docker Registry @ [farfeduc/openvpn](https://hub.docker.com/r/farfeduc/openvpn/)
* GitHub @ [farfeduc/openvpn](https://github.com/farfeduc/openvpn)

## Quick Start

Please Refer to the documentation in the `docs` folder or use the same steps from [Kylemanna original repository](https://github.com/kylemanna/docker-openvpn) adapted to this image

## Further details

This image is intended to be run on a Weave Net Mesh network : [Weave Net](https://www.weave.works/oss/net/)

The goal of the modifications made to this older version of the kylemanna openvpn is to be able to connect to containers and resolve containers names on the Weave Network this container will be attached.

Once connected to the VPN you should be able to resolve the *.weave.local DNS names of your containers, even if they do not have any mapping of ports. Only exposed ports are necessary.

## Where this repo is heading

I do not have much time to maintain this repo but I would like to migrate this image to Alpine Linux to reduce it's size.
I would also like to add the features of the kylemanna repository that are not present for the moment like : Systemd service, Docker-compose file, more documentation, ipv6 support, debug mode, OTP and Google Authenticator.
I would also like to change the EasyRSA I am currently using to a more recent one. It is one of the more pressing issues.

## Contributing

Feel free to contribute by making Pull Requests to this repo. I will gladly accept them as fast as I can. 
You can also share your suggestions or bugs in the issues.
