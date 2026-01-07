#!/bin/bash
set -e

BLUE="\e[34m"
GREEN="\e[32m"
NC="\e[0m"

echo -e "${BLUE}Updating system..${NC}"
pacman -Syu --noconfirm

echo -e "${BLUE}Package installing...${NC}"
pacman -S --noconfirm \
  docker \
  docker-compose \
  git \
  base-devel \
  fish \
  vim

echo -e "${BLUE}Docker starting...${NC}"
systemctl enable --now docker

echo -e "${GREEN}Ready!${NC}"
fish
