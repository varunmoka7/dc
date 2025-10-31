# Daily Task System - Usage Guide

## Quick Start Commands

### View Today's Tasks
```bash
./scripts/today
# or
cat docs/work/tasks/$(date +%Y-%m-%d)-tasks.md
```

### Generate Today's Tasks
```bash
./scripts/today generate
# or
./scripts/generate-daily-tasks.sh
```

### Edit Today's Tasks
```bash
./scripts/today edit
# Opens in your default $EDITOR
```

---

## Daily Workflow

### Morning (Start of Day)

**Step 1: Generate Today's Task File**
```bash
cd ~/dc  # or wherever your project is
./scripts/today generate
```

This will:
- Extract all unchecked tasks from yesterday's daily update
- Extract tasks from yesterday's interaction timeline
- Pull outstanding tasks from team interaction files
- Pull active customer project tasks
- Categorize by priority (High Priority, by source, ongoing)
- Create: `docs/work/tasks/YYYY-MM-DD-tasks.md`

**Step 2: Review Auto-Extracted Tasks**
```bash
./scripts/today
```

**Step 3: Add Manual Tasks**

Open the file and add tasks from:
- Slack messages received overnight/this morning
- Notion task assignments
- Verbal conversations
- Email requests
- Any ad-hoc tasks

Edit the **Manual Tasks** section:
```markdown
## 📝 Manual Tasks (Add Throughout the Day)

- [ ] Follow up with Alex on Slack about supplier matching
- [ ] Review Notion task: Project 3410 QA checklist
- [ ] Respond to Veronika's message about data submission
- [ ] Update Takeda project status in Notion
```

---

### During the Day

**Check Off Completed Tasks**
```bash
# Edit the file
./scripts/today edit

# Change from:
- [ ] Submit invoice to finance@ditchcarbon.com

# To:
- [x] Submit invoice to finance@ditchcarbon.com
```

**Add New Tasks as They Arise**

When you get a Slack message or Notion assignment:
```bash
./scripts/today edit
```

Add to the Manual Tasks section immediately.

**Optional: Move Completed Tasks**

For better visibility, move completed tasks to the "Completed Today" section:
```markdown
## ✅ Completed Today

- [x] Submit invoice to finance@ditchcarbon.com
- [x] Email finance with bank details
- [x] Review Takeda supplier organizations (34 total)
```

---

### End of Day

**Update Your Daily Update File (as usual)**

Continue your normal workflow:
- Write `docs/work/daily-updates/YYYY-MM-DD-daily-update.md`
- Include action items with `- [ ]` checkbox syntax
- These will auto-extract into tomorrow's task file

**No Additional Work Needed**

The system handles everything:
- ✅ Incomplete tasks from today → auto-extract tomorrow
- ✅ Completed tasks (`- [x]`) → skipped from tomorrow's extraction
- ✅ Manual tasks you added → no auto-extraction (one-time tasks)

---

## Advanced Usage

### Generate Tasks for Specific Date
```bash
./scripts/generate-daily-tasks.sh 2025-11-01
```

### Regenerate Today's Tasks (Preserves Manual Section)
```bash
./scripts/today generate
# Prompts: "Regenerate? (Manual tasks will be preserved) [y/N]:"
# Type 'y' to regenerate with fresh auto-extracted tasks
```

**Use case:** You added tasks to your daily update mid-day and want to refresh auto-extracted tasks.

### Search Past Tasks
```bash
# Find when you completed a specific task
grep -r "supplier matching" docs/work/tasks/

# Find all tasks from October
ls docs/work/tasks/2025-10-*.md

# Count tasks completed in October
grep -r "^- \[x\]" docs/work/tasks/2025-10-*.md | wc -l
```

---

## Task File Structure Explained

### Manual Tasks Section
```markdown
## 📝 Manual Tasks (Add Throughout the Day)
```
- **Purpose:** Tasks from sources not in markdown (Slack, Notion, verbal)
- **You control:** Add/edit/remove freely
- **Auto-extraction:** Never (these are one-time, manual entries)

### Auto-Extracted Tasks Section
```markdown
## 🤖 Auto-Extracted Tasks
```
- **Purpose:** Tasks pulled from your documentation
- **Script controls:** Regenerated when you run the script
- **Sources:** Daily updates, interaction timeline, team files, customer files

