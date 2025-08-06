#!/usr/bin/env bash

set -euo pipefail

# Set the path to your iTerm2 preferences folder
PREFS_FOLDER="$HOME/nix/system/modules/iterm2/preferences"

# Tell iTerm2 to load preferences from the custom folder
defaults write com.googlecode.iterm2 PrefsCustomFolder         -string "$PREFS_FOLDER"
defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true
defaults write com.googlecode.iterm2 SUEnableAutomaticChecks   -bool false
defaults write com.googlecode.iterm2 PromptOnQuit              -bool false

echo "✅ iTerm2 is now configured to load preferences from:"
echo "   $PREFS_FOLDER"

# Optionally restart iTerm2 to apply changes immediately
if pgrep -x "iTerm2" >/dev/null; then
  echo "Restarting iTerm2 to apply changes..."
  osascript -e 'quit app "iTerm"'
  sleep 1
  open -a iTerm
fi


