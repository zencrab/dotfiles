# Check if the Conda initialisation script exists and source it
if test -f "/opt/miniconda3/etc/fish/conf.d/conda.fish"
    . "/opt/miniconda3/etc/fish/conf.d/conda.fish"
else
    set -x PATH "/opt/miniconda3/bin" $PATH
end

# Disable legacy OpenSSL support in the cryptography library
set -gx CRYPTOGRAPHY_OPENSSL_NO_LEGACY 1
