
---

## 📄 `scripts/setup-github-ssh.sh`

```bash
#!/usr/bin/env bash
set -e

EMAIL=${1:-"your-email@example.com"}
KEY_PATH="$HOME/.ssh/id_ed25519"

echo "🔐 GitHub SSH Bootstrap Starting..."

# Ensure SSH directory
mkdir -p ~/.ssh
chmod 700 ~/.ssh

# Generate SSH key if missing
if [ ! -f "$KEY_PATH" ]; then
  echo "➡️ Generating SSH key..."
  ssh-keygen -t ed25519 -C "$EMAIL" -f "$KEY_PATH" -N ""
else
  echo "✅ SSH key already exists"
fi

# Start ssh-agent
eval "$(ssh-agent -s)"

# Add key
ssh-add "$KEY_PATH"

echo
echo "📌 COPY THIS PUBLIC KEY TO GITHUB:"
echo "--------------------------------"
cat "${KEY_PATH}.pub"
echo "--------------------------------"
echo

echo "👉 GitHub → Settings → SSH and GPG keys → New SSH key"
read -p "Press ENTER after adding the key to GitHub..."

# Test connection
ssh -T git@github.com || true

echo
echo "🎉 GitHub SSH setup complete!"