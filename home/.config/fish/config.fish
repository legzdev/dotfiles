# ensure that all shell utilities are in english instead of the system language
set -x LANG "en_US.UTF-8"
set -x EDITOR "nvim"

if test -f /opt/asdf-vm/asdf.fish
	source /opt/asdf-vm/asdf.fish
end

# aliases
alias cat="bat -pp"
alias cls="clear"
alias ls="lsd"
alias fetch="fastfetch"
alias neofetch="fastfetch"

# pacman
alias pm="sudo pacman -S --needed --disable-download-timeout"
alias pmn="pm --noconfirm"
alias pmr="sudo pacman -Rnsu"
alias pmu="sudo pacman -Syu --disable-download-timeout"
alias pmun="pmu --noconfirm"
alias pms="pacman -Ss"
alias pmi="pacman -Sii"
alias pmq="pacman -Q"
alias pmqe="pacman -Qe"
alias pmqi="pacman -Qi"
alias pmqs="pacman -Qs"


alias pm-search="pacman -Ss"
alias pm-install="sudo pacman -S"
alias pm-list="pacman -Q"
alias pm-list-verbose="pacman -Qs"
alias pm-list-explicit="pacman -Qe"
alias pm-list-manually="pacman -Qm"
alias pm-remove="sudo pacman -Rns"
alias pm-autoremove-list="pacman -Qdtq"
alias pm-autoremove="pm-autoremove-list | sudo pacman -Rns -"
alias pm-clean="sudo pacman -Sc"
alias pm-rmcache="sudo pacman -Scc"

# init fish shell
if status is-interactive
	set -g fish_greeting

	starship init fish | source
end

