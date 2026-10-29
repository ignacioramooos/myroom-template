# Runbook: [Automation Name]

> **Purpose:** [What does this automation or recurring process do?]

---

## ⚡ Quick Trigger
```bash
# Run command
./06_AUTOMATIONS/scripts/[script-name].sh
```

## 📋 Prerequisites & Environment
- Environment variables: `API_KEY` (stored in `.env`, never in git)
- Dependencies: `python3`, `node`, `curl`, etc.

## 🔄 Failure Recovery
- If step X fails: Check logs in `02_AGENTS/logs/`.
- Fallback action: [Manual procedure].
