#!/bin/bash

# Git Push to Both Branches Script
# Pushes current commit to main AND Macbook-pro branch

echo "📤 Pushing to GitHub..."

# Push to main
echo "Pushing to main..."
git push origin main

# Also push to Macbook-pro branch
echo "Pushing to Macbook-pro branch..."
git push origin main:Macbook-pro

echo "✅ Pushed to both main and Macbook-pro!"
echo ""
echo "Branches updated:"
echo "  - origin/main"
echo "  - origin/Macbook-pro"