### High Priority Subsection
```markdown
### ⚠️ High Priority (Due Today)
```
- **Auto-detected keywords:** urgent, ASAP, due today, high priority, critical, due [today's date]
- **Purpose:** Surface time-sensitive tasks

### Completed Today Section
```markdown
## ✅ Completed Today
```
- **Purpose:** Track accomplishments for daily reflection
- **Usage:** Move completed tasks here (optional but recommended)

### Daily Summary
```markdown
## 📊 Daily Summary
- **Total Auto-Extracted Tasks:** 283
- **High Priority:** 5
```
- **Auto-calculated:** Script counts tasks during generation
- **Manual update:** You can update "Completed" count if desired

---

## Tips & Best Practices

### 1. Generate Tasks Every Morning
Make it part of your morning routine:
```bash
# Add to your shell profile (~/.zshrc or ~/.bashrc)
alias tasks='cd ~/dc && ./scripts/today generate && ./scripts/today'
```

Then just run:
```bash
tasks
```

### 2. Keep Manual Tasks Section Updated
- Add tasks immediately when they arrive (Slack, Notion)
- Don't wait until end of day
- Prevents forgetting important ad-hoc tasks

### 3. Use High Priority Keywords in Daily Updates
When writing daily updates, use keywords for auto-prioritization:
```markdown
- [ ] Submit invoice to finance@ditchcarbon.com (DUE TODAY)
- [ ] Review Takeda data (URGENT)
- [ ] Complete QA checklist (HIGH PRIORITY)
```

### 4. Archive Old Task Files Monthly
```bash
# At end of month (e.g., end of October)
mkdir -p docs/work/tasks/archive/2025-10
mv docs/work/tasks/2025-10-*.md docs/work/tasks/archive/2025-10/
```

### 5. Commit Task Files to Git
Track your progress over time:
```bash
git add docs/work/tasks/
git commit -m "Add daily tasks for $(date +%Y-%m-%d)"
```

### 6. Ask Claude for Today's Tasks
When working with Claude Code:
```
You: "What are my tasks for today?"
Claude: [Reads /docs/work/tasks/YYYY-MM-DD-tasks.md]
        "Here are your 15 tasks for today..."
```

Fast lookup instead of reading 1600+ lines across multiple files!

---

## Troubleshooting

### "No task file for today"
```bash
# Generate it
./scripts/today generate
```

### "Permission denied"
```bash
# Make scripts executable
chmod +x scripts/generate-daily-tasks.sh
chmod +x scripts/today
```

### Duplicate Tasks Appearing
- Expected behavior: Same task from multiple sources may appear
- Script deduplicates within each section
- Manually remove if duplicate across sections

### No Tasks Extracted
- Check that source files exist (daily-updates, interaction-timeline)
- Verify tasks use checkbox syntax: `- [ ]`
- Check previous day's files (script extracts from yesterday)

### Manual Tasks Lost After Regeneration
- Should NOT happen - script preserves manual section
- If it happens, check git history:
```bash
git log -p docs/work/tasks/YYYY-MM-DD-tasks.md
```

---

## Integration with Existing Workflow

### No Changes Needed To:
- ✅ Daily updates (`docs/work/daily-updates/`)
- ✅ Interaction timeline (`docs/work/interaction-timeline/`)
- ✅ Team interactions (`docs/work/team-interactions/`)
- ✅ Customer files (`docs/customers/`)
- ✅ Standups (`docs/work/standups/`)

### New Addition:
- ✅ Task files (`docs/work/tasks/`)

### The task system **reads from** your existing documentation but **doesn't modify** it.

---

## When to Use This System

**Use daily task files for:**
- Quick morning overview of today's work
- Tracking task completion during the day
- Adding manual Slack/Notion tasks immediately
- Asking Claude "What are my tasks today?"

**Continue using daily updates for:**
- End-of-day reflection
- What you accomplished
- Key learnings
- Meeting notes
- Detailed context

**Both systems complement each other:**
- Daily updates → Capture everything
- Task files → Focus on actionables

---

**Created:** October 31, 2025
**Last Updated:** October 31, 2025
**Author:** Claude Code (with Varun Moka)
