#!/usr/bin/env bash
set -e

# ==========================================
# 🏠 MyRoom Automated Onboarding Wizard
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

# 4. Generate customized USER.md
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

# Ensure PRIVATE directory exists and is ignored
mkdir -p PRIVATE
if [ ! -f "PRIVATE/README.md" ]; then
    echo "# Put sensitive files, contracts, or private notes here. Never committed." > PRIVATE/README.md
fi

# 5. Git & Private Repository Setup (Automatic)
echo ""
echo "--------------------------------------------------"
echo "🔒 Private Repository Setup"
echo "MyRoom stores your personal context. It should live in"
echo "your own PRIVATE GitHub repository, not the template."
echo "--------------------------------------------------"

# If this is still linked to the template upstream, unlink it so user doesn't push to template
if git remote get-url origin 2>/dev/null | grep -q "myroom-template"; then
    echo "⚡ Detached from template origin."
    git remote remove origin 2>/dev/null || true
fi

# Initialize git if needed
if [ ! -d ".git" ]; then
    git init -b main -q
    echo "✅ Initialized fresh local Git repository."
fi

# Stage and make personal initial commit
git add .
git commit -m "feat: initialize personal MyRoom for $OPERATOR_NAME" -q || true

# Check if GitHub CLI is installed for 1-click private repo creation
if command -v gh >/dev/null 2>&1 && gh auth status >/dev/null 2>&1; then
    read -p "👉 Found GitHub CLI (gh)! Create a new PRIVATE repo automatically? (Y/n): " AUTO_GH
    if [[ "$AUTO_GH" =~ ^[Yy]?$ ]]; then
        read -p "👉 Name for your private repository [default: myroom]: " REPO_NAME
        REPO_NAME=${REPO_NAME:-myroom}
        echo "🚀 Creating private repo '$REPO_NAME' on your GitHub and pushing..."
        gh repo create "$REPO_NAME" --private --source=. --remote=origin --push
        echo "🎉 Successfully linked and pushed to your private repo!"
    fi
else
    echo ""
    echo "💡 To link this to your own private GitHub repo:"
    echo "   1. Create an empty PRIVATE repo on https://github.com/new"
    echo "   2. Paste the URL below (or press Enter to skip):"
    read -p "👉 Private Repo URL (https://github.com/YOU/myroom.git): " USER_REMOTE
    if [ -n "$USER_REMOTE" ]; then
        git remote remove origin 2>/dev/null || true
        git remote add origin "$USER_REMOTE"
        echo "🚀 Pushing your room to your private repo..."
        git push -u origin main || echo "⚠️ Could not push automatically. Check your credentials and run: git push -u origin main"
        echo "🎉 Linked to $USER_REMOTE"
    else
        echo "ℹ️ Skipped remote setup. You can add one anytime with: git remote add origin <URL>"
    fi
fi

echo ""
echo "=========================================="
echo "  🎉 MyRoom is configured for $OPERATOR_NAME!"
echo "=========================================="
echo ""
echo "🚀 Open this folder in your AI editor (Cursor, Antigravity, VS Code, or Claude Code)"
echo "and send this prompt to your AI:"
echo ""
echo "--------------------------------------------------"
echo "Read AGENTS.md and USER.md. Orient yourself in MyRoom"
echo "and tell me the first 3 things we are executing today."
echo "--------------------------------------------------"
echo ""
