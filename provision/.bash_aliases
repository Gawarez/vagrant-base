# Docker
alias dpsa='docker ps -a --format "table {{.ID}}\t{{.Image}}\t{{.Names}}\t{{.RunningFor}}\t{{.Status}}\t{{.Ports}}"'
alias dcd='docker compose down'
alias dcu='docker compose up -d'
alias dnls='docker network ls'
alias dlf='docker logs -f'
alias dspaf='docker system prune -af'
alias di='docker images'

# Kubernetes
alias mk='microk8s'
alias k='kubectl'
alias h='helm'
alias kdel="kubectl delete all --all -n "

# Git
alias gs='git status'
alias gpo='git push origin'
alias gp='git pull'
alias gd='git diff'
alias gc='git commit -am'
alias gl='git log'
alias glp='git log --pretty=oneline'
alias gsb='git switch'
alias gb='git branch'

# Tools
alias rn='ranger'
