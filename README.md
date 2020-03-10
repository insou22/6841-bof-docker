# Dockerized 6841 BOF Challenges

## Features:

- i686 (32-bit x86) based Ubuntu image as binaries are 32-bit built
- python2.7 for easier binary data piping (symlinked from python2 + python also)
- zsh (which is your default shell, similar to bash but better, just run bash after connecting if you prefer it)
- cowsay and fortune preinstalled for one of the challenges
- all the challenge binaries preloaded into /challenges for you

## How to run:

1) Install Docker (on ubuntu/debian: `sudo apt install docker.io`)
2) Start up the Docker daemon: `sudo systemctl start docker`
2.5) Optionally, add the Docker daemon to your systemd to start on boot: `sudo systemctl enable docker`
3) `git clone https://github.com/insou22/6841-bof-docker && cd 6841-bof-docker`
4) `./build.sh` (requires sudo priveleges)
5) A (zsh) shell into the container will open automatically after building for you.
6) To reconnect to the container, use `./reconnect.sh`

## Fun facts:

- The standard Ubuntu Docker image doesn't have multiarch 32-bit support for some reason (probably fair amount of overhead for a generic container)
- To destroy all traces of this container / image after, use:
  - `sudo docker ps -a`
  - `sudo docker container stop {container id}`
  - `sudo docker container rm {container id}`
  - `sudo docker image ls -a`
  - `sudo docker image rm {image id}`
- ...
