FROM ghcr.io/its-me/arch-linux:latest

RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm base-devel git sudo github-cli jq && \
    pacman -Scc --noconfirm

RUN useradd -m builder && \
    echo 'builder ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/builder
