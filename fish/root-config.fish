if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting

function sudo
    command sudo -p "[sudo] password for $USER: " $argv
end

set red_color \#ec0101
set blue_color \#277fff

function fish_prompt
    set_color $blue_color
    echo -n "┌──("

    set_color --bold $red_color
    echo -n "$USER@"(prompt_hostname)

    set_color normal
    set_color $blue_color
    echo -n ")─["
    
    set_color normal
    set_color --bold
    echo -n (prompt_pwd)

    set_color normal
    set_color $blue_color
    echo -n "]"
    echo
    
    set_color $blue_color
    echo -n "└─"

    set_color --bold $red_color
    echo -n "# "

    set_color normal
end

function postexec_test --on-event fish_postexec
    echo 
end
