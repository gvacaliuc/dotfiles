# .bashrc
# Author: Gabriel Vacaliuc : (gv8@rice.edu)
# MIT License

# folder to organize my bashrc
export CONFIG_DIR="$HOME/.config/bash"

#   Get initial config stuff
INITIAL_CONFIG=$CONFIG_DIR/bash.d/init_config.bash
if [[ -f $INITIAL_CONFIG ]]
then
    source $INITIAL_CONFIG
fi

# all of the files to be included in bash
config_files=$(find $CONFIG_DIR -iname "*.bash")
path_files=$(find $CONFIG_DIR -path "*/path.bash")
completion_files=$(find $CONFIG_DIR -path "*/completion.bash")

#  Get all *.bash except path / completion files
non_path_comp_files=($(echo ${config_files[@]} ${completion_files[@]} | tr ' ' '\n' | sort | uniq -u ))
non_path_comp_files=($(echo ${non_path_comp_files[@]} ${path_files[@]} | tr ' ' '\n' | sort | uniq -u ))

# load the path files
for file in ${path_files}
do
  source $file
done

# load everything but the path and completion files
for file in ${non_path_comp_files[@]}
do
  source $file
done

## initialize autocomplete here, otherwise functions won't be loaded
#autoload -U compinit
#compinit

# load every completion after autocomplete loads
for file in ${completion_files}
do
  source $file
done

#Local environment variables in ~/.localrc 
if [[ -a ~/.localrc ]]
then
  source ~/.localrc
fi

unset config_files
