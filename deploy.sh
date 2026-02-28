#!/bin/bash
# Auto-deploy to GitHub Pages

set -e

# Check if git repo exists
if [ ! -d .git ]; then
    echo "⚠️  Not a git repository. Initialize with:"
    echo "   git init"
    echo "   git remote add origin git@github.com:USER/REPO.git"
    exit 1
fi

# Stage all changes
git add .

# Commit with timestamp
TIMESTAMP=$(date +%Y-%m-%d_%H:%M:%S)
git commit -m "Auto-deploy $TIMESTAMP" || echo "No changes to commit"

# Push to main
git push origin main

# Get repo URL
REPO_URL=$(git remote get-url origin | sed 's/git@github.com:/https:\/\/github.com\//' | sed 's/\.git$//')

echo ""
echo "✅ Deployed successfully!"
echo "📍 Repo: $REPO_URL"
echo "🌐 Live at: ${REPO_URL/github.com/USER.github.io} (after GitHub Pages builds)"
echo ""
echo "Enable GitHub Pages at: $REPO_URL/settings/pages"
