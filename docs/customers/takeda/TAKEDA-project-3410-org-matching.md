# Takeda - Organization Matching Project (Project ID: 3410)

**Task Received:** October 30, 2025
**Assigned By:** Veronika Yaneva
**Due Date:** November 6, 2025
**Target Completion:** October 30-31, 2025
**Status:** 🟡 In Progress - Preparing for Research

---

## Project Overview

**Customer:** Takeda Pharmaceutical Company
**Project Type:** Supplier organization matching and data validation
**Scope:** 34 unique supplier organizations to match and QA
**Created By:** Max Tancock
**Current Assignees:** Veronika Yaneva, Moka Varun
**Next Step Owner:** Muhit (for Research in Progress phase)

## Resources

- **DC2 Account:** https://api.ditchcarbon.com/research/projects/3410
- **Original Client File:** [Google Docs link provided in Notion]
- **Notion Task:** Takeda (Created October 29, 2025 10:45 AM)

---

## QA Methodology (from Veronika's Tutorial Video)

### Why Entity Resolution QA is Critical

**"If we got the wrong company, we'll end up missing data, we'll end up showing the customer the wrong company. It's a bad mistake for us to make."**

- Entity resolution = matching client org (user request) → database organization
- If this is wrong, **everything downstream is wrong**
- **Must QA matches FIRST** before any other work - otherwise have to redo all QA if matches change

### How the System Works

1. **Inputs:** Client provides name + email/website
2. **Matching Logic:** System tries to confidently match to existing org in database
3. **S&P Global Integration:** If not confident, may match to new S&P Global record
4. **Synced Status:** Orgs show as "synced" when successfully matched
5. **Parent Laddering:** System automatically goes up corporate tree to find org with data (e.g., Google UK → Alphabet)

### What to Check for Each Organization

For every supplier match:

1. **Requested Organization:** What client originally provided (name, website)
2. **Matching Organization:** What our system matched to
3. **Verify match quality:**
   - Name matches (exact or reasonable parent/child)
   - Website matches
   - **S&P Global ID exists** (critical!)
   - Organization has data (documents, targets, emissions)
   - Industry looks correct

### Red Flags - Suspect Duplicate Issue

🚩 **Missing S&P Global ID** = HIGH PRIORITY CHECK
- Strongly suggests duplicate organization in system
- System may have matched to empty duplicate instead of org with data
- Need to search for correct version with S&P Global ID

🚩 **No documents/data on matched org** = Check if correct entity

🚩 **Website mismatch** = Verify company relationship

