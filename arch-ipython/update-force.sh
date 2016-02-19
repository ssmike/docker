#!/bin/bash
pacman -Syy && \
    pacman -S pacman --noconfirm && \
    pacman-db-upgrade && \
    pacman -S archlinux-keyring --noconfirm && \
    pacman -Su --noconfirm && \
    pacman -Scc --noconfirm
