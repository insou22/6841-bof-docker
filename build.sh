#!/bin/sh
echo "Connecting to the docker daemon requires sudo: "
sudo docker build -t bof6841 .
sudo docker run -d -it --name=bof bof6841
sudo docker exec -it "bof" "/bin/zsh"
