# SECURITY.md — Zero-Leak Architecture

> **Your room is your sanctuary. Keep it secure by default.**

---

## 🚫 Never Store in Git
- API keys, tokens, SSH keys, passwords
- `.env`, `.dev.vars` or secret configs
- IDs, passports, bank records, credit cards
- Sensitive medical or legal paperwork
- Raw personal exports (cookies, browser tokens)

---

## 🛡 How to Handle Private Data
1. **The `PRIVATE/` Vault:** Any directory named `PRIVATE/` is ignored by Git in `.gitignore`. Place sensitive files here locally.
2. **References, Not Dumps:** In versioned notes, write references (e.g., *"Invoice archived in local encrypted vault"*) rather than pasting raw personal numbers.
3. **Pre-flight Check:** Always run `git status` before pushing to ensure no untracked secrets are being staged.
