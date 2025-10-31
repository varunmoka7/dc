# Ditch Carbon - Executive Research Workspace

## Overview

This repository serves as the **private research workspace** for a Scope 3 Executive consultant working with Ditch Carbon on a freelance consultancy contract.

**Multi-Laptop Sync Enabled**: This repository is configured for seamless synchronization across multiple laptops via GitHub.

## 🚀 Quick Start

### First Time Setup (Second Laptop)
See **[docs/SETUP-OTHER-LAPTOP.md](docs/SETUP-OTHER-LAPTOP.md)** for complete setup instructions.

### Daily Usage
```bash
# Start work session
./sync-start.sh

# Work normally, then quick sync
./quick-sync.sh

# End work session
./sync-end.sh "Today's summary"
```

**Quick Reference**: See **[SYNC-QUICKREF.md](SYNC-QUICKREF.md)** for commands and troubleshooting.

**Full Guide**: See **[docs/SYNC-WORKFLOW.md](docs/SYNC-WORKFLOW.md)** for complete workflow documentation.

## Purpose

This workspace is designed to:
- Store and organize company documents, contracts, and work deliverables
- Maintain research notes and analysis
- Create comprehensive documentation of processes and workflows
- Enable expert-level understanding of the Scope 3 Executive role and Ditch Carbon operations

## Repository Structure

```
ditch-carbon/
├── BMAD-METHOD/          # BMAD framework tools
├── docs/
│   ├── contracts/        # Contract documents (DO NOT COMMIT)
│   ├── work/             # Work deliverables and notes (DO NOT COMMIT)
│   ├── company/          # Company documents (DO NOT COMMIT)
│   └── research/         # Research materials (DO NOT COMMIT)
├── .ai/                  # AI workspace and logs
└── README.md             # This file
```

## Document Management

### Adding Documents

When you share documents with me, I will:
1. **Store them** in the appropriate directory (`docs/contracts/`, `docs/work/`, etc.)
2. **Analyze and learn** from their content
3. **Build knowledge** about Ditch Carbon, Scope 3 operations, and your role
4. **Create documentation** summarizing key information

### Privacy & Security

- All sensitive files are excluded from git via `.gitignore`
- Documents remain local to your machine
- BMAD-METHOD framework code can be committed separately
- You maintain full control over what gets shared

## AI Assistant Capabilities

As your AI assistant, I will become an expert on:
- Your specific Scope 3 Executive role and responsibilities
- Ditch Carbon's business model, operations, and systems
- Your contract terms and deliverables
- Workflows and processes you need to follow
- Industry best practices for Scope 3 carbon accounting

## Getting Started

1. **Share your documents** - Send me contracts, company docs, and any materials you want me to learn from
2. **I'll analyze and organize** - I'll store them properly and extract key information
3. **I'll become your expert** - Ask me questions, request analysis, or have me create documentation
4. **Work seamlessly** - Use BMAD agents to help with research, documentation, and analysis

## BMAD-METHOD Integration

This workspace includes the BMAD-METHOD framework, which provides:
- **Analyst Agent** (Mary) - For research, brainstorming, and analysis
- **Product Manager** (John) - For documentation and strategy
- **Architect** (Winston) - For system documentation
- **Scrum Master** (Bob) - For workflow management
- And more specialized agents

Use agents by mentioning them: `@bmad-master`, `@analyst`, `@pm`, etc.

## Contact & Support

This is your private workspace. All AI assistance happens locally through this repository.

---

**Last Updated**: {{current_date}}
**Status**: Active - Ready for document ingestion and analysis

