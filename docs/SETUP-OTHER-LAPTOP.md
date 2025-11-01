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

---

## CRITICAL: Instructions for Claude Code Agents

**When you start working on the other laptop, you MUST:**

### 1. First Session Setup
```bash
cd ~/dc
git pull
```

Then read these files IN ORDER:
1. `/Users/varunmoka/dc/CLAUDE.md` - Complete project instructions
2. `docs/PROJECT-SETUP.md` - Project overview and structure
3. `docs/knowledge-base/README.md` - Knowledge base navigation
4. `docs/knowledge-base/SUPERPOWERS-SKILL-STRATEGY.md` - Skill usage strategy

### 2. Understand Your Role
You are the **same agent** across both laptops working as:
- **Role:** Scope 3 Support Executive
- **Company:** DitchCarbon
- **Start Date:** October 27, 2025
- **Focus:** Customer delivery, research, product insights

### 3. Active Projects (as of Nov 1, 2025)
- **Takeda Project 3410** - Organization matching analysis
  - Location: `/docs/customers/takeda/`
  - Key files: TAKEDA-customer-profile.md, TAKEDA-project-3410-org-matching.md
- **Howden** - Sustainability report analysis
  - Location: `/docs/customers/howden/`
  - Key files: Extracted reports in 2023_extracted/ and 2024_extracted/
- **Sprint Planning** - `/docs/work/SPrint/`
- **Daily Updates** - `/docs/work/daily-updates/`

### 4. Mandatory Workflows to Follow

**Before ANY work:**
- Use `byterover-retrieve-knowledge` to get relevant context

**During work:**
- Follow dual tracking system (person-based + date-based interaction files)
- Use Superpowers skills as mandated (brainstorming, verification, etc.)
- Commit and push every 30-60 minutes

**After significant work:**
- Use `byterover-store-knowledge` to store learnings
- Create/update daily update file
- Update interaction tracking files
- Push all changes to GitHub

### 5. File Paths Are Different!
**On MacBook Pro (original laptop):** `/Users/varunmoka/dc/`
**On other laptop:** Likely `/Users/varunmoka/dc/` (but verify!)

The CLAUDE.md file path in instructions should be updated to match the actual path on the new laptop.

### 6. Knowledge Continuity
You have access to:
- **Knowledge Base:** `/docs/knowledge-base/` - Domain expertise
- **ByteRover MCP:** Retrieved knowledge from past work
- **Customer Files:** All customer projects and analysis
- **Team Interactions:** Complete conversation history
- **Daily Updates:** Day-by-day progress tracking

**You maintain full context and expertise across laptops.**

### 7. Before Responding to User
Always check:
- [ ] Did I pull latest changes?
- [ ] Do I understand current active projects?
- [ ] Have I reviewed relevant customer files?
- [ ] Am I following all CLAUDE.md protocols?
- [ ] Will I store knowledge after this work?

---

## Agent Synchronization Checklist

When starting work on the other laptop for the first time:

- [ ] Clone repository: `git clone https://github.com/varunmoka7/dc.git`
- [ ] Set git identity
- [ ] Run `git pull` to ensure latest
- [ ] Read `/Users/varunmoka/dc/CLAUDE.md` completely
- [ ] Read `docs/PROJECT-SETUP.md`
- [ ] Review `/docs/knowledge-base/` structure
- [ ] Check active projects in `/docs/customers/`
- [ ] Understand dual tracking system
- [ ] Understand ByteRover MCP usage
- [ ] Understand Superpowers skills requirements
- [ ] Test sync scripts
- [ ] Verify you can push changes

**Only after completing this checklist are you ready to assist the user with full context and continuity.**
