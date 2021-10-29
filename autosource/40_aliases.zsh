alias paru='paru --sudoloop'
alias mkdir="mkdir -p"
alias vdirsync="vdirsyncer sync && vdirsyncer metasync"
alias export-apt="comm -23 <(apt-mark showmanual | sort -u) <(gzip -dc /var/log/installer/initial-status.gz | sed -n 's/^Package: //p' | sort -u)"
alias kssh="kitty +kitten ssh"
alias ssh="TERM='xterm-256color' ssh"
alias venva="source ./env/bin/activate"
alias cal="todo && echo "" && khal"
alias td="todo list && todo shell"
alias clear-spacevim-swap="rm ~/.cache/SpaceVim/swap/*"
alias word-count="wl-paste | wc -w"
alias lsbr="br -sdp" 
alias uumnt="fusermount -u ~/mnt"
alias docker-image-update="docker images | grep -v ^REPO | sed 's/ \+/:/g' | cut -d: -f1,2 | xargs -L1 docker pull && docker image prune"
alias wgup="nmcli connection up motoko-wg" 
alias wgdn="nmcli connection down motoko-wg"
alias rofi-emoji="rofi -show emoji -modi emoji"
alias sway-tree="swaymsg -t get_tree | jq -C | less -R"
alias cp="rsync -arh --info=progress2" 
alias fzf-home="fd --type f --hidden --exclude .git . '/home/ethan' | fzf"
alias linx-client="linx-client -e 86400 -selif"
alias rc="ranger-cd"
alias trans.fm="mpv http://listen.juli.moe"
alias pacman-mirrors="sudo reflector -c "Australia" -p http -f 10 --sort rate --save /etc/pacman.d/mirrorlist"
alias full-arch-update="sudo reflector -c "Australia" -p http -f 10 --sort rate --save /etc/pacman.d/mirrorlist && sudo flatpak update && paru -Syu"
