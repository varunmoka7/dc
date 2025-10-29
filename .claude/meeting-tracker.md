# Meeting Tracker - Auto-Update Instructions

## How This Works

Whenever you ask me to:
- **"Book a meeting with [person]"**
- **"Schedule a 1:1 with [person]"**
- **"Add [meeting] to the calendar"**
- **"Review my meetings this week"**
- **"Check my calendar for conflicts"**

I will **automatically:**
1. Update `/docs/work/MEETING-CALENDAR.md`
2. Update relevant person's interaction file (e.g., `ALEX-RUDNICKI-interactions.md`)
3. Extract key details: date, time, duration, topic
4. Flag any timezone conflicts
5. Confirm the update with you

---

## What Gets Tracked

For each meeting, I capture:
- **Date & Time** (both your timezone and the other person's)
- **Duration** (30 min, 60 min, etc.)
- **Participant(s)** (who's involved)
- **Purpose/Topics** (what you're discussing)
- **Status** (pending, scheduled, completed, cancelled)
- **Recording** (Loom link when available)
- **Action Items** (from the meeting)
- **Notes** (key takeaways)

---

## Automatic Actions I'll Take

### When You Book/Request a Meeting:
```
Example: "Can you schedule my 1:1 with Veronika for Wednesday at 3 PM?"

→ I will:
1. Add to MEETING-CALENDAR.md with status "⏳ PENDING"
2. Add to VERONIKA-interactions.md
3. Confirm: "✅ Veronika 1:1 added for Wed Oct 29 at 3 PM Berlin (9 AM ET)"
4. Note any timezone warnings
```

### When You Review/Report on a Meeting:
```
Example: "I just finished my 1:1 with Alex, here's what we discussed..."

→ I will:
1. Update MEETING-CALENDAR.md with "✅ COMPLETED" + date
2. Update ALEX-RUDNICKI-interactions.md with full notes
3. Extract and list action items
4. Ask for Loom recording link
5. Mark all action items in todo list
```

### When You Ask to Check Calendar:
```
Example: "Do I have any conflicts on Friday?"

→ I will:
1. Review MEETING-CALENDAR.md
2. Show all meetings that day with times
3. Flag overlaps or timezone issues
4. Suggest best time for new meetings
```

---

## File Locations

- **Master Calendar:** `/docs/work/MEETING-CALENDAR.md`
- **Person Interaction Files:** `/docs/work/team-interactions/{firstname}/{NAME}-interactions.md`
  - Alex: `alex/ALEX-RUDNICKI-interactions.md`
  - Veronika: `veronika/VERONIKA-interactions.md`
  - Marc: `marc/MARC-MUNIER-interactions.md`
  - Dev Team: `dev-team/DEV-TEAM-interactions.md`

---

## Triggers for Auto-Update

I'll recognize these patterns and automatically update:

| You Say | Action |
|---------|--------|
| "Book/Schedule [X] with [person]" | Add to calendar |
| "Can we meet [time] with [person]" | Add to calendar |
| "[Person] wants to meet [time]" | Add to calendar |
| "Just finished meeting with [person]" | Mark completed + add notes |
| "Here's what we discussed..." | Extract action items |
| "Do I have time for..." | Check calendar |
| "What meetings do I have this week" | Show calendar view |
| "Cancel my meeting with [person]" | Mark cancelled |

---

## Important Notes

- ⚠️ **Always confirm Loom recording links** - I'll ask after each call
- 📌 **Timezone conversions** - I always show both your time and theirs
- ✅ **Action items** - These feed into your todo list
- 🔔 **Reminders** - Tell me if you need a notification before meetings

---

## Example Flow

**You:** "Schedule my daily 1:1 with Alex for tomorrow at 1 PM Berlin time"

**Me:**
```
✅ Calendar Updated!

Meeting Added:
- Date: Tuesday, Oct 28, 2025
- Time: 1:00 PM Berlin (CET) = 7:00 AM Eastern (ET)
- Duration: 30 min
- Participant: Alex Rudnicki (COO)
- Purpose: Daily 1:1 check-in
- Status: ⏳ PENDING
- Recording: Will use Loom

Updated files:
✓ MEETING-CALENDAR.md
✓ ALEX-RUDNICKI-interactions.md
```

---

**System Active:** October 27, 2025
**Last Updated:** When this file was created
