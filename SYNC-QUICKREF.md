# Sync Quick Reference Card

Keep this handy! Print it or bookmark it.

---

## The Three Essential Commands

```bash
# 1. BEFORE you start working
./sync-start.sh

# 2. DURING work (save progress)
./quick-sync.sh

# 3. AFTER you finish working
./sync-end.sh "What I did today"
```

---

## Manual Sync (if scripts don't work)

```bash
# Start work
git pull

# Save work
git add -A
git commit -m "Description"
git push

# End work
git add -A
git commit -m "Summary"
git push
```

---

## Emergency Commands

### "I forgot to pull!"
```bash
git stash
git pull
git stash pop
```

### "I have conflicts!"
```bash
# 1. Open the file with <<<<<<< markers
# 2. Edit to keep what you want
# 3. Remove the <<<<<<< ======= >>>>>>> lines
# 4. Then:
git add [filename]
git commit -m "Resolved conflict"
git push
```

### "Everything is broken!"
```bash
# See what's wrong
git status

# Ask Claude Code for help!
```

---

## Aliases (after setup)

```bash
dc-start    # Start work session
dc-sync     # Quick sync
dc-end      # End work session
dc          # Go to project
```

---

## Golden Rules

1. ✅ **ALWAYS** pull before starting work
2. ✅ **ALWAYS** push after finishing work
3. ✅ **COMMIT OFTEN** during work (every 30-60 min)
4. ❌ **NEVER** use `git push --force`
5. ❌ **DON'T** leave uncommitted work overnight

---

## Daily Checklist

**Start:**
- [ ] `cd ~/dc`
- [ ] `./sync-start.sh`

**During:**
- [ ] Commit every 30-60 minutes
- [ ] Push periodically

**End:**
- [ ] `./sync-end.sh "Today's summary"`
- [ ] Verify push succeeded

---

## Help Resources

- **Full guide:** `docs/SYNC-WORKFLOW.md`
- **Setup help:** `docs/SETUP-OTHER-LAPTOP.md`
- **Git status:** `git status` (tells you what to do)
- **Ask Claude:** Provide the error message

---

## Most Common Issues & Fixes

| Problem | Solution |
|---------|----------|
| "Your branch is behind" | `git pull` |
| "Your branch is ahead" | `git push` |
| "Your branch has diverged" | `git pull --rebase` then `git push` |
| "Permission denied" | `chmod +x *.sh` |
| "Conflict" | Edit file, remove markers, `git add`, `git commit`, `git push` |
| "Forgot to pull" | `git stash && git pull && git stash pop` |

---

## Current Laptop Status

**Check anytime:**
```bash
git status
```

**See recent commits:**
```bash
git log --oneline -5
```

**See what changed:**
```bash
git diff
```

**See what's on GitHub:**
```bash
git fetch
git diff origin/main
```

---

## Remember

**GitHub is the source of truth.**

Both laptops sync through GitHub. If in doubt:
1. Commit your work
2. Push to GitHub
3. Pull on the other laptop

**You can't lose work if it's pushed to GitHub!**
