# How SSH Authentication Works with GitHub

SSH authentication is based on a pair of keys: one private and one public.

The private key stays on your machine and is never shared. The public key is added to your GitHub account. Together, they allow GitHub to recognize your machine.

When you run a Git command like `git push`, GitHub checks whether the request is signed by a trusted private key. If it is, the operation is allowed without asking for a password or token.

This trust is tied to the machine, not to a session. Once set up, it remains in place until the key is removed or replaced.

SSH is secure, widely used, and designed for long-term access. That is why it is the recommended way to work with GitHub from the command line and development tools.