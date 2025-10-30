# DitchCarbon Project Instructions for Claude Code

## Core Project Settings

**Project:** ditch-carbon (Scope 3 emissions intelligence platform)
**Role:** Scope 3 Support Executive (Varun Moka)
**Start Date:** October 27, 2025
**Primary Focus:** Customer delivery, research, and product insights
**BMad Framework:** Installed and active (`.bmad-core/` directory)

---

## BMAD FRAMEWORK - METHODOLOGY

**Status:** ✅ Installed and active in `.bmad-core/` directory

### When to Use BMad Workflows
- **Planning integrations:** Use BMad PRD templates before starting implementation
- **Complex feature development:** Use BMad epic/story creation workflows
- **Research projects:** Use BMad brainstorming and deep-research tasks
- **Documentation:** Use BMad doc creation and sharding tasks

### Key BMad Resources
- **Master Agent:** `.bmad-core/agents/bmad-master.md` - Universal task executor
- **Core Config:** `.bmad-core/core-config.yaml` - Project configuration
- **Templates:** PRD, Architecture, Story, Competitor Analysis, Market Research
- **Tasks:** create-doc, create-next-story, facilitate-brainstorming-session, etc.
- **Workflows:** Greenfield/Brownfield UI, Service, and Fullstack patterns

### Integration Pattern
For integration planning (per global CLAUDE.md): Use BMad PRD template workflow before implementation planning

---

## SUPERPOWERS SKILLS - MANDATORY USAGE

**Approach:** Comprehensive skill integration for excellence

### Skills to Use CONTINUOUSLY (Every Week)

1. **Verification Before Completion** ⭐
   - Use BEFORE submitting any deliverable
   - Customer reports, presentations, analyses, research
   - Evidence before assertions - always
   - Verify calculations, facts, recommendations

2. **Brainstorming** ⭐
   - Use BEFORE major decisions or complex problems
   - Customer strategy, product feedback, research topics
   - Explore 2-3 alternatives before committing
   - Document thinking in learning log

3. **Learning Log** (Built into Knowledge Base)
   - Update EVERY FRIDAY with weekly insights
   - Capture "aha moments" during work week
   - Monthly and quarterly reflections
   - Keep `/docs/knowledge-base/06-LEARNING-LOG.md` current

### Skills to Use REGULARLY (2-4x per month)

4. **Writing Plans** - Before starting major customer projects or research
5. **Test-Driven Development** - For analytical models and tools
6. **Systematic Debugging** - For complex customer issues
7. **Requesting Code Review** - For high-stakes deliverables

### Skills to Use AS NEEDED

8. **Receiving Code Review** - When feedback arrives
9. **Root Cause Tracing** - For significant errors
10. **Subagent-Driven Development** - For complex/large initiatives
11. **Using Git Worktrees** - For knowledge base improvements
12. **Testing Anti-Patterns** - When testing analytical work

**See:** `/docs/knowledge-base/SUPERPOWERS-SKILL-STRATEGY.md` for full details

---

## BYTEROVER MCP - KNOWLEDGE MANAGEMENT

You are given two tools from Byterover MCP server for knowledge persistence.

### 1. `byterover-store-knowledge` - MANDATORY AFTER SIGNIFICANT WORK
You `MUST` always use this tool when:

+ Learning new patterns, APIs, or architectural decisions
+ Encountering error solutions or debugging techniques
+ Finding reusable patterns or utility functions
+ Completing any significant task or plan implementation
+ Discovering best practices or optimization opportunities

**Examples:**
- After completing a customer project: Store what worked, lessons learned
- After debugging an issue: Store root cause and solution
- After discovering a best practice: Store approach with context

### 2. `byterover-retrieve-knowledge` - MANDATORY AT TASK START
You `MUST` always use this tool when:

+ Starting any new task or implementation to gather relevant context
+ Before making decisions to understand existing patterns
+ When debugging issues to check for previous solutions
+ Working with unfamiliar parts of the codebase
+ Beginning customer work to understand similar past projects

**Examples:**
- Before starting new customer project: Retrieve similar project context
- Before making architecture decision: Check existing patterns
- When debugging: Check if solution was previously discovered

---

## Team Interaction Tracking Protocol

