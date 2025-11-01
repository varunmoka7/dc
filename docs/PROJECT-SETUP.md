# Ditch Carbon - Project Setup Documentation

## Project Context

**Project Name**: Ditch Carbon Executive Research
**Created**: October 2024
**Start Date**: October 27, 2025
**Purpose**: Private research workspace for Scope 3 Support Executive role
**Role**: Scope 3 Support Executive (Freelance Consultant)
**Primary Focus**: Customer delivery, research, and product insights

## Repository Purpose

This repository has been set up to serve as a **comprehensive knowledge and document management system** for freelance consultancy work with Ditch Carbon. The primary objectives are:

1. **Document Storage**: Secure, organized storage of contracts, company documents, and work materials
2. **Knowledge Building**: AI assistant becomes expert in Scope 3 carbon accounting and Ditch Carbon operations
3. **Workflow Management**: Organized processes for research, analysis, and documentation
4. **Privacy**: All sensitive materials remain local and are excluded from version control

## Directory Structure Explained

### `/docs/contracts/`
- Freelance consultancy contract
- NDA agreements
- Terms of service
- Any legal documents related to the engagement

### `/docs/work/`
- **daily-updates/** - End-of-day progress tracking (YYYY-MM-DD-daily-update.md)
- **interaction-timeline/** - Date-based view of all interactions (YYYY-MM-DD-interactions.md)
- **team-interactions/** - Person-based relationship tracking ({name}/{NAME}-interactions.md)
- **standups/** - Team meeting notes (YYYY-MM-DD-standup.md)
- **tasks/** - Task tracking files
- **archive/** - Historical onboarding materials

### `/docs/customers/`
- Customer-specific project folders
- **takeda/** - Takeda project materials, customer profile, QA evidence
- **howden/** - Howden sustainability report extractions
- Customer analysis and deliverables

### `/docs/knowledge-base/`
- **README.md** - Overview and navigation
- **01-EMISSIONS-FRAMEWORKS.md** - Scope 3 deep dive
- **02-PLATFORM-GUIDE.md** - DitchCarbon product expertise
- **03-CUSTOMER-SUCCESS.md** - Customer delivery playbook
- **04-INDUSTRY-CONTEXT.md** - Regulatory and market context
- **05-TOOLS-WORKFLOWS.md** - Internal tools and processes
- **06-LEARNING-LOG.md** - Weekly learnings and reflections
- **SUPERPOWERS-SKILL-STRATEGY.md** - Skill usage strategy

### `/.bmad-core/`
- BMad framework installation
- Agents, templates, tasks, workflows
- Project configuration

### `/.ai/`
- AI workspace files
- Debug logs
- Session information
- Processing notes

## Document Ingestion Process

When documents are provided:

### Step 1: Storage
- Files are stored in appropriate directories
- Organized by type and purpose
- Properly named for easy retrieval

### Step 2: Analysis
- Content is analyzed and extracted
- Key information is identified
- Structure and meaning are understood

### Step 3: Knowledge Building
- Information is synthesized into knowledge
- Context and relationships are established
- Expert understanding is developed

### Step 4: Documentation
- Key insights are documented
- Summaries are created
- Quick reference materials are prepared

## Scope 3 Executive Role

**Your Role**: Scope 3 Executive (Freelance Consultant)

Scope 3 emissions are indirect emissions that occur in the value chain of the reporting company. As a Scope 3 Executive, you are likely responsible for:

- Carbon accounting and measurement
- Supply chain emissions analysis
- ESG reporting and documentation
- Stakeholder engagement
- Strategic carbon reduction initiatives
- Compliance and verification

## AI Assistant Training

The AI assistant will learn about:

1. **Your Role**: Specific responsibilities, deliverables, and expectations
2. **Ditch Carbon**: Company mission, operations, systems, and requirements
3. **Carbon Accounting**: Technical knowledge about Scope 3 emissions
4. **Workflows**: Processes, templates, and best practices
5. **Your Work**: Past deliverables, reports, and analyses

## Privacy & Security Measures

### Git Protection
- All sensitive files excluded via `.gitignore`
- Only BMAD-METHOD framework code can be committed
- Documents remain local to your machine

### Document Handling
- Files stored in protected directories
- Sensitive information flagged and protected
- Proper access controls maintained

### AI Processing
- Processing happens locally through this repository
- No external uploads or API calls with sensitive data
- Knowledge building happens in local context

## Next Steps

1. **Share Initial Documents**
   - Freelance contract
   - Ditch Carbon company overview
   - Role description and deliverables
   - Any existing documentation

2. **AI Learning Phase**
   - I'll analyze all provided documents
   - Build comprehensive knowledge base
   - Ask clarifying questions if needed

3. **Expert Mode**
   - I become your expert assistant
   - Answer questions about your role and work
   - Help with analysis, research, and documentation
   - Use BMAD agents as needed

4. **Continuous Learning**
   - As you share more documents, I learn more
   - Knowledge becomes more sophisticated
   - Capabilities expand

## BMAD-METHOD Agents Available

### Core Agents
- **@bmad-master** - Universal task executor
- **@analyst** (Mary) - Research and analysis
- **@pm** (John) - Documentation and strategy
- **@architect** (Winston) - System design
- **@dev** (James) - Implementation

### Specialized Roles
- **@qa** (Quinn) - Quality assurance
- **@sm** (Bob) - Story creation and workflow
- **@po** (Sarah) - Backlog management
- **@ux-expert** (Sally) - UI/UX design

## Usage Examples

### Document Analysis
```
"Analyze the contract I shared and tell me key deliverables"
```

### Research Assistance
```
"Research best practices for Scope 3 emissions tracking"
```

### Documentation Creation
```
"Create a summary of Ditch Carbon's carbon accounting process"
```

### Agent Usage
```
"@pm create a project brief for my Scope 3 research work"
```

## Key Features & Tools

### Superpowers Skills (Mandatory Usage)
- **Verification Before Completion** - Use before submitting any deliverable
- **Brainstorming** - Use before major decisions
- **Learning Log** - Update every Friday
- See `/docs/knowledge-base/SUPERPOWERS-SKILL-STRATEGY.md` for full strategy

### ByteRover MCP (Knowledge Management)
- **byterover-store-knowledge** - Store learnings after significant work
- **byterover-retrieve-knowledge** - Retrieve context before starting tasks

### Dual Tracking System
- **Person-based**: `/docs/work/team-interactions/{name}/`
- **Date-based**: `/docs/work/interaction-timeline/`
- Both must be updated simultaneously for all interactions

### Daily Updates Protocol
- Create end-of-day update: `/docs/work/daily-updates/YYYY-MM-DD-daily-update.md`
- Feed insights to weekly learning log every Friday

## Current Status (Updated November 1, 2025)

✅ Repository initialized and active
✅ Directory structure fully established
✅ Multi-laptop sync configured
✅ Knowledge base built and maintained
✅ Customer projects active (Takeda, Howden)
✅ BMad framework installed
✅ Superpowers skills integrated
✅ ByteRover MCP knowledge system active
✅ Team interaction tracking established
✅ Daily update system in place

---

## For Agents on Other Laptops

**CRITICAL INSTRUCTIONS:**

1. **Read CLAUDE.md first** - Contains all project instructions and protocols
2. **Check knowledge base** - `/docs/knowledge-base/` for domain expertise
3. **Review customer folders** - `/docs/customers/` for active projects
4. **Follow tracking protocols**:
   - Update both person-based AND date-based interaction files
   - Create daily updates at end of workday
   - Use Superpowers skills as mandated
   - Store/retrieve knowledge using ByteRover MCP

5. **Multi-laptop sync workflow**:
   - ALWAYS `git pull` before starting work
   - ALWAYS `git push` after completing work
   - Use sync scripts: `sync-start.sh`, `sync-end.sh`, `quick-sync.sh`
   - See `SYNC-WORKFLOW.md` for complete workflow

6. **Current active work**:
   - Takeda Project 3410 (org matching analysis)
   - Howden sustainability report analysis
   - Sprint planning and task management
   - Weekly learning log updates

**You are the same agent across laptops - maintain continuity, follow all protocols, and ensure work stays synchronized.**

