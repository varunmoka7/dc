# DitchCarbon Q4 2025 Product Roadmap

**Source:** Miro Board Screenshot
**Date Extracted:** October 30, 2025
**Planning Period:** October 6 - December 26, 2025 (6 two-week sprints)

---

## Sprint Timeline Overview

| Sprint # | Element Name | Dates | Weeks | Status |
|----------|--------------|-------|-------|--------|
| 1 | Rhubidium | Oct 6-17 | 2 weeks | ✅ Completed |
| 2 | Strontium | Oct 20-31 | 2 weeks | 🔄 Current (ends Friday) |
| 3 | Yttrium | Nov 3-14 | 2 weeks | 📅 Upcoming |
| 4 | Zirconium | Nov 17-28 | 2 weeks | 📅 Upcoming |
| 5 | Niobium | Dec 1-12 | 2 weeks | 📅 Upcoming |
| 6 | Molybdenum | Dec 15-26 | 2 weeks | 📅 Upcoming |

**Sprint Naming Convention:** Periodic table elements (sequential order)
**Sprint Rhythm:** Monday kickoff → Friday retrospective
**No mid-sprint changes** to protect engineering focus

---

## Major Initiatives (Q4 2025)

### 🚀 Priority 1: Self-Serve, Zero Cost Entity Resolution

**Objective:** Enable users to successfully import organizations without manual support or external API costs

**Components:**

1. **Proactive Fuzzy Matching** (with avatar icon - likely assigned to team member)
   - Aggregation workflows
   - In-house fuzzy matching algorithm (replacing Kensho)

2. **Import Assist Agent** (Top Priority)
   - AI agent to guide users through import flow
   - Proactive error detection and fixing
   - Goal: Anyone can use platform without training

**Business Impact:**
- Eliminates Kensho API fees (cost reduction)
- Reduces manual support burden (scalability)
- Improves user experience (reduces churn)

**Timeline:** Spans multiple sprints (Strontium → Yttrium)

---

### 🔧 Priority 2: Fix Usability Issues

**Problem:** Current platform has multiple user experience pain points

**Issues to Address:**

1. **Gemini Inference** - Infrastructure/AI issues
2. **IH House R&G** - UI-related fixes
3. **Client Orgs Dropping** - Data persistence bug
4. **UL Loading Failures** - Data loading reliability
5. **Export UX** - Export functionality improvements
6. **Data Points Missing** - Data completeness issues

**Specific Export Fixes:**
- Add 1 missing SEFI fields to export
- Add Scope 1 sum total field to export
- Add Amazon to export (integration-specific fix)

**Timeline:** Ongoing across multiple sprints

---

### ✅ Priority 3: Enable Autonomous QA Queue

**Objective:** Automate quality assurance and research processes

**Components:**

1. **Enable Team-Level Pricing Policy**
   - Different pricing tiers for different customer segments
   - Automated pricing calculations

2. **Improve Research, Update, Disclose**
   - Automate organization research workflows
   - Update organization data automatically
   - Disclosure data collection automation

**Business Impact:**
- Reduces manual QA workload
- Improves data freshness
- Enables scalable operations

**Assignee:** Team member avatar visible (assigned ownership)

---

### 💰 Priority 4: Manage Tech Cost

**Objective:** Reduce infrastructure and third-party API costs toward cashflow breakeven

**Initiatives:**

1. **AWS S3 Migration**
   - Optimize storage costs
   - Improve data retrieval performance

2. **OpenAI Optimization**
   - Reduce AI model usage costs
   - Optimize prompt engineering for cost efficiency

**Assignee:** Team member avatar visible (assigned ownership)

**Business Impact:**
- Direct cost reduction
- Supports "default alive" cashflow breakeven goal

---

### 🔒 Priority 5: SOC 2 Compliance

**Objective:** Achieve SOC 2 certification for enterprise customer acquisition

**Scope:** Large dedicated box on roadmap (major initiative)

**Components:**
- TBD: Self-serve onboarding (related security workflows)
- Security controls implementation
- Audit preparation and documentation
- Compliance monitoring systems

**Business Impact:**
- Unlocks enterprise customer segment
- Required for large financial institutions and Fortune 500
- Competitive differentiation

**Timeline:** Spans multiple sprints (large multi-month initiative)

---

### 🤝 Priority 6: Buyer/Supplier Collaboration

**Objective:** Transform SaaS tool into two-sided platform

**Components:**

1. **Enable Claim / Update Profile**
   - Suppliers can claim their organization profiles
   - Suppliers can update their own data (first-party data)

2. **Improve Organization Maturity Flow**
   - Supplier maturity scoring system
   - Maturity progression workflows

3. **Gain Buyers Supporting Scope Spans**
   - Buyer-side features for supplier engagement

4. **Make Team First Party**
   - Internal team management features

5. **Webinar Content**
   - Educational content for platform users

6. **Scope Approval**
   - Workflow approvals for scope data

7. **Maturity Target**
   - Target setting for supplier maturity goals

**Business Impact:**
- Network effects (buyers bring suppliers, suppliers attract buyers)
- First-party data improves accuracy
- Platform model creates sustainable moat

**Timeline:** Ongoing throughout Q4

---

### 📊 Priority 7: Product/Activity Data v3

**Objective:** Enhance emissions intensity calculations for products and activities

**Current State:**
- Confirm spec (specification definition phase)

**Business Impact:**
- Expands beyond company-level emissions
- Enables product-level carbon footprinting
- Opens new customer segments (product manufacturers)

**Timeline:** Specification phase (implementation later)

---

### 🌍 Priority 8: Regional Data MVP

**Objective:** Improve data coverage for non-Western regions

**Current State:** MVP (Minimum Viable Product) phase

