# config folder
cfg="/config"
lcl="$HOME/.config"

# mkdir in local config
mkdir -pv $lcl/fish

# files to check
files=()

# append files
files+=($cfg/starship.toml)
files+=($cfg/fish/config.fish)

# loop over the files
for FILE in "${files[@]}"; do
    # check if file exists
    if ! [ -f "$FILE" ]; then
        continue
    fi

    # get the local link name
    NAME=$lcl
    NAME+="${FILE/\/config/}"

    # check if either a file or link exists
    if [ -h "$NAME" ] || [ -f "$NAME" ]; then
        rm -rf $NAME
    fi

    # create a symbol link
    ln -s $FILE $NAME
done