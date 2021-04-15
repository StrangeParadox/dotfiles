starship init fish | source

function ls 
	command ls -l --group-directories-first --color $argv
end

function ll
	command ls -l -A --group-directories-first --color $argv
end
