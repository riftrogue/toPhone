# toPhone 

A simple Termux tool to quickly copy (or move) files to your phone's shared storage so they appear in gallery, music apps, and file managers.

## Features

- Copies files by default (safe - keeps original in Termux)
- Optional move mode to free up space
- Works with single files, multiple files, or wildcards
- One-command installation and uninstallation
- No dependencies

## Installation

Run this single command in Termux:

    curl -fsSL https://raw.githubusercontent.com/riftrogue/toPhone/main/install.sh | bash

## Usage

Copy files (default):

    toPhone song.mp3 photo.jpg
    toPhone *.m4a
    toPhone Downloads/*

Move files instead:

    toPhone m *.mp3          # fastest way
    toPhone -m file1.mp3
    toPhone --move video.mp4

Files will appear in:

    Internal Storage → termux

(Refresh your gallery or file manager if needed)

## Requirements

Termux app

Run this once for storage permission:

    termux-setup-storage

## Uninstall

    toPhone uninstall

## Update

To get the latest version, just re-run the installation command.


