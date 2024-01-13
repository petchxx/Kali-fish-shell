if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting

set blue_color \#277fff
set cyan_color \#5cb7a6

function sudo
    command sudo -p "[sudo] password for $USER: " $argv
end

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
    echo

    set_color $cyan_color
    echo -n "└─"

    set_color --bold $blue_color
    echo -n "\$ "

    set_color normal
end

function postexec_test --on-event fish_postexec
    echo 
end

