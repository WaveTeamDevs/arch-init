#!/bin/bash
set -e

echo "Updating system.."
pacman -Syu --noconfirm

echo "Package installing..."
pacman -S --noconfirm \
  docker \
  docker-compose \
  git \
  base-devel \
  fish \
  vim

echo "Docker starting..."
systemctl enable --now docker

echo "Ready!"