🚩 **Wrong industry** = "Spidey senses tingling" (Veronika's phrase)

🚩 **Short/generic names** (e.g., "AA") = Higher error risk

### Failure Modes to Watch

1. **Duplicate Organizations**
   - Old org + new S&P Global org both exist
   - System matched to wrong duplicate without data
   - Solution: Delete duplicate, move website to correct record

2. **Wrong Parent/Child Matching**
   - Should match to entity with data (may need to ladder up tree)
   - Check corporate hierarchy to verify correct level

3. **Outdated Ownership Data**
   - S&P may show old parent companies
   - Verify current ownership with web search if suspicious

4. **Website on Wrong Organization**
   - May cause future incorrect matches
   - Update correct org, remove from incorrect one

5. **Documents on Wrong Organization**
   - Move documents to correct org
   - Lock documents so web crawlers don't move them back

### Remediation Actions (Complex Cases)

**When you find duplicate org issue:**
1. Search for organization with S&P Global ID
2. Verify it has data (documents, targets)
3. Delete duplicate organization (via Madman)
4. Move website to correct record
5. Move documents to correct organization
6. Lock documents to prevent future issues
7. System will auto re-sync to correct org

**When to ask for help:**
- Complex ownership structures (spin-outs, financial owners)
- Multiple potential matches
- Unclear which parent level to use
- When unsure about remediation actions

---

## Task Checklist - Before Sending to Research

### ✅ Pre-Research QA Checklist

**From Notion "Before sending checklist":**

- [ ] **Check Client Inputs:** Review what Takeda originally provided
- [ ] **Unique Suppliers Match:** Does the count of unique suppliers match the client input?
- [ ] **Match Quality Review:** Verify Client Org → Database Org matches are accurate
- [ ] **Duplicate Org Check:** Confirm all matched orgs have S&P Global IDs (flag missing IDs)
- [ ] **SBTi/CDP Status QA:** Has SBTi/CDP status been QAed?
  - Use GPT to check large organizations
  - Especially focus on ones with Europe HQs
- [ ] **Industry Mappings QA:** Have industry mappings been QAed?
  - Sort by largest industry EF (Emission Factor)
  - Check those first
- [ ] **Organization Emission Factors QA:** Have organization emission factors been QAed?
  - Sort by largest upstream and scope 1+2 EFs
  - Check those first

---

## Work Log

### October 30, 2025 - Day 3 (Task Assignment)

**15:43** - Task assigned by Veronika Yaneva
- Received Notion task details
- Project scope: 34 organizations
- Status: "Preparing for research"
- Due: November 6, 2025
- Goal: Complete by October 30-31

**Initial Actions:**
- Created project tracking folder: `/docs/customers/takeda/`
- Set up project documentation
- Created todo list for systematic completion
- Documented workflow for future reference

**Next Steps:**
1. Access DC2 account and original client file
2. Review all 34 organizations
3. Complete 4-part QA checklist systematically
4. Update Notion status to "Research in Progress"
5. Tag Muhit for next phase

---

## All 34 Suppliers - Entity Resolution QA Tracking

### Page 1 (20 organizations)
1. ✅ **Agilent Technologies** → agilent | Industry: Machinery and equipment | S&P: 154924
2. ⬜ **Avantor (VM)** → avantor | Industry: Research and development
3. ⬜ **Becton Dickinson (BD)** → bd | Industry: Glass and glass products
4. ⬜ **Catalent** → catalent | Industry: Pharmaceutical Preparations
5. ⬜ **Corning** → corning | Industry: Glass and glass products
6. ⬜ **Cytiva (Danaher)** → cytiva | Industry: Pharmaceutical Preparations
7. ⬜ **DHL Supply Chain** → deutsche-post | Industry: Other land transport
8. ⬜ **FedEx HealthCare** → federal-express | Industry: Other land transport
9. ⬜ **FUJIFILM Diosynth Biotechnologies** → FUJIFILM Holdings Corporation | Industry: Pharmaceutical Pr.
10. ⬜ **Gerresheimer** → gerresheimer | Industry: Glass and glass products
11. ⬜ **ICON plc** → icon | Industry: Research and development
12. ⬜ **IQVIA** → iqvia | Industry: Health and social work
13. ⬜ **Jabil** → jabil | Industry: Electrical machinery
14. ⬜ **Labcorp Drug Development** → labcorp | Industry: Research and development
15. ⬜ **Lonza** → lonza | Industry: Pharmaceutical Preparations
16. ⬜ **Marken (UPS Healthcare)** → surepost | Industry: Other land transport
17. ⬜ **Merck KGaA (MilliporeSigma)** → merck | Industry: Pharmaceutical Preparations
18. ⬜ **Microsoft** → linkedin | Industry: Computer and related activities
19. ⬜ **Nemera** → nemera | Industry: Health and social work
20. ⬜ **Parexel** → parexel | Industry: Research and development

### Page 2 (14 organizations)
21. ⬜ **PPD (Thermo Fisher Scientific)** → thermo-fisher-scientific | Industry: Medical, precision
22. ⬜ **Ritiba** → ariba | Industry: Computer and related
23. ⬜ **Sartorius** → sartorius | Industry: Medical, precision
24. ⬜ **Schott AG** → SCHOTT AG | Industry: Glass and glass products
25. ⬜ **SHL Medical** → shl-medical | Industry: Health and social
26. ⬜ **Stevanato** → stevanato | Industry: Glass and glass products
27. ⬜ **Thermo Fisher Scientific (Patheon)** → thermo-fisher-scientific | Industry: Medical, precision
28. ⬜ **TMMK** → toyota-motor&motor-manufacturing | Industry: Electrical machinery
29. ⬜ **Waters Corporation** → waters | Industry: Research and development
30. ⬜ **West Pharmaceutical Services** → west-pharmaceutical-services | Industry: Medical, precision
31. ⬜ **WuXi** → wuxi | Industry: [Not visible]
32. ⬜ **World Courier (Conecera)** → world-courier | Industry: Health and social
33. ⬜ **WuXi AppTec** → wuxi-apptec | Industry: Pharmaceutical Preparations
34. ⬜ **WuXi Biologics** → wuxi-biologics | Industry: Medical, precision
35. ⬜ **Ypsomod** → ypsomed | Industry: Medical, precision

**NOTE:** Appears to be 35 organizations, not 34. Need to verify count.

---

## QA Findings & Notes

### Organization-by-Organization QA Results

#### 1. Agilent Technologies ✅ PASS
**Status:** ✅ Checked - EXCELLENT MATCH
**Client Request:** Agilent Technologies
**Matched To:** Agilent Technologies, Inc.
**S&P Global ID:** 154924 ✅
**Website:** https://agilent.com ✅
**Industry:** Laboratory Analytical Instruments (correct)
**HQ:** US
**Data Available:**
- Documents: 17/17 (100% complete)
- SBTi: YES (ID 337877)
- CDP: YES (ID 21988)
- Revenue: 2005-2024
- Emissions: Scope 1+2 available
**Assessment:** Perfect match. No issues. Ultimate parent = itself (no laddering needed).

---

### Unique Suppliers Validation
*[To be completed after individual QA]*

### SBTi/CDP Status Review
*[To be completed]*

### Industry Mappings Review
*[To be completed]*

### Emission Factors Review
*[To be completed]*

---

## Completion Summary

**Completion Date:** _[Pending]_
**Final Status:** _[Pending]_
**Handoff to Muhit:** _[Pending]_
**Key Learnings:** _[To be documented]_

---

## Process Notes

**Workflow Pattern Observed:**
1. **Preparing for research** (current) → Varun/Veronika validate data quality
2. **Research in Progress** (next) → Muhit conducts research
3. **Ready for Client** → Final review and delivery

This represents the typical DitchCarbon supplier intelligence workflow for organization matching and validation.
