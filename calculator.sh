#!/bin/bash

PS3='Input option(1-4):'
stack="Display Calculate Sort Quit"
select choice in $stack;do
	if [ "$choice" = "Display" ];then
		read -p "Input what you want to display[name/path/shell/cal]" info
		if [ "$info" = "name" ];then
			echo "$USER"
		elif [ "$info" = "path" ];then
			echo "$HOME"
		elif [ "$info" = "shell" ];then
			echo "$SHELL"
		elif [ "$info" = "cal" ];then
			cal 2015
		fi
	elif [ "$choice" = "Calculate" ];then
		echo "Calculate"
	elif [ "$choice" = "Sort" ];then
		echo "Sort"
	elif [ "$choice" = "Quit" ];then
		echo "Quit"
	fi
done
