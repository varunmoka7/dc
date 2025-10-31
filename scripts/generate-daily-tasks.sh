#!/bin/bash

# Daily Task Generation Script for DitchCarbon Project
# Extracts tasks from daily documentation and generates daily task file
# Author: Claude Code
# Created: October 31, 2025

set -euo pipefail

# ============================================================================
# CONFIGURATION
# ============================================================================

PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TASKS_DIR="${PROJECT_ROOT}/docs/work/tasks"
DAILY_UPDATES_DIR="${PROJECT_ROOT}/docs/work/daily-updates"
INTERACTION_TIMELINE_DIR="${PROJECT_ROOT}/docs/work/interaction-timeline"
TEAM_INTERACTIONS_DIR="${PROJECT_ROOT}/docs/work/team-interactions"
CUSTOMERS_DIR="${PROJECT_ROOT}/docs/customers"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# ============================================================================
# HELPER FUNCTIONS
# ============================================================================

log_info() {
    echo -e "${BLUE}ℹ${NC} $1"
}

log_success() {
    echo -e "${GREEN}✓${NC} $1"
}

log_warning() {
    echo -e "${YELLOW}⚠${NC} $1"
}

log_error() {
    echo -e "${RED}✗${NC} $1"
}

# ============================================================================
# DATE HANDLING
# ============================================================================

