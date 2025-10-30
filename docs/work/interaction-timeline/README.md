# Interaction Timeline - Date-Based Tracking

## Purpose

This directory provides a **chronological view** of all interactions, complementing the person-based tracking in `/docs/work/team-interactions/`.

**Use this when you want to:**
- See everything that happened on a specific date
- Review a week's worth of interactions
- Track action items by date
- Understand daily context and connections

**Use person-based files when you want to:**
- Review full relationship history with one person
- Prepare for upcoming 1:1 meetings
- Understand communication patterns with specific individuals

---

## Structure

Each date file contains:
1. **1:1 Meetings** - Direct conversations with team members
2. **Team Meetings** - Standups, all-hands, group discussions
3. **Customer Calls** - External client interactions
4. **Action Items** - Tasks created that day
5. **Key Learnings** - Insights and takeaways
6. **Cross-References** - Links to detailed notes elsewhere

---

## Cross-Reference System

**Date-Based ↔ Person-Based:**
- Date files: High-level summary + links to detailed person files
- Person files: Full conversation details + date stamps
- Both systems stay synchronized

**Date-Based ↔ Other Logs:**
- Daily updates: Personal reflections and progress tracking
- Standups: Team-wide updates and coordination
- Customer files: Deep customer relationship management

---

## Files

- [2025-10-28-interactions.md](2025-10-28-interactions.md) - Day 1 (Monday)
- [2025-10-29-interactions.md](2025-10-29-interactions.md) - Day 2 (Tuesday)
- [2025-10-30-interactions.md](2025-10-30-interactions.md) - Day 3 (Wednesday)

---

## Maintenance Protocol

**When adding new interactions:**
1. Create/update date-based file in `/docs/work/interaction-timeline/YYYY-MM-DD-interactions.md`
2. Create/update person-based file in `/docs/work/team-interactions/{firstname}/{NAME}-interactions.md`
3. Ensure cross-references link both directions
4. Update daily update file if insights/reflections needed

**Automation rule:**
- When user provides interaction notes, ALWAYS update both systems
- Date file: Summary + cross-reference
- Person file: Full details + date stamp
