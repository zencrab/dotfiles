function starship_transient_prompt_func
    starship module character
end

# set the path to the Starship configuration file and export it
set -x STARSHIP_CONFIG ~/.config/starship/starship.toml

starship init fish | source
enable_transience

