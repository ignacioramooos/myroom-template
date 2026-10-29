---
name: myroom-commander
description: Master skill for navigating, operating, and maintaining a MyRoom Personal AI Operating System repository.
---

# MyRoom Commander Skill

Use this skill whenever navigating, executing tasks, or modifying a MyRoom repository.

## Core Rules

1. **Orientation First:**
   - Always read `USER.md` to identify the Operator's rules and preferences.
   - Read `01_DASHBOARD/current.md` to see active priorities.

2. **Folder Governance:**
   - Never write loose output files into the root folder.
   - `00_INBOX/` for unorganized notes and quick captures.
   - `01_DASHBOARD/` for high-level priorities and operating rhythms.
   - `02_AGENTS/` for workflows, task expedientes, and execution logs.
   - `03_PROJECTS/` for active project specs and deliverables.
   - `06_AUTOMATIONS/` for scripts, tools, and runbooks.
   - `08_RESOURCES/` for knowledge, templates, and agent capability prompts.
   - `10_SECRETARIAT/` for daily briefs and communication drafts.

3. **Continuous Improvement:**
   - If the user specifies a new habit, preferred style, or technical constraint, automatically record it into `08_RESOURCES/knowledge/user-operating-profile.md`.
