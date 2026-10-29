#!/usr/bin/env bash
# Quick Git sync helper for MyRoom

echo "🔄 Checking MyRoom Git status..."
git status -s

if [ -n "$(git status -s)" ]; then
    echo "📦 Staging changes..."
    git add .
    COMMIT_MSG="${1:-chore: update myroom context and logs [$(date +'%Y-%m-%d')]}"
    git commit -m "$COMMIT_MSG"
    echo "🚀 Pushing to remote..."
    git push origin HEAD
    echo "✅ MyRoom is fully synchronized."
else
    echo "✨ Everything is already clean and up to date."
fi
