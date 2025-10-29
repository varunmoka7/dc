# ETH Zürich — Discussion Notes & Project Details

---

## Initial Onboarding Intel (September 29, 2025)

### Objective
Automate supplier emissions data collection to achieve 20% Scope 3 reduction by 2030 and stay on track for net-zero 2040. Replace surveys with real-time data that guides low-carbon purchasing, cuts costs, and satisfies auditors.

### Key Requirements for First Meeting
- Intended to get up and running within October
- Wants CCF (Corporate Carbon Footprint) progress dashboard similar to SBTi progress dashboard
- Wants to track: how many suppliers already have CCF 1 and 2 (or 1-3), and spending already under CCF levels
- Notes: Can likely be done in existing platform, but may need Excel workaround initially
- Eventually interested in DitchCarbon recommending carbon accounting tools to immature suppliers

### Current State Deep Dive

**Supplier Assessment:**
- Ran survey with 900 suppliers to assess climate maturity and target alignment
- Only 25% responded (mostly large companies with existing frameworks)
- Data collected in spreadsheets with limited scalability
- Scope 3 analysis based on spend data + industry emission factors
- Communicated future goals to suppliers: shift to transactional GHG data by 2028, corporate carbon footprints by 2026

**Data Challenges:**
- Manual, low-yield surveys (900 suppliers, 25% response rate) = months of follow-up and spreadsheet wrangling
- Heavy reliance on spend-based industry factors (10-40% error rate, don't contextualize supplier performance)
- Fragmented files in mixed formats = difficult to trace for audit

**Visibility Gaps:**
- No visibility into 75% of suppliers = risk of missing easy-to-abate emissions or key hotspots
- Lack of primary data = can't use benchmarking to drive purchasing decisions
- Limited forecasting/scenario analysis = can't test if supplier mix meets 2030 glide path

**System Integration Issues:**
- No carbon data in ERP system = procurement can't use sustainability as decision metric
- Spreadsheet-centric workflows = high friction for access, filtering, comparison, cross-functional use

---

## October 8 Implementation Call

### Platform Walkthrough
Walked through full DitchCarbon platform with Pascal:

**Monitor** — Track supplier emissions overview

**Calculate** — Scope 1, 2, 3 calculations for each supplier

**Org Page** — Individual supplier details including:
- Emissions data breakdown
- Documents & evidence
- Forecast (future emissions trajectory)
- Scorecard (performance vs. peers/targets)

**Reduce** — Action planning and recommendations for emissions reduction

### Data Preparation Tasks Completed
- [x] Add Pascal to team (remove demo team)
- [x] Finish waiting tasks:
  - [x] Pascal to send parent company names for resolution
  - [x] Pascal to send better/updated websites for suppliers
  - [x] Assign Muhit/Veronika to create new supplier orgs for entries with website but no S&P classification

### Outstanding Deliverables
- [ ] Send export with spend + embodied emissions columns
- [ ] Determine engagement plan (critical decision)
  - Pascal needs to answer internally: Will DitchCarbon handle supplier engagement or will ETH Zürich do it themselves?
  - This affects scope of work, ongoing support, and supplier response rates

### Supplier Categorization Discussion
- ETH Zürich uses 13 main categories (loosely mapped to material groups/spend categories)
- Industries classification may be too high-level
- Discussed whether to use S&P industry classification instead
- Waiting for DitchCarbon recommendation on categorization approach

### Export & Dashboard Requirements

**Carbon Intensity Dashboard:**
- Similar to SBTi progress dashboard format
- Timeline toggle to show progress over years
- Display: Scope 1+2 intensity + Scope 3 upstream intensity
- Goal: Visualize path to 20% reduction by 2030

**Data Export Format:**
- Columns needed: Spend + Embodied Emissions
- Ready for their own analysis and ERP integration

**Forecasting Capability:**
- Need to measure and visualize 20% reduction path by 2030
- Scenario analysis: "If we shift supplier mix X way, do we hit target?"
- Carbon intensity export for 800 key suppliers with timeline forecasting

---

## October 9 Status Update

**Training Status:** ✅ Completed

**Current Phase:** Operational (moving from onboarding to live usage)

**Active Work:**
- Updating waiting tasks (supplier data resolution ongoing)
- Preparing for export delivery
- Finalizing engagement plan with Pascal

---

## Scale & Scope

**Supplier Scale:**
- 25,000+ total suppliers in database
- 800 key suppliers identified (expect to represent ~50% of total emissions)
- Focus on goods & services only

**Emissions Baseline:**
- 120,000 tonnes CO2e (goods & services, excluding construction)
- 13 main expense categories (custom to ETH structure)
- Scope 3 only (upstream focus)

---

## Key Decisions Pending

1. **Supplier Engagement Model**
   - Will DitchCarbon provide engagement templates, automated requests, communication support?
   - Or will ETH Zürich handle all outreach themselves?
   - Critical for defining scope and ongoing support needs

2. **Categorization Approach**
   - Continue with custom 13 categories or adopt S&P industry classification?
   - Need DitchCarbon recommendation

3. **Custom Features**
   - CCF/PCF progress dashboards (currently would need Excel workaround)
   - Carbon accounting tool recommendations for immature suppliers

---

## Success Metrics

- 20% Scope 3 reduction achieved by 2030
- 800+ suppliers actively reporting or providing data
- Export data integrated into ETH procurement decisions
- Supplier forecasting accurate enough to drive strategy

---

## Notes

- Custom columns will likely change in 1-2 years (revisit categorization)
- Timeline: Operating at scale by end of 2025
- High-touch implementation (custom categories, export format, engagement strategy)
