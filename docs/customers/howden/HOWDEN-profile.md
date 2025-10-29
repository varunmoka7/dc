# Howden + Barnett Waddingham - Customer Profile

**Customer Name:** Howden + Barnett Waddingham (BW)
**Industry:** Insurance Brokerage & HR Consulting
**Headquarters:** UK
**Status:** Active - Contract Renewal Pending (Dec 2025)
**Relationship Manager:** Alex Rudnicki (DitchCarbon)
**ACV:** £16,000
**Stage:** Training Completed → Moving to Active Delivery
**Last Updated:** October 28, 2025

---

## Company Overview

**Size:** Global insurance brokerage with federated regional operations
**Operating Structure:** Transitioning from federated (isolated regional entities) to centralized corporate services model
**Key Entities:**
- Howden (main entity)
- BW - Barnett Waddingham (subsidiary, will align financials next year)
- Dual North America, Dual LatAm, and other regional entities

**Current Transformation:**
- Creating centralized corporate services division to globalize and standardize processes
- Source-to-pay system project underway with external consultants gathering spend data across all entities
- Implementing global category managers for procurement
- Upgrading systems: lack of unified lease management, travel management, expense systems (being addressed)

---

## Key Contacts

| Name | Role | Department | Email | Timezone | Phone | Notes |
|------|------|-----------|-------|----------|-------|-------|
| Tim Rainbow | Sustainability Director | Sustainability/Procurement | (via Alex) | UK (GMT) | — | Primary decision-maker on carbon reporting; met on Oct 28 call |
| Ellen Daly-English | Sustainable Procurement Lead | Procurement | (via Alex) | UK (GMT) | — | Handles data manipulation & Salesforce coordination; met on Oct 28 call |
| Kushboo (Compass IT) | Salesforce Administrator | IT/Compass | (via Tim) | — | — | Manages Salesforce Net Zero Cloud uploads; needs currency/code alignment |

**How to Contact:** Currently working through Alex Rudnicki; Tim will provide direct Salesforce admin contacts

---

## DitchCarbon Usage & Setup

**Onboarded:** Yes (training completed, now in active delivery)
**Current Users:** ~10 (including BW team)
**Platform Access:** api.discovered.com

**Features Currently Used:**
- Supplier data management (top 2,000 suppliers tracked)
- Carbon accounting for Scope 3 emissions (Purchase Goods & Services focus)
- Salesforce Net Zero Cloud integration

**Pricing Tier:** Below average (favorable due to being "easy to work with")
**Contract Value:** £16,000 ACV
**Potential Expansion:**
- Third-party risk management team may request access (Tim meeting with them Oct 29)
- Currently expected: read-only/report access, NOT new functionality

---

## Carbon Reporting Strategy

**Reporting Scope:** Scope 1, 2, and 3
**Primary Focus:** Scope 3 - Purchase Goods & Services (PGS)
**Reporting Timeline:** First-time limited assurance exercise (unprecedented for Howden)

**Key Milestone:** Public carbon data release by mid-early March 2026
- Aligned with new accounting/finance timelines
- Report will be audited for limited assurance
- Auditors will have platform access to verify data

