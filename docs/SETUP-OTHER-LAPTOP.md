# Setup Guide for Second Laptop

Follow these steps to set up your second laptop with full sync capabilities.

---

## Step 1: Clone the Repository

Open Terminal and run:

```bash
cd ~
git clone https://github.com/varunmoka7/dc.git
cd dc
```

---

## Step 2: Install Git Aliases (Optional but Recommended)

These make syncing faster:

```bash
# Quick status check
git config --global alias.st 'status'

# Quick sync (add, commit, pull, push)
git config --global alias.sync '!git add -A && git commit -m "Quick sync" && git pull --rebase && git push'

# Safe pull (stash if needed, pull, pop stash)
git config --global alias.safepull '!git stash && git pull && git stash pop'

# Show what's different from remote
git config --global alias.diff-remote 'diff origin/main'
```

---

## Step 3: Set Your Git Identity (Important!)

```bash
git config --global user.name "Varun Moka"
git config --global user.email "your-email@example.com"
```

---

## Step 4: Test the Sync Scripts

The repository includes three helper scripts:

**Test sync-start.sh:**
```bash
./sync-start.sh
```
This should show "Already up to date" since you just cloned.

**Test quick-sync.sh:**
```bash
echo "test" > test-file.txt
./quick-sync.sh
```
This will commit and push a test file.

**Clean up the test:**
```bash
rm test-file.txt
git add -A
git commit -m "Remove test file"
git push
```

---

## Step 5: Create Desktop Shortcuts (Optional)

### macOS

Create aliases in your `~/.zshrc` or `~/.bash_profile`:

```bash
# Add to ~/.zshrc (or ~/.bash_profile if using bash)
alias dc-start='cd ~/dc && ./sync-start.sh'
alias dc-end='cd ~/dc && ./sync-end.sh'
alias dc-sync='cd ~/dc && ./quick-sync.sh'
alias dc='cd ~/dc'
```

Reload your shell:
```bash
source ~/.zshrc  # or source ~/.bash_profile
```

Now you can use:
- `dc-start` - Start work session
- `dc-end` - End work session
- `dc-sync` - Quick sync
- `dc` - Jump to project directory

### Windows (if using Git Bash)

Add to `~/.bashrc`:
```bash
alias dc-start='cd ~/dc && ./sync-start.sh'
alias dc-end='cd ~/dc && ./sync-end.sh'
alias dc-sync='cd ~/dc && ./quick-sync.sh'
alias dc='cd ~/dc'
```

---

## Step 6: Read the Sync Workflow Guide

```bash
cat docs/SYNC-WORKFLOW.md
```

Or open it in your favorite text editor to understand the complete workflow.

---

## Daily Usage Pattern

### On EITHER Laptop:

**Morning (or start of work):**
```bash
cd ~/dc
./sync-start.sh
```

**During work:**
Work normally, commit periodically:
```bash
git add -A
git commit -m "Description of changes"
git push
```

Or use quick-sync:
```bash
./quick-sync.sh
```

**End of day:**
```bash
./sync-end.sh "Today's summary: [what you did]"
```

---

## Verify Setup

Run these commands to verify everything is working:

```bash
# Check you're in the right place
pwd
# Should show: /Users/yourname/dc (or ~/dc)

# Check git is configured
git config user.name
git config user.email

# Check you can pull
git pull
# Should say "Already up to date"

# Check scripts are executable
ls -la *.sh
# Should show -rwxr-xr-x for sync scripts

# Check current status
git status
# Should show "nothing to commit, working tree clean"
```

---

## Troubleshooting

### "Permission denied" when running scripts
```bash
chmod +x sync-start.sh sync-end.sh quick-sync.sh
```

### "Not a git repository"
Make sure you're in the `dc` directory:
```bash
cd ~/dc
```

### Can't push to GitHub
Make sure you've authenticated with GitHub. You might need to:
1. Set up SSH keys, or
2. Use a Personal Access Token

**Check remote URL:**
```bash
git remote -v
```

Should show your GitHub repository URL.

---

## You're Ready!

Both laptops are now set up to stay in sync. Remember:

1. **Start every session:** `./sync-start.sh`
2. **Work normally:** Commit and push regularly
3. **End every session:** `./sync-end.sh "Summary"`

Read `docs/SYNC-WORKFLOW.md` for detailed workflows and conflict resolution strategies.