### 1:1 Interactions (Individual Tracking)
**AUTOMATIC RULE:** When user provides 1:1 email conversations or direct interactions with DitchCarbon team members:

1. **Create/Update tracking file** at `/docs/work/team-interactions/{firstname}/{FIRSTNAME}-{LASTNAME}-interactions.md`
2. **Document everything:**
   - Role, contact info, timezone
   - Email/call date and full content
   - Key information extracted
   - Questions/action items raised
   - Outstanding items checklist
   - Insights about communication style
   - Date timestamp

3. **Maintain chronologically** - each new interaction adds to the conversation thread
4. **Use for significant relationships** - managers, frequent collaborators, key stakeholders
5. **Update immediately** when new 1:1 content is provided

**Individual Tracking Folder:**
```
/docs/work/team-interactions/
├── alex/ → ALEX-RUDNICKI-interactions.md (COO, frequent 1:1s)
├── veronika/ → VERONIKA-{LASTNAME}-interactions.md (when 1:1 interactions occur)
├── marc/ → MARC-MUNIER-interactions.md (when 1:1 interactions occur)
└── [other-key-contacts]/ → {NAME}-interactions.md (as needed)
```

### Team Meetings (Centralized Tracking)
**AUTOMATIC RULE:** When user provides team standup meetings or group calls:

1. **Create dated file** at `/docs/work/standups/YYYY-MM-DD-standup.md`
2. **Document:**
   - All attendees
   - Each person's updates (work completed, in progress, blockers)
   - Team action items
   - Key themes and insights
   - Cross-team coordination notes

3. **Do NOT create individual files** for standup participants unless they have separate 1:1 interactions
4. **Use standups to learn** about team members' roles, expertise, and work focus

**Standup Tracking Folder:**
```
/docs/work/standups/
├── 2025-10-29-standup.md
├── 2025-10-30-standup.md (if it occurs)
└── [future-standups]/ → YYYY-MM-DD-standup.md
```

**Philosophy:** Track 1:1 relationships deeply, track team meetings centrally, create individual files only when needed.

---

## DUAL TRACKING SYSTEM - DATE-BASED + PERSON-BASED

**CRITICAL RULE:** ALL interactions must be tracked in BOTH systems simultaneously.

### System Overview

**Person-Based Tracking** (`/docs/work/team-interactions/{name}/`)
- **Purpose:** Full relationship history with each individual
- **Content:** Complete conversation details, all interactions chronologically
- **Use when:** Preparing for 1:1s, understanding communication patterns, reviewing relationship history

**Date-Based Tracking** (`/docs/work/interaction-timeline/YYYY-MM-DD-interactions.md`)
- **Purpose:** Chronological view of all daily activities
- **Content:** High-level summaries with cross-references to detailed notes
- **Use when:** Reviewing what happened on specific dates, weekly reflections, tracking action items by day

### Automatic Update Protocol

**When user provides ANY interaction notes (1:1, meeting, customer call):**

1. **Update person-based file** (`/docs/work/team-interactions/{name}/{NAME}-interactions.md`)
   - Full detailed notes
   - Date stamp clearly visible
   - Action items
   - Key learnings

2. **Update date-based file** (`/docs/work/interaction-timeline/YYYY-MM-DD-interactions.md`)
   - Summary of interaction
   - Key outcomes
   - Cross-reference link to detailed notes
   - Categorize: 1:1 meeting, team meeting, or customer call

3. **Ensure bidirectional links**
   - Date file → Person file
   - Person file includes date stamp
   - Both systems stay synchronized

### Date-Based File Structure

Each date file contains:
- **1:1 Meetings** - Direct conversations with team members
- **Team Meetings** - Standups, all-hands, group discussions
- **Customer Calls** - External client interactions
- **Action Items** - Tasks created that day
- **Key Learnings** - Insights and takeaways
- **Cross-References** - Links to detailed notes

### Example Workflow

**User provides:** "Here are notes from my 1:1 with Alex today"

**You must:**
1. ✅ Add full notes to `/docs/work/team-interactions/alex/ALEX-RUDNICKI-interactions.md`
2. ✅ Add summary + link to `/docs/work/interaction-timeline/2025-10-30-interactions.md`
3. ✅ Verify cross-references work both directions
4. ✅ Confirm date accuracy