**Assurance Process:**
- **Start:** Early January 2026
- **Deadline:** Mid-early March 2026
- **Auditor:** External limited assurance provider (using DitchCarbon's UL-assured methodology)
- **Snapshot Date:** November 24, 2025 (end of business)

---

## Supplier Data & Integration

### Current Supplier Data

**Data Source:** Unit 4 system (primary)
**Current Coverage:** Top 2,000 suppliers
**Spend Threshold:** ~£16,000 (may adjust with new consultant data)
**Data Status:** Needs refresh for renewal cycle

**New Data Source Expected:**
- External consultants gathering consolidated spend data across all Howden entities
- Source-to-pay system project data (expected availability: next week from Oct 28)
- May reveal additional suppliers beyond Unit 4 system
- Tim to confirm final threshold once consultant data reviewed

### Data Submission Timeline

| Date | Event | Owner | Status |
|------|-------|-------|--------|
| Week of Oct 28 | Consultants provide spend data | Howden Consultants | In Progress |
| ~Nov 1-10 | Ellen reviews & formats data | Ellen Daly-English | Pending |
| **Nov 10** | **Data submitted to DitchCarbon** | Ellen Daly-English | **TARGET** |
| Nov 10-24 | DitchCarbon validates & prepares | Alex Rudnicki | Prep Phase |
| **Nov 24** | **Snapshot date** & IT upload | Compass IT Team | **HARD DEADLINE** |
| Early Jan | Limited assurance begins | Howden/Auditor | Upcoming |
| Mid-Mar | Public release | Howden | Final |

**Timeline Logic:** 2-week buffer from Ellen to DitchCarbon (Nov 10) → 2 weeks for DitchCarbon processing → Ready by Nov 24 IT deadline

### Custom Filtering & Data Organization

**Setup Needed:** Custom filter columns
**Purpose:** Enable segmentation by organizational structure and procurement function

**Planned Filters (up to 4 columns):**
1. **Pillars/Entities:** Howden main, BW, Dual North America, Dual LatAm, others
2. **Procurement Categories:** Global category manager structure (details TBD by Howden)
3. [Additional categories TBD]
4. [Additional categories TBD]

**Benefits:**
- Category managers see only suppliers in their category
- VPs can filter to their business pillar
- Reduces data clutter, increases usability
- All filters export with data extracts

---

## Salesforce Net Zero Cloud Integration

### Integration Architecture

**System Flow:**
```
DitchCarbon → CSV Export → DitchCarbon Pre-formats → Salesforce Upload
```

**Frequency:** Quarterly (aligned with Howden accounting cycles)
**Pre-formatting Effort:** ~1-2 hours per cycle (handled by Alex)

### Salesforce Setup Details

**Salesforce Team:**
- Internal CRM team (3-4 people) manages: Salesforce CRM, Net Zero Cloud, Marketing Cloud
- They handle all development and data uploads
- Howden does NOT have direct Salesforce support contract

**Admin Team Contact:** TBD (Tim to provide ~1 week from Oct 28)

### Emissions Factors Strategy

**Status:** Howden team has selected factors for Scopes 1 & 2
**PGS (Scope 3 Purchase Goods & Services):** Awaiting alignment with DitchCarbon methodology

**Process:**
1. Howden selects/loads standard emissions factors
2. DitchCarbon exports PGS factors from platform
3. Alex pre-formats for Salesforce compatibility
4. Compass IT loads into Net Zero Cloud
5. Auditors verify during limited assurance exercise

**Technical Details:**
- CSV upload from DitchCarbon to Salesforce
- Pre-formatting aligns DitchCarbon data model with Net Zero Cloud data model
- Snapshot date: November 24 (for assurance period)

**Outstanding Technical Items:**
- Currency: Currently uses EUR (unusual for UK company) - Tim/Ellen discussing change to GBP with Kushboo
- Country codes: Need confirmation for new process
- Unique IDs: Howden to provide if available (for supplier mapping back to internal systems)

---

## Contract Renewal

**Current Contract:** Expires mid-late December 2025
**Status:** Renewal pending confirmation of user base
**Expected Pricing:** Inflation adjustment only (no major increase planned)

**Pricing Rationale:**
- Howden is valued customer ("easy to work with")
- Pays below-average compared to similar-sized customers
- Low friction relationship = favorable pricing maintained

**Price Increase Triggers:**
- Significant user growth (>20 users from current ~10) - NOT expected
- Custom integrations requiring dedicated support - NOT currently needed
- New system complexity or functionality - NOT anticipated

**Services Included in Base Price:**
- Auditing process support (including auditor platform access)
- Salesforce Net Zero Cloud integration & data uploads
- Standard platform access and maintenance

**Services NOT Included:**
- Custom integrations requiring DitchCarbon engineering time

### Renewal Timeline

| Date | Event | Owner | Status |
|------|-------|-------|--------|
| Oct 29, 2025 | Tim meets with 3rd-party risk mgmt team | Tim Rainbow | Pending |
| ~Nov 3 | Tim confirms final user base | Tim Rainbow | Pending |
| ~Nov 10 | Alex initiates renewal contract | Alex Rudnicki | Pending |
| ~Nov 24 | Renewal finalized | Both parties | Pending |
| Mid-Dec | Contract renewed (new term begins) | Both parties | Expected |

---

## Interaction Log

### Call: Contract Renewal & Project Planning (Oct 28, 2025)

**Duration:** ~28 minutes
**Attendees:** Alex Rudnicki, Varun Moka (you), Tim Rainbow, Ellen Daly-English
**Format:** Video call
**Key Outcomes:**
- Confirmed renewal terms (inflation-only increase, easy to work with relationship)
- Aligned on data submission timeline (Nov 10 target)
- Reviewed Salesforce integration approach
- Introduced Varun as new customer success team member
- Confirmed limited assurance process will use DitchCarbon's UL-assured methodology

**See:** `/docs/customers/howden/HOWDEN-interactions.md` for detailed meeting notes

---

## Outstanding Action Items

### From Tim Rainbow (Howden Sustainability Director)
- [ ] Confirm final supplier spend threshold once consultant data reviewed
- [ ] Meet with third-party risk management team (Oct 29)
- [ ] Provide confirmed user count to Alex for renewal (by ~Nov 3)
- [ ] Coordinate with Kushboo/Compass team on currency change (EUR → GBP)
- [ ] Provide Salesforce admin team contact info to Alex (~1 week from Oct 28)

### From Ellen Daly-English (Procurement Lead)
- [ ] Review downloaded consultant spend data
- [ ] Raise template mapping questions once data received
- [ ] Submit data inputs to DitchCarbon by **Nov 10** (CRITICAL)
- [ ] Coordinate with Compass team on final formatting requirements

### From Alex Rudnicki (DitchCarbon)
- [ ] Set up custom filter columns (pillars + procurement categories)
- [ ] Prepare audit snapshot for limited assurance (Jan-Mar timeline)
- [ ] Pre-format emissions factors for Salesforce (1-2 hours, closer to Nov 24)
- [ ] Connect with Howden's Salesforce admin team (when Tim provides contact)
- [ ] Send data submission reminder to Ellen (if not received by ~Nov 6)
- [ ] Initiate contract renewal (in ~1-2 weeks pending Tim's confirmation)

### From Varun Moka (You - DitchCarbon Customer Success)
- [ ] Support ongoing customer success tasks with Howden
- [ ] Assist with deliveries and team engagement
- [ ] Monitor action items and follow-ups

---

## Key Learnings & Insights

### Enterprise Complexity
1. **Federated → Centralized:** Corporate transformation = more complex data integration but also opportunity for deeper platform usage
2. **Multiple handoffs:** Consultants → Ellen → DitchCarbon → Compass IT → Salesforce → Auditors (need clear communication)
3. **Hard deadlines:** Nov 24 IT upload is immovable; requires 2-week buffer for DitchCarbon processing

### Data Strategy
1. **Long-tail bucketing works:** Not all 3,000+ suppliers need individual tracking; category-level aggregation acceptable for small spend
2. **Threshold planning important:** £16k threshold balances visibility with manageability
3. **Unique IDs enable future scaling:** Will make supplier mapping simpler across systems

### Salesforce Integration
1. **Pre-formatting critical:** DitchCarbon handles CSV formatting (1-2 hrs) vs. Howden doing manual work
2. **Admin alignment essential:** Early introduction of Salesforce team prevents integration delays
3. **Methodology backing helps:** UL assurance of DitchCarbon methodology reduces auditor friction

### Relationship Dynamics
1. **Favorable pricing reflects low-friction:** Howden's "easy to work with" status = better pricing terms
2. **Trust through clarity:** Clear timelines, documented processes, transparent communication builds confidence
3. **Unexpected expansion possible:** 3rd-party risk team may create new use cases (stay flexible)

---

## Future Opportunities

1. **Activity-based Scope 3 calculations:** As procurement data standardizes, opportunity for more detailed emissions analysis
2. **Global category manager integration:** Once procurement teams fully established, DitchCarbon could enable advanced category-level analytics
3. **Supplier engagement:** With consolidated data, Howden may want to engage suppliers on emissions reduction
4. **Benchmarking:** Howden could share industry benchmarks with suppliers (with consent)

---

## Notes & Context

- **Weather note:** Both Tim and Ellen mentioned it's very cold in UK (Oct 28)
- **Cultural fit:** Howden team is organized, proactive, and communicative - good customer match
- **Timing advantage:** Centralization project (source-to-pay, corporate services) creates perfect timing for expanded DitchCarbon usage
- **Assurance milestone:** Limited assurance exercise is significant - demonstrates Howden's sustainability commitment publicly