# Get target date (default: today)
if [ $# -eq 0 ]; then
    TARGET_DATE=$(date +%Y-%m-%d)
else
    TARGET_DATE="$1"
fi

# Validate date format
if ! date -j -f "%Y-%m-%d" "$TARGET_DATE" >/dev/null 2>&1; then
    log_error "Invalid date format. Use YYYY-MM-DD"
    exit 1
fi

# Previous day (for extracting yesterday's tasks)
PREV_DATE=$(date -j -v-1d -f "%Y-%m-%d" "$TARGET_DATE" +%Y-%m-%d)

TASK_FILE="${TASKS_DIR}/${TARGET_DATE}-tasks.md"

log_info "Generating tasks for: ${BLUE}${TARGET_DATE}${NC}"

# ============================================================================
# FILE EXISTENCE CHECK
# ============================================================================

if [ -f "$TASK_FILE" ]; then
    log_warning "Task file already exists: ${TASK_FILE}"
    echo -n "Regenerate? (Manual tasks will be preserved) [y/N]: "
    read -r response
    if [[ ! "$response" =~ ^[Yy]$ ]]; then
        log_info "Exiting without changes"
        exit 0
    fi

    # Extract existing manual tasks
    MANUAL_TASKS_BACKUP=$(mktemp)
    if grep -A 100 "## 📝 Manual Tasks" "$TASK_FILE" | grep -B 100 "^---$" | grep "^- \[" > "$MANUAL_TASKS_BACKUP" 2>/dev/null; then
        log_success "Preserved existing manual tasks"
        HAS_MANUAL_BACKUP=true
    else
        HAS_MANUAL_BACKUP=false
    fi
fi

# ============================================================================
# TASK EXTRACTION
# ============================================================================

TEMP_TASKS=$(mktemp)
TEMP_HIGH_PRIORITY=$(mktemp)
TEMP_DAILY_UPDATE=$(mktemp)
TEMP_INTERACTION_TIMELINE=$(mktemp)
TEMP_TEAM_INTERACTIONS=$(mktemp)
TEMP_CUSTOMER_PROJECTS=$(mktemp)
TEMP_ONGOING=$(mktemp)

log_info "Extracting tasks from source files..."

# --- Extract from previous day's daily update ---
DAILY_UPDATE_FILE="${DAILY_UPDATES_DIR}/${PREV_DATE}-daily-update.md"
if [ -f "$DAILY_UPDATE_FILE" ]; then
    grep "^- \[ \]" "$DAILY_UPDATE_FILE" | sed 's/^- \[ \] /- [ ] /' > "$TEMP_DAILY_UPDATE" 2>/dev/null || true
    DAILY_UPDATE_COUNT=$(wc -l < "$TEMP_DAILY_UPDATE" | tr -d ' ')
    log_success "Extracted ${DAILY_UPDATE_COUNT} tasks from daily update (${PREV_DATE})"
else
    log_warning "No daily update found for ${PREV_DATE}"
    touch "$TEMP_DAILY_UPDATE"
fi

# --- Extract from previous day's interaction timeline ---
INTERACTION_FILE="${INTERACTION_TIMELINE_DIR}/${PREV_DATE}-interactions.md"
if [ -f "$INTERACTION_FILE" ]; then
    grep "^- \[ \]" "$INTERACTION_FILE" | sed 's/^- \[ \] /- [ ] /' > "$TEMP_INTERACTION_TIMELINE" 2>/dev/null || true
    INTERACTION_COUNT=$(wc -l < "$TEMP_INTERACTION_TIMELINE" | tr -d ' ')
    log_success "Extracted ${INTERACTION_COUNT} tasks from interaction timeline (${PREV_DATE})"
else
    log_warning "No interaction timeline found for ${PREV_DATE}"
    touch "$TEMP_INTERACTION_TIMELINE"
fi

# --- Extract from team interaction files ---
if [ -d "$TEAM_INTERACTIONS_DIR" ]; then
    find "$TEAM_INTERACTIONS_DIR" -type f -name "*.md" -exec grep -h "^- \[ \]" {} \; 2>/dev/null | sed 's/^- \[ \] /- [ ] /' | sort -u > "$TEMP_TEAM_INTERACTIONS" || touch "$TEMP_TEAM_INTERACTIONS"
    TEAM_COUNT=$(wc -l < "$TEMP_TEAM_INTERACTIONS" | tr -d ' ')
    log_success "Extracted ${TEAM_COUNT} unique tasks from team interactions"
else
    touch "$TEMP_TEAM_INTERACTIONS"
fi

# --- Extract from customer project files ---
if [ -d "$CUSTOMERS_DIR" ]; then
    find "$CUSTOMERS_DIR" -type f -name "*.md" -exec grep -h "^- \[ \]" {} \; 2>/dev/null | sed 's/^- \[ \] /- [ ] /' | sort -u > "$TEMP_CUSTOMER_PROJECTS" || touch "$TEMP_CUSTOMER_PROJECTS"
    CUSTOMER_COUNT=$(wc -l < "$TEMP_CUSTOMER_PROJECTS" | tr -d ' ')
    log_success "Extracted ${CUSTOMER_COUNT} unique tasks from customer projects"
else
    touch "$TEMP_CUSTOMER_PROJECTS"
fi

# --- Categorize high priority tasks ---
# Look for keywords: urgent, ASAP, due today, priority, critical
cat "$TEMP_DAILY_UPDATE" "$TEMP_INTERACTION_TIMELINE" "$TEMP_TEAM_INTERACTIONS" "$TEMP_CUSTOMER_PROJECTS" | \
    grep -iE "(urgent|asap|due today|high priority|critical|due.*${TARGET_DATE})" | sort -u > "$TEMP_HIGH_PRIORITY" 2>/dev/null || touch "$TEMP_HIGH_PRIORITY"

HIGH_PRIORITY_COUNT=$(wc -l < "$TEMP_HIGH_PRIORITY" | tr -d ' ')
if [ "$HIGH_PRIORITY_COUNT" -gt 0 ]; then
    log_success "Identified ${HIGH_PRIORITY_COUNT} high priority tasks"
fi

# --- Categorize ongoing tasks (no specific date/urgency) ---
cat "$TEMP_DAILY_UPDATE" "$TEMP_INTERACTION_TIMELINE" "$TEMP_TEAM_INTERACTIONS" "$TEMP_CUSTOMER_PROJECTS" | \
    grep -ivE "(urgent|asap|due|priority|critical|${TARGET_DATE}|${PREV_DATE})" | sort -u > "$TEMP_ONGOING" 2>/dev/null || touch "$TEMP_ONGOING"

# Calculate total
TOTAL_TASKS=$(($(wc -l < "$TEMP_DAILY_UPDATE" | tr -d ' ') + $(wc -l < "$TEMP_INTERACTION_TIMELINE" | tr -d ' ') + $(wc -l < "$TEMP_TEAM_INTERACTIONS" | tr -d ' ') + $(wc -l < "$TEMP_CUSTOMER_PROJECTS" | tr -d ' ')))

# ============================================================================
# GENERATE TASK FILE
# ============================================================================

log_info "Generating task file: ${TASK_FILE}"

cat > "$TASK_FILE" << EOF
# Tasks for ${TARGET_DATE}

**Generated:** $(date '+%Y-%m-%d %H:%M:%S')
**Status:** In Progress

---

## 📝 Manual Tasks (Add Throughout the Day)

<!-- Add tasks from Slack, Notion, verbal conversations, or anywhere else -->

EOF

# Insert preserved manual tasks if regenerating
if [ "${HAS_MANUAL_BACKUP:-false}" = true ]; then
    cat "$MANUAL_TASKS_BACKUP" >> "$TASK_FILE"
    rm "$MANUAL_TASKS_BACKUP"
else
    cat >> "$TASK_FILE" << 'EOF'
- [ ]
- [ ]
- [ ]

EOF
fi

cat >> "$TASK_FILE" << EOF

---

## 🤖 Auto-Extracted Tasks

EOF

# High Priority Section
if [ "$HIGH_PRIORITY_COUNT" -gt 0 ]; then
    cat >> "$TASK_FILE" << EOF
### ⚠️ High Priority (Due Today)

EOF
    cat "$TEMP_HIGH_PRIORITY" >> "$TASK_FILE"
    echo "" >> "$TASK_FILE"
fi

# Daily Update Section
if [ "$DAILY_UPDATE_COUNT" -gt 0 ]; then
    cat >> "$TASK_FILE" << EOF
### From Daily Update (${PREV_DATE})

EOF
    cat "$TEMP_DAILY_UPDATE" >> "$TASK_FILE"
    echo "" >> "$TASK_FILE"
fi

# Interaction Timeline Section
if [ "$INTERACTION_COUNT" -gt 0 ]; then
    cat >> "$TASK_FILE" << EOF
### From Interaction Timeline (${PREV_DATE})

EOF
    cat "$TEMP_INTERACTION_TIMELINE" >> "$TASK_FILE"
    echo "" >> "$TASK_FILE"
fi

# Team Interactions Section
if [ "$TEAM_COUNT" -gt 0 ]; then
    cat >> "$TASK_FILE" << EOF
### From Team Interactions

EOF
    cat "$TEMP_TEAM_INTERACTIONS" >> "$TASK_FILE"
    echo "" >> "$TASK_FILE"
fi

# Customer Projects Section
if [ "$CUSTOMER_COUNT" -gt 0 ]; then
    cat >> "$TASK_FILE" << EOF
### From Customer Projects

EOF
    cat "$TEMP_CUSTOMER_PROJECTS" >> "$TASK_FILE"
    echo "" >> "$TASK_FILE"
fi

# Ongoing/Low Priority Section
ONGOING_COUNT=$(wc -l < "$TEMP_ONGOING" | tr -d ' ')
if [ "$ONGOING_COUNT" -gt 0 ]; then
    cat >> "$TASK_FILE" << EOF
### Ongoing/Low Priority

EOF
    cat "$TEMP_ONGOING" >> "$TASK_FILE"
    echo "" >> "$TASK_FILE"
fi

# Footer
cat >> "$TASK_FILE" << EOF

---

## ✅ Completed Today

<!-- Move completed tasks here as you finish them -->


---

## 📊 Daily Summary

- **Total Auto-Extracted Tasks:** ${TOTAL_TASKS}
- **High Priority:** ${HIGH_PRIORITY_COUNT}
- **Completed:** 0
- **Remaining:** ${TOTAL_TASKS}

---

**Notes:**
- Check off tasks as you complete them: \`- [x]\`
- Add manual tasks to the Manual Tasks section
- Move completed tasks to "Completed Today" section
- Incomplete tasks will auto-extract into tomorrow's file
EOF

# ============================================================================
# CLEANUP
# ============================================================================

rm -f "$TEMP_TASKS" "$TEMP_HIGH_PRIORITY" "$TEMP_DAILY_UPDATE" "$TEMP_INTERACTION_TIMELINE" \
      "$TEMP_TEAM_INTERACTIONS" "$TEMP_CUSTOMER_PROJECTS" "$TEMP_ONGOING"

# ============================================================================
# SUCCESS
# ============================================================================

log_success "Task file generated successfully!"
echo ""
log_info "Location: ${GREEN}${TASK_FILE}${NC}"
log_info "Total tasks extracted: ${GREEN}${TOTAL_TASKS}${NC}"
echo ""
log_info "View your tasks:"
echo -e "  ${BLUE}cat ${TASK_FILE}${NC}"
echo ""
log_info "Or edit manually:"
echo -e "  ${BLUE}\$EDITOR ${TASK_FILE}${NC}"
echo ""
