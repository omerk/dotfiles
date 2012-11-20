#!/bin/bash

# GNOME Terminal colour scheme, based on jellybeans.vim
# http://django-notes.blogspot.co.uk/2012/11/gnome-terminal-jellybeans-theme.html

gconftool --set --type string /apps/gnome-terminal/profiles/Default/foreground_color '#adadad'
gconftool --set --type string /apps/gnome-terminal/profiles/Default/bold_color '#adadad'
gconftool --set --type string /apps/gnome-terminal/profiles/Default/background_color '#151515'
gconftool --set --type string /apps/gnome-terminal/profiles/Default/palette '#3b3b3b:#cf6a4c:#99ad6a:#d8ad4c:#597bc5:#a037b0:#71b9f8:#adadad:#636363:#f79274:#c1d592:#ffd574:#81a3ed:#c85fd8:#99e1ff:#d5d5d5'
