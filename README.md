# docker-ts3
[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2Fkldzj%2Fdocker-ts3.svg?type=shield)](https://app.fossa.io/projects/git%2Bgithub.com%2Fkldzj%2Fdocker-ts3?ref=badge_shield)


Minimal docker image for running a TeamSpeak 3 server

## Usage

1. Pull image: `docker pull kldzj/ts3`
1. Run container: `docker run -d -p 9987:9987/udp -p 10011:10011 -p 30033:30033 --name=ts3-test kldzj/ts3`
1. Check logs: `docker logs -f ts3-test`

---

By using this image you agree to the TeamSpeak [Terms of Service](https://www.teamspeak.com/en/privacy-and-terms/).
