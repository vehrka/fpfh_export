#!/bin/bash

cd ~/Documents/dev/fpfh_export
rm -fr ~/Documents/dev/fpfh_export/cotd_export/*
rm -fr ~/Documents/doc/rpg/obsidian/sessions/rpg_sessions/cotd_export/*
obsidian-export --ignore-file ~/Documents/dev/fpfh_export/.export-ignore --frontmatter=always ~/Documents/doc/rpg/obsidian/sessions/rpg_sessions/Worlds/4.\ Crew\ of\ the\ Darius ~/Documents/doc/rpg/obsidian/sessions/rpg_sessions/cotd_export/
find ~/Documents/doc/rpg/obsidian/sessions/rpg_sessions/cotd_export/ -name "*.md" -exec sed -i -e 's/\\\[/[/' {} \;
find ~/Documents/doc/rpg/obsidian/sessions/rpg_sessions/cotd_export/ -name "*.md" -exec sed -i -e 's/\\\]/]/' {} \;
find ~/Documents/doc/rpg/obsidian/sessions/rpg_sessions/cotd_export/ -name "*.md" -exec sed -i -e 's/ > $//' {} \;
