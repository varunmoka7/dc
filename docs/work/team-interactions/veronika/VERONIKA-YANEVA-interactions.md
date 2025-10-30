# Veronika Yaneva - Team Interactions

**Role:** Quality Assurance & Data Operations Lead
**Contact:** veronika@ditchcarbon.com
**Timezone:** CET (Central European Time)
**Focus Areas:** Supplier data QA, entity resolution, validation workflows

---

## Interaction Log

### Meeting: Customer Review (Oct 28, 2025)

**Type:** Customer Review / Strategy Session
**Attendees:** Marc, Alex, Veronika, Varun (you)
**Format:** Customer-facing review

**Key Topics:**
- Current deals in progress
- Deal pipeline overview
- Collaborative review of current customer engagements

---

### Meeting: Onboarding & Knowledge Transfer (Oct 28, 2025, 10:00 AM CET)

**Duration:** ~55 minutes
**Format:** 1:1 Video Call
**Purpose:** Initial onboarding on data operations, QA processes, and platform workflows

#### Key Topics Discussed

**1. Onboarding & Knowledge Transfer**
- Start with **Process Wiki on Notion** - contains SOPs and video guides for core tasks (some outdated, needs real-time clarification)
- Focus initially on CSV processing section covering: file uploads, entity resolution, QA steps
- Learning curve: ~1 week to get comfortable with Notion and platform (complex system, incomplete docs)
- Platform access (api.discovered.com) requires backend account creation from Charlie/Cam (Cleveland, Ohio timezone)
- **Personal test projects encouraged** to practice without affecting live data

**2. Data Processing & Entity Resolution**
- Core responsibility: Managing supplier data from clients through entity resolution
- Match supplier names from client CSVs to platform database for accurate tracking/analysis
- Project sizes vary: demos (~25 suppliers, basic data) → large clients like Pfizer (~3000 suppliers, rich data with procurement categories)
- **Supplier websites in CSVs = significantly better automatic matching accuracy** (reduces manual effort)
- If supplier not found: search for parent organizations to avoid duplicate entries
- Use client-provided industry IDs/names to cross-reference existing projects (avoids repeated QA)

**3. Quality Assurance & Validation**
- Veronika's main focus: validating supplier data (industries, emission factors)
- Mahit research team performs detailed validation: download errors, review source docs, override when justified
- **Highest priority:** Emission data from 2022-2023 (most recent years)
- Common validation issues: data extraction errors (misread decimals, missing categories) → manual document review needed
- Validation process repeats after document updates to confirm resolution

**4. Product & Technical Insights**
- Platform aggregates supplier sustainability data but **does NOT support**:
  - Activity-based Scope 3 emissions calculations
  - Bill of Materials (BOM) spend analysis
  - Limits precision in emissions accounting
- Clients provide general spend data by supplier (not detailed BOM/product-level data)
- Platform focuses on spend-based estimates vs. granular activity-based calculations
- Varun's knowledge graph + LLM work could inspire future product enhancements
- Platform auto-scrapes documents, but manual search/upload of missing reports sometimes needed

**5. Project Management & Team Coordination**
- Workflow: Entity resolution → Handoff to Mahit research team → QA coordination → Final QA
- For smaller projects/tight deadlines: entity resolution and QA run in parallel
- Pfizer project: Varun will assist with final QA once Mahit completes research work
- US admin coordination requires navigating 2-hour time difference (daylight saving) + university commitments

---

## Action Items

### For Varun (Moka)
- [ ] **Request platform access** from Charlie or Cam (API credentials for api.discovered.com)
- [ ] **Study Process Wiki** on Notion - focus on:
  - Customer CSV processing
  - Entity resolution basics
  - Final QA procedures
- [ ] **Create test projects** in platform with sample supplier data to practice:
  - Data import/formatting
  - Entity resolution
  - Platform navigation
- [ ] **Assist with Pfizer QA** once Mahit research team completes primary work

### For Veronika
- [ ] Provide Varun with links to key Process Wiki materials (recent videos + guides for QA/CSV)
- [ ] Guide Varun through entity resolution best practices and validation error handling
- [ ] Update Varun on Pfizer project progress and QA readiness

---

## Key Insights & Learnings

### Data Operations Model
- **Entity Resolution is core**: Matching supplier names to platform database enables all downstream analysis
- **Quality of input data varies widely**: CSVs with supplier websites = much better automatic matching
- **Manual effort scales with project size**: Pfizer (~3000 suppliers) vs. demos (~25 suppliers)

### Validation Priorities
1. Recent emission data (2022-2023) highest priority
2. Industry classification accuracy
3. Emission factor alignment with source docs
4. Data extraction errors flagged and manually reviewed

### Product Limitations to Know
- No activity-based Scope 3 calculations (only spend-based estimates)
- No BOM/product-level analysis
- Relies on client-provided spend data, not detailed procurement data

### Team Dynamics
- Veronika coordinates multiple handoffs (entity resolution → Mahit research → final QA)
- For speed, QA can run parallel with entity resolution on smaller projects
- US timezone admins (Charlie/Cam) critical for platform access - requires planning

### Communication Preferences
- Timezone-aware scheduling (CET + US time coordination)
- Prefers documented learning (Process Wiki, Loom videos)
- Hands-on learning encouraged (test projects first, then live work)

---

## Next Steps
1. Secure platform access credentials from Charlie/Cam
2. Deep dive into Process Wiki this week
3. Create test projects to build muscle memory
4. Shadow/assist on upcoming Pfizer QA work

