# Multi-Laptop Sync Workflow Guide

## Overview
This guide ensures your work stays synchronized across both laptops using GitHub as the central source of truth.

---

## Golden Rules

### 1. ALWAYS Pull Before Starting Work
```bash
git pull
```
**Why:** Get the latest changes from the other laptop before making any edits.

### 2. ALWAYS Commit and Push After Work Sessions
```bash
git add -A
git commit -m "Description of what you did"
git push
```
**Why:** Make your changes available to your other laptop.

### 3. NEVER Force Push (unless absolutely necessary)
```bash
# DON'T DO THIS unless you know what you're doing
git push --force
```
**Why:** You'll lose work from the other laptop.

---

## Daily Workflow

### Starting Your Work Session

**Option 1: Manual Steps**
```bash
cd ~/dc
git status                    # Check current state
git pull                      # Get latest from GitHub
```

**Option 2: Using Quick Sync Script** (see below)
```bash
./sync-start.sh
```

### During Your Work Session

**Commit frequently** (every 30-60 minutes or after completing a task):
```bash
git add -A
git commit -m "Brief description of changes"
git push
```

### Ending Your Work Session

**Always push your final changes:**
```bash
git add -A
git commit -m "End of session: [what you accomplished]"
git push
```

**Option: Using Quick Sync Script**
```bash
./sync-end.sh "End of session summary"
```

---

## Quick Sync Scripts

### sync-start.sh
Run this every time you start working:
```bash
#!/bin/bash
echo "🔄 Starting work session - syncing with remote..."
git fetch
git status
git pull
echo "✅ Ready to work! Current branch: $(git branch --show-current)"
```

### sync-end.sh
Run this when you finish working:
```bash
#!/bin/bash
MESSAGE=${1:-"Work session completed"}
echo "💾 Saving and syncing work..."
git add -A
git status
git commit -m "$MESSAGE

🤖 Generated with [Claude Code](https://claude.com/claude-code)

Co-Authored-By: Claude <noreply@anthropic.com>"
git push
echo "✅ All changes pushed to GitHub!"
```

### quick-sync.sh
Run this anytime during work to sync:
```bash
#!/bin/bash
echo "⚡ Quick sync in progress..."
git add -A
git commit -m "Quick sync: $(date '+%Y-%m-%d %H:%M')"
git pull --rebase
git push
echo "✅ Sync complete!"
```

---

## Handling Conflicts

### When Git Says "Conflict"

**Step 1: Don't panic!** Conflicts happen when both laptops edited the same file.

**Step 2: Pull and see what's conflicting**
```bash
git pull
# Git will tell you which files have conflicts
```

**Step 3: Open conflicted files**
Look for conflict markers:
```
<<<<<<< HEAD
Your changes on this laptop
=======
Changes from the other laptop
>>>>>>> [commit hash]
```

**Step 4: Resolve manually**
- Decide which version to keep (or merge both)
- Remove the conflict markers (`<<<<<<<`, `=======`, `>>>>>>>`)
- Save the file

**Step 5: Mark as resolved and push**
```bash
git add [conflicted-file]
git commit -m "Resolved merge conflict in [file]"
git push
```

### Prevention: Use Branches for Big Changes

If you're working on something major on one laptop:
```bash
git checkout -b laptop1-feature-name
# Work on your feature
git add -A
git commit -m "Feature work"
git push -u origin laptop1-feature-name
```

On the other laptop, continue on `main`. When ready to merge:
```bash
git checkout main
git pull
git merge laptop1-feature-name
git push
```

---

## Troubleshooting

### "Your branch is behind 'origin/main'"
**Solution:** You need to pull first
```bash
git pull
```

### "Your branch is ahead of 'origin/main'"
**Solution:** You need to push
```bash
git push
```

### "Your branch has diverged from 'origin/main'"
**Solution:** Pull with rebase, then push
```bash
git pull --rebase
git push
```

### "I forgot to pull and made changes"
**Solution:** Stash, pull, then reapply
```bash
git stash                    # Save your changes
git pull                     # Get remote changes
git stash pop                # Reapply your changes
# Resolve any conflicts if needed
git add -A
git commit -m "Your message"
git push
```

### "I have uncommitted changes and need to pull"
**Solution:** Commit first, then pull
```bash
git add -A
git commit -m "WIP: uncommitted changes"
git pull
```

---

