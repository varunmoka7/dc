# Daily Task Management System

## Overview

This automated task management system extracts tasks from your daily documentation (daily updates, interaction timelines, team interactions, customer projects) and generates a single daily task file for quick reference.

## Quick Start

### Generate Today's Tasks

```bash
# From project root
./scripts/generate-daily-tasks.sh

# Or for a specific date
./scripts/generate-daily-tasks.sh 2025-11-01
```

### View Today's Tasks

```bash
cat docs/work/tasks/$(date +%Y-%m-%d)-tasks.md
```

## File Structure

```
docs/work/tasks/
├── README.md (this file)
├── 2025-10-31-tasks.md
├── 2025-11-01-tasks.md
├── 2025-11-02-tasks.md
└── archive/
    ├── 2025-10/ (previous month's tasks)
    └── 2025-11/ (archived monthly)
```

## Daily Task File Format

Each daily task file contains:

1. **Manual Tasks Section** - Add tasks from Slack, Notion, verbal conversations
2. **Auto-Extracted Tasks** - Tasks pulled from your markdown documentation
   - High Priority (Due Today)
   - From Daily Updates
   - From Interaction Timeline
   - From Team Interactions
   - From Customer Projects
   - Ongoing/Low Priority
3. **Completed Today** - Move finished tasks here
4. **Daily Summary** - Task count metrics

## Daily Workflow

### Morning Routine

1. Generate today's task file:
   ```bash
   ./scripts/generate-daily-tasks.sh
   ```

2. Review the generated tasks:
   ```bash
   cat docs/work/tasks/$(date +%Y-%m-%d)-tasks.md
   ```

3. Add manual tasks (Slack, Notion, etc.) to the **Manual Tasks** section

4. Start working through your tasks

### During the Day

- Check off completed tasks: `- [x]`
- Add new tasks to Manual section as they arise
- Move completed tasks to "Completed Today" section (optional)

### End of Day

- Incomplete tasks automatically roll into tomorrow's extraction
- Continue your normal daily update workflow
- No additional work needed - system handles it

## Task Extraction Sources

The script extracts tasks from:

1. **Previous day's daily update** (`docs/work/daily-updates/YYYY-MM-DD-daily-update.md`)
2. **Previous day's interaction timeline** (`docs/work/interaction-timeline/YYYY-MM-DD-interactions.md`)
3. **Team interaction files** (`docs/work/team-interactions/*/`)
4. **Customer project files** (`docs/customers/*/`)

### Extraction Patterns

Tasks are identified by:
- Checkbox syntax: `- [ ]` or `* [ ]`
- Action item sections: `## My Action Items`, `## Outstanding Action Items`, `## TODO`
- Unchecked items only (completed tasks `- [x]` are skipped)

## Features

- ✅ **Automated extraction** - One command pulls tasks from all sources
- ✅ **Manual additions** - Dedicated section for Slack/Notion/ad-hoc tasks
- ✅ **Smart deduplication** - Same task from multiple sources appears once
- ✅ **Priority categorization** - Due today, urgent tasks highlighted
- ✅ **Preserves manual edits** - Regenerating keeps your manual additions
- ✅ **Git tracked** - Full task history searchable
- ✅ **No workflow disruption** - Works with existing dual-tracking system

## Regenerating Tasks

If you need to regenerate today's task file (e.g., after adding new tasks to daily update):

```bash
./scripts/generate-daily-tasks.sh
```

The script will:
1. Detect existing file
2. Ask if you want to regenerate
3. If yes: Preserve your Manual Tasks section, refresh auto-extracted tasks
4. If no: Exit without changes

## Archive Strategy

- Keep current month's tasks in `/docs/work/tasks/`
- At month-end, move previous month to `/archive/YYYY-MM/`
- Keeps main folder clean, history preserved and searchable

## Integration with Claude Code

When you ask Claude: "What are my tasks for today?"

Claude reads: `/docs/work/tasks/YYYY-MM-DD-tasks.md`

Fast response (no more reading 1600+ lines across multiple files).

## Troubleshooting

### No tasks extracted
- Check that source files exist (daily updates, interaction timeline)
- Verify task format uses checkbox syntax `- [ ]`
- Manual section still available for adding tasks

### Duplicate tasks
- Script deduplicates automatically
- If duplicates appear, they're from different dates/sources (intentional)

### Script permission denied
```bash
chmod +x scripts/generate-daily-tasks.sh
```

## Maintenance

- Archive old task files monthly to keep directory clean
- Review and update extraction patterns if task format changes
- Git commit task files regularly for searchable history

---

**Created:** October 31, 2025
**Last Updated:** October 31, 2025
**System Version:** 1.0