**Business Impact:**
- Addresses S&P Global gaps in Asian markets
- Expands addressable market internationally
- Improves accuracy for global supply chains

**Timeline:** MVP development in Q4

---

### 🤖 Priority 9: Integration Projects

**AWS Integration (Kendra)**
- AWS Kendra integration for search/knowledge management
- Likely related to AI agent assistant features

**UN Chatbot**
- United Nations chatbot integration
- Likely for regulatory guidance or UN data sources

**Business Impact:**
- Strategic partnerships
- Expands data sources
- Improves platform intelligence

---

### 🛠️ Priority 10: Small User Requests

**Objective:** Address quick-win customer requests

**Examples visible on board:**
- Scope 3: Improve target readiness, lifetime, others
- Add bulk as option in Sopact Amazon
- Default sort calculate by last updated

**Approach:**
- Quick fixes that improve user experience
- Low effort, high user satisfaction
- Continuous customer feedback integration

**Timeline:** Ongoing across sprints (fill in capacity gaps)

---

### 🎯 Priority 11: Tok on New Features

**Objective:** Take on new feature development (specifics TBD)

**Current State:** Placeholder for feature expansion

**Timeline:** Later sprints (Nov-Dec)

---

### 📈 Priority 12: Improve Industry Accuracy

**Objective:** Enhance emissions factor accuracy by industry

**Current State:** Identified priority for later sprints

**Business Impact:**
- More accurate emissions calculations
- Industry-specific benchmarking
- Competitive differentiation on data quality

**Timeline:** Later Q4 sprints

---

## Sprint Allocation (Visual Flow)

### Current Sprint (Strontium: Oct 20-31)
**Focus Areas:**
- Self-serve entity resolution (proactive fuzzy matching, aggregation)
- Fix usability issues (Gemini inference, client orgs dropping, UL loading)
- Manage tech cost (AWS S3, OpenAI)

### Next Sprint (Yttrium: Nov 3-14)
**Focus Areas:**
- Import assist agent (AI agent implementation)
- Enable autonomous QA queue
- Continue usability fixes

### Future Sprints (Zirconium → Molybdenum: Nov 17 - Dec 26)
**Focus Areas:**
- SOC 2 compliance implementation
- Buyer/supplier collaboration features
- Product/Activity Data v3 specification
- Regional data MVP
- Small user requests
- New features (tok on new features)
- Industry accuracy improvements

---

## Team Assignment (Avatar Icons on Board)

Several initiatives show team member avatar icons indicating ownership:
- Self-serve entity resolution: Assigned owner visible
- Enable Autonomous QA Queue: Assigned owner visible
- Manage Tech Cost: Assigned owner visible

**Note:** Specific names not visible in screenshot, but assignments are tracked in Miro

---

## Success Metrics (Implied by Objectives)

### Quality
- Reduction in organization matching errors
- Increase in audit trail completeness
- Automation coverage (% of processes automated)

### Cashflow Breakeven
- Reduction in Kensho API costs
- Reduction in AWS infrastructure costs
- Reduction in manual support hours

### Scalable Growth
- Self-serve onboarding completion rate
- Reduction in time-to-value for new users
- Platform adoption (suppliers claiming profiles)

### Complete Feature Set
- Scope 3 category coverage expansion
- Product/Activity Data v3 launch
- Regional data coverage expansion

---

## Dependencies & Risks

### Technical Dependencies
- AWS S3 migration must complete before cost optimization realized
- In-house fuzzy matching must achieve 75%+ accuracy before Kensho elimination
- Import assist agent depends on in-house matching completion

### Customer Impact Dependencies
- SOC 2 required for enterprise customer acquisition
- Self-serve enablement required for scalable growth
- Buyer/supplier collaboration requires critical mass of suppliers

### Resource Constraints
- 6 sprints to deliver 12 major initiatives
- Team capacity limitations (sprint discipline protects focus)
- Prioritization tradeoffs (can't do everything)

---

## Strategic Rationale

### Why Self-Serve is #1 Priority
1. **Biggest user pain point** (validated by Varun's Oct 30 experience)
2. **Blocks scalable growth** (manual support doesn't scale)
3. **Reduces costs** (eliminates Kensho fees + manual matching labor)
4. **Improves quality** (in-house matching more accurate than Kensho)

### Why SOC 2 is Top 5 Priority
1. **Required for enterprise deals** (Fortune 500, financial institutions)
2. **Competitive differentiation** (many competitors lack SOC 2)
3. **Revenue unlock** (enterprise segment = higher ACV)
4. **Long sales cycle** (start now for Q1 2026 deals)

### Why Fix Usability Issues is Ongoing
1. **Customer retention** (bugs drive churn)
2. **User satisfaction** (polish improves NPS)
3. **Team morale** (bugs create support burden)
4. **Quick wins** (many fixes are small effort)

---

## Q4 Success Definition

**Minimum Success (Must-Haves):**
- ✅ Import assist agent launched and reducing support tickets
- ✅ In-house fuzzy matching replacing Kensho
- ✅ SOC 2 audit initiated (if not completed)
- ✅ Top 5 usability issues resolved

**Target Success (Should-Haves):**
- ✅ Autonomous QA queue operational
- ✅ Tech cost reduced by [X]%
- ✅ Buyer/supplier collaboration MVP live
- ✅ Product/Activity Data v3 spec finalized

**Stretch Success (Nice-to-Haves):**
- ✅ Regional data MVP live
- ✅ All small user requests addressed
- ✅ Industry accuracy improvements deployed
- ✅ New features launched

---

**Last Updated:** October 30, 2025
**Next Review:** Sprint Retrospective (Friday, Nov 1, 2025)
**Board Owner:** Alex Rudnicki (COO)
**Sprint Naming Credit:** Cam (periodic table idea)
