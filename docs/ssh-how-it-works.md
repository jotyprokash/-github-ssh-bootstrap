# How SSH Authentication Works

SSH authentication links a machine to a GitHub account using a pair of keys.

A private key is stored on the local machine and never shared. A matching public key is added to the GitHub account. This allows GitHub to recognize requests coming from that machine.

When a Git command such as `git push` is run, GitHub verifies the request using the private key. If the key is trusted, the operation is allowed without passwords or access tokens.

This trust is associated with the machine itself, not with a login session. Once configured, it remains in place until the key is removed or replaced.

SSH is designed for long-term, secure access and is the standard way to work with GitHub from the command line and development tools.