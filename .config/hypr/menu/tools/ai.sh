#!/usr/bin/env bash

set -euo pipefail

logo(){
	figlet "Ai Tools"
	echo
}
clear
logo

select=$(echo -e "Claude\nChatGPT\nGrok\nGemini\nBack\nQuit"| gum choose --header="Learn From: ")

launch() {
	setsid brave --app="$1" >"$HOME/.cache/brave-launch.log" 2>&1 &
	sleep 0.28
}

case "$select" in
	Claude)
		launch https://claude.ai/
		;;
	ChatGPT)
		launch https://chatgpt.com
		;;
	Grok)
		launch https://grok.com/
		;;
	Gemini)
		launch https://gemini.google.com/
		;;
	Back)
		sh ~/.config/hypr/menu/tools.sh
		;;
	Quit)
		exit 0
		;;
esac