**Do NOT:**
- ❌ Only update one system
- ❌ Forget cross-references
- ❌ Mislabel dates
- ❌ Wait to update later

### Archive Folder
**Location:** `/docs/work/archive/`

**Purpose:** Historical onboarding materials and outdated reference documents

**Contents:**
- FIRST-DAY-PREP.md - First day preparation guide (Oct 27)
- MEETING-CALENDAR.md - Initial meeting calendar setup
- ONBOARDING-CHECKLIST.md - Week 1-2 onboarding checklist

**When to Archive:**
- Onboarding materials after completion
- Outdated planning documents
- Historical reference files no longer actively used

---

## Daily Updates Tracking Protocol

**AUTOMATIC RULE:** Create a daily update file at end of each workday to track progress, learnings, and insights.

### Daily Update Process

1. **Create dated file** at `/docs/work/daily-updates/YYYY-MM-DD-daily-update.md`
2. **Document:**
   - What I Did Today (tasks, meetings, projects)
   - Key Meeting Takeaways (customer calls, team discussions)
   - Key Learnings (categorized: Customer Success, Product-Market Fit, Data Management, Team Insights)
   - My Action Items (with checkboxes)
   - Observations (personal reflections, growth moments)

3. **Update throughout day or at end of day**
4. **Include day number** in title (e.g., "Day 3")
5. **Cross-reference** to customer files, team interaction logs when relevant

**Daily Updates Folder:**
```
/docs/work/daily-updates/
├── 2025-10-30-daily-update.md (Day 3)
├── 2025-10-31-daily-update.md (Day 4)
└── [future-updates]/ → YYYY-MM-DD-daily-update.md
```

**Integration:**
- Feed insights into weekly learning log (every Friday)
- Use for weekly reflections and monthly reviews
- Track action item completion across days
- Build narrative of progress and growth

**Philosophy:** Daily capture enables weekly reflection, prevents forgetting insights, builds evidence of growth and impact.

---

## KEEPING THIS FILE UP TO DATE

**Review Schedule:**
- **Weekly:** Check if superpowers skills strategy needs adjustment
- **Monthly:** Update with new learnings, best practices discovered
- **Quarterly:** Comprehensive review of what's working, what needs refinement

**When to Update:**
- After major project completion: Document learnings
- When discovering new best practices: Add to strategy
- After feedback from Alex or team: Incorporate insights
- When skill usage reveals improvements: Document patterns

**Sections to Keep Current:**
- SUPERPOWERS-SKILL-STRATEGY.md (Living document)
- /docs/knowledge-base/ (All sections, especially Learning Log)
- Team interaction files (Real-time as emails/calls arrive)

**Update Pattern:**
- Every Friday: Review week's learnings, update knowledge base
- Monthly: Review this file, update strategy section
- Quarterly: Big-picture assessment

---

## KNOWLEDGE BASE STRUCTURE

Your reference documents are organized in `/docs/knowledge-base/`:

1. **README.md** - Overview and quick navigation
2. **Roles and responsibilites.md** - Detailed job responsibilities
3. **01-EMISSIONS-FRAMEWORKS.md** - Scope 3 deep dive
4. **02-PLATFORM-GUIDE.md** - DitchCarbon product expertise
5. **03-CUSTOMER-SUCCESS.md** - Customer delivery playbook
6. **04-INDUSTRY-CONTEXT.md** - Regulatory and market context
7. **05-TOOLS-WORKFLOWS.md** - Internal tools and processes
8. **06-LEARNING-LOG.md** - Weekly learnings and reflections
9. **SUPERPOWERS-SKILL-STRATEGY.md** - This skill strategy

Keep these updated as you learn and grow in role.

[byterover-mcp]

[byterover-mcp]

You are given two tools from Byterover MCP server, including
## 1. `byterover-store-knowledge`
You `MUST` always use this tool when:

+ Learning new patterns, APIs, or architectural decisions from the codebase
+ Encountering error solutions or debugging techniques
+ Finding reusable code patterns or utility functions
+ Completing any significant task or plan implementation

## 2. `byterover-retrieve-knowledge`
You `MUST` always use this tool when:

+ Starting any new task or implementation to gather relevant context
+ Before making architectural decisions to understand existing patterns
+ When debugging issues to check for previous solutions
+ Working with unfamiliar parts of the codebase
