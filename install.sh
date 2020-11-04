#!/usr/bin/env bash

echo ">>> Starting Install Script"
sudo apt-get update -y
sudo apt-get install -y git
sudo apt-get install -y software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update -y
sudo apt-get install -y python3.6
sudo apt-get install -y python3.6-venv