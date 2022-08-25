

## Reference https://hackernoon.com/how-to-automate-your-linux-desktop?source=rss
## Usw 1>/dev/null 2>/dev/null & for clear terminal output

# Flatpak running ap
flatpak run io.dbeaver.DBeaverCommunity 1>/dev/null 2>/dev/null &
flatpak run com.github.hluk.copyq 1>/dev/null 2>/dev/null &
flatpak run com.slack.Slack 1>/dev/null 2>/dev/null &
flatpak run io.github.shiftey.Desktop 1>/dev/null 2>/dev/null &
flatpak run io.github.Figma_Linux.figma_linux 1>/dev/null 2>/dev/null &


## Running vscode
# Open Todolist CMS Workspace
code /home/thienlam/Code/todo-list-cms/ 1>/dev/null 2>/dev/null &
# Open TodoList NextJS Workspace
code /home/thienlam/Code/todo-list-website/ 1>/dev/null 2>/dev/null &


## Openning Chrome with specific link
# Variable of link need open
TODO_LIST_JIRA="https://abcsoftwarecompany.atlassian.net/jira/projects"
CONFLUENCE_JIRA="https://abcsoftwarecompany.atlassian.net/wiki/home?atlOrigin=eyJpIjoiYmQ4NGVkOTQ2MmEzNDFlN2JlYTcxMGFjMWY3Y2I1MjYiLCJwIjoiaiJ9"

#Try some music lofi when coding
YT_MUSIC="https://www.youtube.com/watch?v=f02mOEt11OQ&t=681s"



google-chrome $TODO_LIST_JIRA $CONFLUENCE_JIRA $YT_MUSIC 1>/dev/null 2>/dev/null &


## xdotool Automation on keyboard (I note it to try in the future)
# Open terminal
xdotool key ctrl+shift+t 1>/dev/null 2>/dev/null &

# Start docker container Postgres
docker container start todolist-db

# Run shutter
shutter
