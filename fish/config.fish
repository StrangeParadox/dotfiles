# functions
function github
    if fish_is_root_user
        eval (ssh-agent -c)
        ssh-add ~/.ssh/gh_id_25519

        echo "loaded github keys!"
    end
end

# aliases
alias ls="exa --long --header --group-directories-first"
alias ll="ls -a"

# init starship
starship init fish | source
