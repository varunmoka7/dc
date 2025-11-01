#!/bin/bash

# Git Push to Both Branches Script (MacBook Air)
# Pushes current commit to main AND Macbook-air branch

echo "📤 Pushing to GitHub..."

# Push to main
echo "Pushing to main..."
git push origin main

# Also push to Macbook-air branch
echo "Pushing to Macbook-air branch..."
git push origin main:Macbook-air

echo "✅ Pushed to both main and Macbook-air!"
echo ""
echo "Branches updated:"
echo "  - origin/main"
echo "  - origin/Macbook-air"