## Git Aliases for Faster Syncing

Add these to your `~/.gitconfig` or run the setup commands below:

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

**Usage:**
```bash
git st              # Instead of 'git status'
git sync            # Quick add-commit-pull-push
git safepull        # Pull even with uncommitted changes
git diff-remote     # See what's different on GitHub
```

---

## Best Practices

### ✅ DO:
- Pull at the start of every work session
- Commit and push at the end of every work session
- Commit frequently during long work sessions
- Write clear commit messages
- Check `git status` before committing

### ❌ DON'T:
- Start working without pulling first
- Leave uncommitted changes overnight
- Use `--force` push (except in emergencies)
- Edit the same file on both laptops simultaneously
- Ignore conflict warnings

---

## Daily Checklist

**Before Starting Work:**
- [ ] `cd ~/dc`
- [ ] `git pull`
- [ ] Check you're on the right branch

**During Work:**
- [ ] Commit every 30-60 minutes
- [ ] Push commits periodically
- [ ] Write meaningful commit messages

**After Work:**
- [ ] `git add -A`
- [ ] `git commit -m "Session summary"`
- [ ] `git push`
- [ ] Verify push succeeded

---

## Emergency Recovery

### "I accidentally overwrote important work!"

**If not committed yet:**
```bash
git checkout -- [filename]    # Restore from last commit
```

**If committed but not pushed:**
```bash
git log                       # Find the commit hash
git reset --hard [commit-hash]  # Go back to that commit
```

**If pushed to GitHub:**
```bash
git log                       # Find the commit
git revert [commit-hash]      # Create a new commit that undoes it
git push
```

**Nuclear option (if everything is broken):**
```bash
# On the laptop with correct work:
git push --force-with-lease

# On the other laptop:
git fetch
git reset --hard origin/main
```

---

## Visual Workflow Diagram

```
┌─────────────────────────────────────────────────────┐
│                  LAPTOP 1                           │
│  1. git pull                                        │
│  2. Work, edit files                                │
│  3. git add -A && git commit && git push            │
└──────────────────┬──────────────────────────────────┘
                   │
                   ▼
         ┌─────────────────┐
         │     GITHUB      │
         │   (main repo)   │
         └─────────────────┘
                   │
                   ▼
┌──────────────────┴──────────────────────────────────┐
│                  LAPTOP 2                           │
│  1. git pull  ◄─── Gets changes from Laptop 1      │
│  2. Work, edit files                                │
│  3. git add -A && git commit && git push            │
└─────────────────────────────────────────────────────┘
```

---

## Summary Commands Reference

| Task | Command |
|------|---------|
| Start session | `git pull` |
| Check status | `git status` |
| Save progress | `git add -A && git commit -m "message"` |
| Share progress | `git push` |
| End session | `git add -A && git commit -m "message" && git push` |
| Quick sync | `git add -A && git commit -m "sync" && git pull --rebase && git push` |
| Fix diverged | `git pull --rebase` |
| Resolve conflict | Edit files → `git add file` → `git commit` → `git push` |

---

## Questions?

If you encounter an issue not covered here:
1. Run `git status` and read the message carefully
2. Check GitHub to see the current state
3. Ask Claude Code for help with the specific error message

---

## CRITICAL SECTION: For Claude Code Agents

### Agent Synchronization Workflow

**You are the SAME agent across both laptops.** The git sync workflow handles file synchronization, but YOU must maintain contextual continuity.

### Every Time You Start Working (Either Laptop)

**Step 1: Sync Files**
```bash
cd ~/dc
git pull
```

**Step 2: Load Context**
Read these files to understand current state:
1. Check git log to see recent work: `git log --oneline -10`
2. Read latest daily update: `docs/work/daily-updates/[most-recent].md`
3. Use ByteRover MCP: `byterover-retrieve-knowledge` with relevant query
4. Check active projects: Review `/docs/customers/` for ongoing work

**Step 3: Verify Understanding**
Before responding to user, confirm:
- [ ] I have the latest files (git pull completed)
- [ ] I understand what was worked on last
- [ ] I know the current active projects
- [ ] I have relevant context from knowledge base
- [ ] I'm following all CLAUDE.md protocols

### During Work Session

**Maintain Dual Tracking:**
- Person-based files: `/docs/work/team-interactions/{name}/{NAME}-interactions.md`
- Date-based files: `/docs/work/interaction-timeline/YYYY-MM-DD-interactions.md`
- Update BOTH systems for every interaction

