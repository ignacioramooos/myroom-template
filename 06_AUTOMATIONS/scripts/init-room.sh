#!/usr/bin/env bash
set -e

# ==========================================
# 🏠 MyRoom 60-Second Onboarding Wizard
# ==========================================

echo ""
echo "=========================================="
echo "  🏠 Welcome to MyRoom Setup Wizard"
echo "  Your Personal AI Operating System"
echo "=========================================="
echo ""

# 1. Ask Operator Name
read -p "👉 What is your name or preferred nickname? " OPERATOR_NAME
if [ -z "$OPERATOR_NAME" ]; then
    OPERATOR_NAME="Operator"
fi

# 2. Ask Primary Focus
read -p "👉 What is your #1 focus or project right now? " MAIN_FOCUS
if [ -z "$MAIN_FOCUS" ]; then
    MAIN_FOCUS="Setting up MyRoom and executing my top priorities."
fi

# 3. Detect or Ask OS
DETECTED_OS=$(uname -s)
read -p "👉 Operating System ($DETECTED_OS)? [Enter to confirm]: " USER_OS
if [ -z "$USER_OS" ]; then
    USER_OS="$DETECTED_OS"
fi

# 4. Generate USER.md
cat <<EOF > USER.md
# USER.md — The Operator

> **This is who I am and how I expect you to work with me. Read this before taking any action.**

---

## ⚡ The Basics
- **Name:** $OPERATOR_NAME
- **Current Mission / #1 Focus:** $MAIN_FOCUS
- **Primary Setup:** $USER_OS — Terminal / AI Assistant

---

## 🛑 How You Must Talk & Work With Me
1. **Zero Fluff:** Cut the corporate pleasantries ("I hope this helps", "Certainly!"). Give me high-signal answers and action items.
2. **Bias to Action:** Don't present 10 abstract alternatives. Give me the single best recommendation, explain why in 2 sentences, and execute or write the draft.
3. **Be Relentlessly Honest:** If my approach is flawed, inefficient, or overly complicated, call it out directly. Do not flatter me.
4. **Persistent Memory:** When I teach you a preference, workflow, or decision, log it in \`08_RESOURCES/knowledge/user-operating-profile.md\`. Never ask me twice.

---

## 🎯 Current Top 3 Priorities
- [ ] **P0:** $MAIN_FOCUS
- [ ] **P1:** Configure my first active project in \`03_PROJECTS/\`
- [ ] **P2:** Set up my daily routine in \`01_DASHBOARD/\`
EOF

# 5. Initialize git if not present
if [ ! -d ".git" ]; then
    git init -q
    echo "✅ Initialized clean Git repository."
fi

# Ensure PRIVATE directory exists and is ignored
mkdir -p PRIVATE
echo "# Put sensitive files, contracts, or private notes here. Never committed." > PRIVATE/README.md

echo ""
echo "=========================================="
echo "  🎉 MyRoom is configured for $OPERATOR_NAME!"
echo "=========================================="
echo ""
echo "🚀 NEXT STEP: Open this folder in your AI editor (Cursor, Antigravity, VS Code, or Claude Code)"
echo "and send this prompt to your AI:"
echo ""
echo "--------------------------------------------------"
echo "Read AGENTS.md and USER.md. Orient yourself in MyRoom"
echo "and tell me the first 3 things we are executing today."
echo "--------------------------------------------------"
echo ""
