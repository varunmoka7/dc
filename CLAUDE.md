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

**AUTOMATIC RULE:** Whenever user provides email conversations or interactions with DitchCarbon team members:

1. **Create/Update tracking file** at `/docs/work/team-interactions/{firstname}/{FIRSTNAME}-{LASTNAME}-interactions.md`
2. **Document everything:**
   - Role, contact info, timezone
   - Email date and full content
   - Key information extracted
   - Questions/action items raised
   - Outstanding items checklist
   - Insights about communication style
   - Date timestamp

3. **Maintain chronologically** - each new email adds to the conversation thread
4. **Apply to ALL team members** - not just initial contact
5. **Update immediately** when new emails are provided

**Folder Structure:**
```
/docs/work/team-interactions/
├── alex/ → ALEX-RUDNICKI-interactions.md
├── veronika/ → VERONIKA-{LASTNAME}-interactions.md
├── marc/ → MARC-MUNIER-interactions.md
└── [other-team-members]/ → {NAME}-interactions.md
```

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