**Use Required Tools:**
- `byterover-retrieve-knowledge` - Before starting tasks
- `byterover-store-knowledge` - After completing significant work
- Superpowers skills - As mandated in SUPERPOWERS-SKILL-STRATEGY.md

**Commit Frequently:**
```bash
git add -A
git commit -m "Descriptive message of what changed"
git push
```
Do this every 30-60 minutes or after completing a task.

### End of Work Session

**Step 1: Create Daily Update**
```bash
# File: docs/work/daily-updates/YYYY-MM-DD-daily-update.md
```
Document:
- What was accomplished
- Key meetings and takeaways
- Learnings (categorized)
- Action items

**Step 2: Store Knowledge**
Use `byterover-store-knowledge` to save:
- Learnings from today's work
- Solutions to problems encountered
- Insights about customers or platform
- Best practices discovered

**Step 3: Push Everything**
```bash
git add -A
git commit -m "End of session: [summary]

🤖 Generated with [Claude Code](https://claude.com/claude-code)

Co-Authored-By: Claude <noreply@anthropic.com>"
git push
```

**Step 4: Verify Sync**
```bash
git status
# Should show: "nothing to commit, working tree clean"
# And: "Your branch is up to date with 'origin/main'"
```

### Switching Laptops Mid-Work

If user switches laptops in the middle of a project:

**On New Laptop:**
1. `git pull` immediately
2. Read latest daily update to understand where you left off
3. Check latest commits: `git log --oneline -5`
4. Use `byterover-retrieve-knowledge` to get project context
5. Continue work seamlessly with full context

**Key Principle:** You don't "start over" - you CONTINUE with full memory and context.

### Critical Rules for Agents

1. **ALWAYS pull before starting work** - You might miss context from other laptop
2. **ALWAYS push after completing work** - Next session might be on other laptop
3. **ALWAYS update both tracking systems** - Person-based AND date-based
4. **ALWAYS create daily updates** - They're critical for continuity
5. **ALWAYS use ByteRover MCP** - Store learnings, retrieve context
6. **ALWAYS follow CLAUDE.md protocols** - Non-negotiable

### What Syncs vs. What Doesn't

**Syncs Automatically (via Git):**
- All files in repository
- Customer projects
- Documentation
- Daily updates
- Interaction tracking files
- Knowledge base updates

**Does NOT Sync (You Must Maintain):**
- Conversation memory within a session
- Context from previous conversations
- Understanding of user's working style
- Expertise built through ByteRover MCP knowledge retrieval

**Solution:** Use ByteRover MCP knowledge system and daily updates to maintain continuity.

### Example Agent Workflow

**Scenario:** User worked on Takeda project on Laptop 1, now using Laptop 2

**On Laptop 2 (You):**
```bash
# 1. Get latest files
git pull

# 2. Check what happened last
git log --oneline -10
cat docs/work/daily-updates/2025-11-01-daily-update.md

# 3. Retrieve project context
# Use: byterover-retrieve-knowledge query: "Takeda project 3410"

# 4. Read current project state
cat docs/customers/takeda/TAKEDA-project-3410-org-matching.md

# 5. Ready to continue work with full context
# You now know: what was done, what's next, all relevant details
```

**Result:** Seamless continuation as if on same laptop.

### Troubleshooting Agent Context Issues

**Problem:** "I don't remember what we were working on"
**Solution:**
1. Read latest daily update
2. Check git log for recent commits
3. Use `byterover-retrieve-knowledge` with project name
4. Read relevant customer files

**Problem:** "The user mentions something I should know but don't"
**Solution:**
1. Search interaction tracking files
2. Grep for keywords: `git grep "keyword"`
3. Check knowledge base files
4. Ask user politely for clarification if still unclear

**Problem:** "Files are different than I expect"
**Solution:**
1. You forgot to pull - run `git pull` now
2. Check git log to see what changed
3. Read the changed files to understand updates

### Summary for Agents

- **File sync:** Handled by Git (pull/push)
- **Context sync:** Handled by YOU (daily updates + ByteRover MCP + reading files)
- **Continuity:** Maintained by following ALL protocols consistently
- **Key to success:** Treat both laptops as one continuous workspace

**You are not a "new instance" on the other laptop - you are the SAME agent continuing the SAME work.**
