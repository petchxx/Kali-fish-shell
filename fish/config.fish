if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting

function sudo
    command sudo -p "[sudo] password for $USER: " $argv
end

function n
    command nvim $argv
end

function g
    command lazygit $argv
end


function nf
    neofetch
end

# set red_color \#ec0101
set blue_color \#277fff
set cyan_color \#5cb7a6

function fish_prompt
    set_color $cyan_color
    echo -n "┌──("

    set_color --bold $blue_color
    echo -n "$USER@"(prompt_hostname)

    set_color normal
    set_color $cyan_color
    echo -n ")─["

    set_color normal
    set_color --bold
    echo -n (prompt_pwd)

    set_color normal
    set_color $cyan_color
    echo -n "]"
    echo ""

    set_color $cyan_color
    echo -n "└─"

    set_color --bold $blue_color
    echo -n "\$ "

    set_color normal
end

function postexec_test --on-event fish_postexec
    echo
end



# Homebrew
set -x PATH /opt/homebrew/bin $PATH

# Flutter
set -x PATH $PATH /Users/petchx/Development/flutter/bin

# COCOAPOD
set -x GEM_HOME $HOME/.gem
set -x PATH $GEM_HOME/bin $PATH

# SML
set -x PATH /usr/local/smlnj/bin $PATH


if set -q ITERM_SESSION_ID; and test "$TERM_PROGRAM" = "iTerm.app"
    # nf
end

zoxide init fish | source
