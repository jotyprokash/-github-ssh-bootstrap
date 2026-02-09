
Git cannot create commits until a user identity is configured.

Run these commands once per machine:

```bash
git config --global user.name "Your Name"
git config --global user.email "your-email@example.com"
```

Verify:

```bash
git config --global --list
```

---

## Step 9: Use Git normally with SSH

Clone repositories using SSH:

```bash
git clone git@github.com:OWNER/REPO.git
```

Make changes and push:

```bash
git status
git add .
git commit -m "Your commit message"
git push
```

---

## Notes

- Safe to run on laptops and servers
- Existing SSH keys are reused
- Designed for reproducibility and onboarding

---