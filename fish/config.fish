starship init fish | source

function ls 
	command ls -l --group-directories-first --color $argv
end

function ll
	command ls -l -A --group-directories-first --color $argv
end

function vim
	command nvim $argv
end

function fish_greeting
    fortune -a | cowsay -f tux 
end
