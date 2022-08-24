# Flatpak running app
flatpak run io.dbeaver.DBeaverCommunity 1>/dev/null 2>/dev/null &
flatpak run com.github.hluk.copyq 1>/dev/null 2>/dev/null &
flatpak run com.slack.Slack 1>/dev/null 2>/dev/null &
flatpak run io.github.shiftey.Desktop 1>/dev/null 2>/dev/null &
flatpak run io.github.Figma_Linux.figma_linux 1>/dev/null 2>/dev/null &


# Running vscode
code 1>/dev/null 2>/dev/null &

# Openning Chrome with specific link
google-chrome 1>/dev/null 2>/dev/null &


