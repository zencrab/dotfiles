# Define a function for the transient prompt in Starship
function starship_transient_prompt_func
    starship module character
end

# Initialize Starship for Fish shell
starship init fish | source
# Enable transient prompt (clears previous prompt lines when hitting Enter)
enable_transience
# Set the path to the Starship configuration file and export it
set -x STARSHIP_CONFIG ~/.config/starship/starship.toml
