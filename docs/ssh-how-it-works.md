
---

## 📄 `docs/ssh-how-it-works.md`

```md
# How SSH Authentication Works with GitHub

SSH uses a public/private key pair.

- Private key stays on your machine
- Public key is uploaded to GitHub

When you run `git push`, GitHub verifies your identity
using the SSH key — no password required.

This trust is:
- machine-based
- secure
- permanent