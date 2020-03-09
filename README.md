# Dockerized 6841 BOF Challenges

## Features:

- i686 (32-bit x86) based Ubuntu image as binaries are 32-bit built
- python2.7 for easier binary data piping (symlinked from python2 + python also)
- zsh (which is your default shell, similar to bash but better, just run bash after connecting if you prefer it)
- cowsay and fortune preinstalled for one of the challenges
- all the challenge binaries preloaded into /challenges for you

## How to run:

1) Install Docker (on ubuntu: `sudo apt install docker.io`)
2) `git clone https://github.com/insou22/6841-bof-docker && cd 6841-bof-docker`
3) `./build.sh` (requires sudo priveleges)
4) A (zsh) shell into the container will open automatically after building for you.
5) To reconnect to the container, use `./reconnect.sh`