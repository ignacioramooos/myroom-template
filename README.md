# 🏠 MyRoom: Your Personal AI Operating System

> **Stop talking to amnesic chatbots. Give your AI a room.**

Web chat interfaces are toys. Every conversation starts from zero. You re-explain who you are, what you are building, and how you like your code formatted 50 times a week. The moment you close the tab, your AI forgets you exist.

**MyRoom fixes this.** It is an open-source, local-first **Personal Operating System** that turns any modern AI assistant (Antigravity, Cursor, Claude Code, Windsurf, Codex) into a ruthless **Executive Chief of Staff** with persistent memory, structured departments, and an ironclad bias to action.

Your life and projects are not a single prompt. They are an operating system.

---

## ⚡ 60-Second Quickstart

### 1. Grab the Room
```bash
git clone https://github.com/ignacioramooos/myroom-template.git myroom
cd myroom
```

### 2. Run the 30-Second Setup
```bash
chmod +x 06_AUTOMATIONS/scripts/init-room.sh
./06_AUTOMATIONS/scripts/init-room.sh
```
*(Or just open `USER.md` and fill in your name and current #1 goal).*

### 3. Open in your AI IDE & Fire
Open this folder in Cursor, Antigravity, VS Code, or run `claude` / `agy` / `codex` in the terminal, and send this prompt:

> *"Read `AGENTS.md` and `USER.md`. Orient yourself in MyRoom and tell me the first 3 things we are executing today."*

Watch what happens when an AI actually has full context of your life.

---

## 🧠 The 3-File Soul Stack

Most AI setups fail because they feed LLMs a 50-page manifesto no model can parse. MyRoom uses three razor-sharp files:

| File | Purpose | What it tells your AI |
| :--- | :--- | :--- |
| **[`USER.md`](USER.md)** | **The Operator** | Who you are, your top 3 priorities, and your non-negotiable rules for how the AI must talk to you. |
| **[`IDENTITY.md`](IDENTITY.md)** | **The Code** | Your values, standards, and the line between great work and unacceptable trash. |
| **[`SOUL.md`](SOUL.md)** | **The Edge** | Your underlying drive, mental recharge triggers, and what gets you out of task paralysis. |

---

## 🏢 The 12 Departments (Your Digital Office)

Every file has an exact place. Zero clutter:

```
myroom/
├── 00_INBOX/           # The dumping ground. Drop raw ideas, notes, screenshots here.
├── 01_DASHBOARD/       # The command deck. Active priorities, current sprints, weekly reviews.
├── 02_AGENTS/          # Agent HQ. Workflows, task expedientes, and execution logs.
├── 03_PROJECTS/        # Active, high-focus projects with defined outcomes.
├── 04_UNIVERSITY/      # Academic coursework, classes, deliverables.
├── 05_STUDY/           # Deep learning, self-study tracks, skill speedruns.
├── 06_AUTOMATIONS/     # Scripts, runbooks, recurring cron workflows.
├── 07_TRAMITES/        # Bureaucracy, legal docs, paperwork, licenses.
├── 08_RESOURCES/       # Knowledge base, prompt modes, reusable templates.
├── 09_ARCHIVE/         # Cold storage. Closed projects and historical logs.
├── 10_SECRETARIAT/     # Executive triage, daily briefs, inbox processing.
├── 11_INFRASTRUCTURE/  # Cloud services, APIs, hardware setups, local configs.
└── 12_PROJECT_NETWORK/ # Registry of all external repos and systems you touch.
```

---

## 🎯 Pick Your Archetype (How to Personalize)

MyRoom adapts to whatever you do:

### 🛠 The Founder / Developer
- Set `03_PROJECTS/` for your active apps and startups.
- Use `02_AGENTS/workflows/git-coordination.md` to have AI agents work in parallel branches without colliding.
- Fire up **Founder Thinking Mode** (`08_RESOURCES/knowledge/agent-capability-prompts.md`) to stress-test your business decisions and pricing models.

### 🎓 The Student / Academic
- Map your courses into `04_UNIVERSITY/`.
- Use the **Feynman Explainer Mode** in `agent-capability-prompts.md` to force the AI to grill you on complex concepts until you master them.
- Track exam sprints and summaries in `05_STUDY/`.

### 💼 The Executive / Freelancer
- Use `10_SECRETARIAT/` to generate daily morning briefings and triage incoming chaos.
- Keep client deliverables isolated in `03_PROJECTS/`.
- Let your AI maintain task records so you never forget where a client project was left.

### 🏡 Everyday Personal Life (Uncle, Family, General)
- Delete or ignore the folders you don't need (`04_UNIVERSITY`, `11_INFRASTRUCTURE`).
- Use `00_INBOX/` to dump notes, recipes, travel ideas, and home repairs.
- Tell the AI: *"Organize my inbox and tell me what needs attention this weekend."*

---

## 🔒 Ironclad Privacy & Security

- **Zero Cloud Leakage:** MyRoom is 100% local Markdown. You own your data.
- **The `PRIVATE/` Safe:** Any folder named `PRIVATE/` is git-ignored by default. Store sensitive PDFs, contracts, and private keys there. It will never touch a remote repository.
- Read [`SECURITY.md`](SECURITY.md) for the rules.

---

## 🚀 The Golden Rule of MyRoom

> **Every interaction must leave the Room cleaner and smarter than before.**

When you teach your AI a preference or make an important decision, tell it: *"Remember this in MyRoom."* It will log the pattern in `08_RESOURCES/knowledge/user-operating-profile.md` so you never have to repeat yourself again.
