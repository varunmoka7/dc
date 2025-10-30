# Major Initiatives - Q4 2025 Detailed Breakdown

**Source:** Miro Product Roadmap
**Date:** October 30, 2025

---

## Initiative Categories

1. **Product & UX** - Self-serve enablement, usability fixes
2. **Platform & Collaboration** - Buyer/supplier features, organization claims
3. **Infrastructure & Cost** - Tech cost management, AWS migration
4. **Compliance & Security** - SOC 2
5. **Data & Accuracy** - Regional data, industry accuracy, Product/Activity v3
6. **Integrations & Partnerships** - AWS Kendra, UN Chatbot
7. **Customer Requests** - Small user requests, quick wins

---

## 1. Self-Serve, Zero Cost Entity Resolution

### Overview
**Objective:** Enable users to import organizations successfully without manual support or external API costs
**Priority:** #1 (Top Q4 Priority)
**Timeline:** Strontium → Yttrium (Oct 20 - Nov 14)
**Owner:** Team member assigned (avatar visible on board)

### Problem Statement
- Current import process confusing (requires handholding)
- Kensho API fees expensive (~cost TBD but significant)
- Manual matching labor not scalable
- User frustration drives churn

### Components

#### 1.1 Proactive Fuzzy Matching
**What:** Build in-house fuzzy matching algorithm to replace Kensho
**Why:**
- Reduce external API costs
- Improve accuracy and control
- Eliminate service interruptions

**Technical Approach:**
- Scale database: 1.5M → 10-20M organizations
- Proactively pull all S&P Global data
- Replicate Kensho matching algorithm
- Maintain 75%+ confidence threshold

**Success Metrics:**
- Match accuracy ≥ Kensho baseline
- API cost elimination: $[X]/month saved
- Service uptime: 99.9%+

#### 1.2 Aggregation
**What:** Aggregate organization data from multiple sources
**Why:** Improve match confidence and data completeness

**Data Sources:**
- S&P Global (primary)
- Regional databases (MVP)
- Customer-provided data
- Public disclosures

#### 1.3 Import Assist Agent
**What:** AI agent that guides users through import flow
**Why:** Make platform self-serve without training

**Planned Capabilities:**
1. **Contextual Guidance**
   - "Now you're doing [X], you can skip if you want"
   - Step-by-step instructions
   - Optional field explanations

2. **Proactive Error Detection**
   - "I noticed an error driven by [problem]"
   - Identify mistakes before submission
   - Suggest corrections

3. **Auto-Editing with Approval**
   - "Do you want me to fix that for you?"
   - Review and approve edits
   - One-click import after approval

4. **Column Mapping Assistance**
   - "You might want to change how you mapped this column"
   - Suggest optimal mappings
   - Learn from previous imports

**Success Metrics:**
- Self-serve completion rate: [X]%
- Support ticket reduction: [X]%
- Time to first successful import: <[X] minutes
- User satisfaction (NPS): +[X] points

### Business Impact
- **Cost Reduction:** Eliminate Kensho fees + reduce manual matching labor
- **Scalable Growth:** Self-serve reduces support burden
- **Quality:** In-house matching more accurate than Kensho
- **User Experience:** Frustration → delight

### Dependencies
- Database scaling must complete first
- In-house matching must achieve 75%+ accuracy
- AI agent depends on matching completion

---

## 2. Fix Usability Issues

### Overview
**Objective:** Resolve critical UX pain points blocking user success
**Priority:** Ongoing (continuous improvement)
**Timeline:** All sprints (Strontium → Molybdenum)

### Issues Identified

#### 2.1 Gemini Inference
**Problem:** [Infrastructure/AI issue - specifics TBD]
**Impact:** [User experience degradation]
**Fix:** [Technical solution TBD]

#### 2.2 IH House R&G
**Problem:** UI-related issue [specifics TBD]
**Impact:** User interface confusion
**Fix:** UI redesign/improvement

#### 2.3 Client Orgs Dropping
**Problem:** Client organizations disappearing from system
**Impact:** Data persistence failure, user frustration
**Fix:** Database persistence bug fix
**Priority:** HIGH (data integrity issue)

#### 2.4 UL Loading Failures
**Problem:** Data loading failures (UL = unclear acronym)
**Impact:** Users cannot access data
**Fix:** Loading reliability improvements
**Priority:** HIGH (blocks user workflows)

#### 2.5 Export UX
**Problem:** Export functionality difficult to use
**Impact:** Users struggle to get data out
**Fix:** Export user experience redesign

#### 2.6 Data Points Missing
**Problem:** Expected data fields not appearing
**Impact:** Incomplete data exports
**Fix:** Data completeness validation

### Specific Export Fixes

#### 2.6.1 Add 1 Missing SEFI Fields to Export
**What:** SEFI fields not included in export
**Fix:** Add missing SEFI fields to export template
**Priority:** MEDIUM

#### 2.6.2 Add Scope 1 Sum Total Field to Export
**What:** Scope 1 total not calculated in exports
**Fix:** Add sum total calculation to export
**Priority:** MEDIUM (customer request)

#### 2.6.3 Add Amazon to Export
**What:** Amazon-specific export format
**Fix:** Create Amazon-compatible export template
**Priority:** HIGH (Amazon is strategic customer)

### Prioritization
- **P0 (Critical):** Client orgs dropping, UL loading failures
- **P1 (High):** Export UX, Amazon export, data points missing
- **P2 (Medium):** SEFI fields, Scope 1 sum total
- **P3 (Low):** Gemini inference, IH House R&G

### Success Metrics
- Bug resolution rate
- Customer-reported issues (decrease)
- User satisfaction (increase)
- Support ticket volume (decrease)

---

## 3. Enable Autonomous QA Queue

### Overview
**Objective:** Automate quality assurance and research processes
**Priority:** #3
**Timeline:** Yttrium → Zirconium (Nov 3-28)
**Owner:** Team member assigned (avatar visible)

### Components

#### 3.1 Enable Team-Level Pricing Policy
**What:** Automated pricing calculation by customer tier
**Why:** Scalable pricing without manual quotes

**Tiers:**
- Strategic customers (e.g., Amazon): Custom pricing
- Enterprise: Standard enterprise pricing
- SMB: Self-serve pricing
- University/Non-profit: Discounted pricing

**Automation:**
- User seats calculation
- Feature access tiers
- Volume discounts
- Contract renewal pricing

#### 3.2 Improve Research, Update, Disclose
**What:** Automate organization research workflows
**Why:** Manual research doesn't scale

**Workflows:**
1. **Research:** Auto-discovery of organization data
2. **Update:** Automatic data refreshing
3. **Disclose:** Disclosure report collection

**Data Sources:**
- Company websites (automated scraping)
- SEC filings (automated parsing)
- Sustainability reports (automated extraction)
- News and press releases

**Success Metrics:**
- Manual research hours reduced: [X]%
- Data freshness: [X]% of orgs updated in [Y] days
- Disclosure coverage: [X]% of orgs

### Business Impact
- Reduces manual QA workload
- Improves data freshness
- Enables scalable operations
- Frees team for high-value work

---

## 4. Manage Tech Cost

### Overview
**Objective:** Reduce infrastructure and third-party API costs
**Priority:** #4 (Critical for cashflow breakeven)
**Timeline:** Strontium → Zirconium (Oct 20 - Nov 28)
**Owner:** Team member assigned (avatar visible)

### Components

#### 4.1 AWS S3 Migration
**Current State:** [Legacy storage solution - TBD]
**Target State:** AWS S3 optimized storage

**Benefits:**
- Cost reduction: $[X]/month saved
- Performance improvement: [X]% faster retrieval
- Scalability: Unlimited growth capacity
- Reliability: 99.999999999% durability

**Migration Plan:**
1. Data audit and classification
2. S3 bucket architecture design
3. Migration testing (non-production)
4. Production cutover
5. Legacy system decommission

**Risks:**
- Data migration errors
- Downtime during cutover
- Performance regression

#### 4.2 OpenAI Optimization
**Current State:** OpenAI API usage [costs TBD]
**Target State:** Optimized prompts and model selection

**Optimization Strategies:**
1. **Prompt Engineering**
   - Reduce token usage
   - Optimize for shorter responses
   - Batch requests where possible

2. **Model Selection**
   - Use GPT-4 only when necessary
   - Default to GPT-3.5 for simple tasks
   - Consider open-source alternatives

3. **Caching**
   - Cache common responses
   - Avoid redundant API calls
   - Implement TTL strategies

4. **Rate Limiting**
   - Throttle non-critical requests
   - Prioritize user-facing features
   - Queue background processing

**Success Metrics:**
- API cost reduction: [X]%
- Response time: <[X]ms (p95)
- User experience: No degradation

### Total Cost Impact
**Target:** Reduce tech costs by [X]% toward cashflow breakeven Q1 2026

---

## 5. SOC 2 Compliance

### Overview
**Objective:** Achieve SOC 2 Type II certification
**Priority:** #5 (Enterprise customer requirement)
**Timeline:** Zirconium → Molybdenum (Nov 17 - Dec 26)
**Scope:** Large multi-sprint initiative

### SOC 2 Trust Service Criteria

#### Security
- Access controls
- Encryption (at rest and in transit)
- Vulnerability management
- Incident response

#### Availability
- System uptime monitoring
- Disaster recovery
- Redundancy and failover

#### Processing Integrity
- Data accuracy validation
- Error handling
- Quality assurance

#### Confidentiality
- Data classification
- Non-disclosure agreements
- Secure data transmission

#### Privacy
- GDPR compliance
- Data retention policies
- User consent management

### Implementation Components

#### 5.1 Security Controls
- Multi-factor authentication (MFA)
- Role-based access control (RBAC)
- Encryption key management
- Security logging and monitoring

#### 5.2 Audit Documentation
- Policy and procedure documentation
- Control testing evidence
- Risk assessments
- Vendor management documentation

#### 5.3 Compliance Monitoring
- Continuous control monitoring
- Quarterly reviews
- Annual penetration testing
- Vulnerability scanning

#### 5.4 TBD: Self-Serve Onboarding
**Security Consideration:** Self-serve must maintain SOC 2 compliance
- Secure user registration
- Identity verification
- Access provisioning automation
- Audit trail of self-serve actions

### Business Impact
- **Revenue Unlock:** Enterprise segment (Fortune 500, financial institutions)
- **Competitive Differentiation:** Many competitors lack SOC 2
- **Higher ACV:** Enterprise customers pay premium
- **Customer Trust:** Demonstrates security commitment

### Timeline
- **Nov 17-28 (Zirconium):** Security controls implementation
- **Dec 1-12 (Niobium):** Audit preparation
- **Dec 15-26 (Molybdenum):** Final documentation
- **Q1 2026:** Type II audit (requires 3-6 months of evidence)

---

## 6. Buyer/Supplier Collaboration

### Overview
**Objective:** Transform SaaS tool into two-sided platform
**Priority:** #6 (Strategic transformation)
**Timeline:** Ongoing (Strontium → Molybdenum)

### Components

#### 6.1 Enable Claim / Update Profile
**What:** Suppliers can claim and update their organization profiles
**Why:** First-party data more accurate than third-party

**Workflow:**
1. Supplier receives notification (email)
2. Supplier claims profile (identity verification)
3. Supplier updates data (guided form)
4. DitchCarbon reviews and approves
5. Updated data flows to buyers

**Data Suppliers Can Update:**
- Company information (HQ, website, contacts)
- Emissions data (Scope 1, 2, 3)
- Sustainability reports (upload PDFs)
- Targets and commitments
- Certifications and verifications

**Launch Status:** Completing today (Oct 30) per Alex

#### 6.2 Improve Organization Maturity Flow
**What:** Supplier maturity scoring and progression system
**Why:** Buyers want to track supplier sustainability progress

**Maturity Levels (TBD):**
- Level 1: No data
- Level 2: Basic disclosure
- Level 3: Verified data
- Level 4: Science-based targets
- Level 5: Net zero commitment

**Maturity Metrics:**
- Disclosure completeness
- Data verification status
- Target setting
- Reduction progress
- Third-party certifications

#### 6.3 Gain Buyers Supporting Scope Spans
**What:** [Specifics TBD - likely buyer engagement features]
**Why:** Buyers drive supplier participation

#### 6.4 Make Team First Party
**What:** [Internal team management - specifics TBD]
**Why:** [TBD]

#### 6.5 Webinar Content
**What:** Educational content for platform users
**Why:** Onboarding and engagement

**Topics:**
- How to claim your profile
- Understanding maturity scoring
- Setting science-based targets
- Supplier engagement best practices

#### 6.6 Scope Approval
**What:** Workflow approvals for scope data
**Why:** Data quality and validation

#### 6.7 Maturity Target
**What:** Target setting for supplier maturity goals
**Why:** Buyers can set expectations for suppliers

### Network Effects

**Buyer Benefits:**
- More accurate supplier data (first-party)
- Supplier engagement tools
- Maturity tracking and benchmarking
- Automated data collection

**Supplier Benefits:**
- Visibility to multiple buyers
- Showcase sustainability progress
- Attract sustainability-focused customers
- Benchmarking against peers

**Platform Benefits:**
- Data quality improvements
- User retention (network lock-in)
- Viral growth (suppliers bring buyers, buyers bring suppliers)
- Sustainable moat

### Success Metrics
- Supplier claims: [X]% of profiles
- Data updates: [X] updates/month
- Buyer engagement: [X]% using collaboration features
- Network growth: [X] new users from network effects

---

## 7. Product/Activity Data v3

### Overview
**Objective:** Enable product-level emissions calculations
**Priority:** #7
**Timeline:** Zirconium → Molybdenum (Nov 17 - Dec 26)
**Current State:** Specification phase

### Scope

**Current Capability (v2):**
- Company-level emissions (Scope 1, 2, 3)
- Spend-based calculations

**Future Capability (v3):**
- Product-level emissions intensity
- Activity-based calculations
- Hybrid methodologies

### Use Cases

#### Product Carbon Footprinting
- Manufacturer: Calculate emissions per unit product
- Example: "This laptop has 200 kg CO2e lifecycle emissions"

#### Activity-Based Calculations
- Services: Calculate emissions per activity
- Example: "This consulting project generated 5 tonnes CO2e"

#### Supply Chain Mapping
- Detailed supply chain emissions by component
- Example: "Battery = 40% of total product emissions"

### Data Requirements
- Bill of materials (BOM)
- Production processes
- Energy consumption by process
- Transportation distances
- End-of-life treatment

### Business Impact
- **New Customer Segments:** Product manufacturers
- **Competitive Differentiation:** Few competitors offer product-level
- **Regulatory Compliance:** EU Product Environmental Footprint (PEF)
- **Premium Pricing:** Product-level more valuable than company-level

### Timeline
- **Zirconium (Nov 17-28):** Spec finalization
- **Niobium (Dec 1-12):** Architecture design
- **Molybdenum (Dec 15-26):** Data model definition
- **Q1 2026:** Implementation

---

## 8. Regional Data MVP

### Overview
**Objective:** Improve data coverage for non-Western regions
**Priority:** #8
**Timeline:** Niobium (Dec 1-12)

### Problem Statement
S&P Global has gaps in:
- Small companies globally
- Mid-size Asian companies
- African companies
- Latin American companies

### Solution Approach

**Regional Data Sources:**
- India: Government company registries
- China: National databases
- Southeast Asia: Regional aggregators
- Africa: [TBD]
- Latin America: [TBD]

### MVP Scope
- Select 1-2 priority regions
- Integrate 1-2 regional data sources
- Validate data quality
- Test with customer projects

### Success Metrics
- Regional coverage: [X]% improvement
- Match accuracy: Maintain 75%+ threshold
- Customer satisfaction: [X] NPS improvement

### Business Impact
- Expands addressable market
- Improves accuracy for global supply chains
- Differentiates from competitors

---

## 9. Integration Projects

### 9.1 AWS Integration (Kendra)

**What:** AWS Kendra integration
**Why:** AI-powered search and knowledge management

**Use Cases:**
- Import assist agent knowledge base
- Customer support chatbot
- Internal documentation search
- Compliance document retrieval

**Timeline:** Molybdenum (Dec 15-26)

### 9.2 UN Chatbot

**What:** United Nations chatbot integration
**Why:** Regulatory guidance and UN data

**Potential Uses:**
- UN SDG (Sustainable Development Goals) mapping
- Climate finance guidance
- Regulatory compliance support
- UN Global Compact alignment

**Timeline:** Molybdenum (Dec 15-26)

### Business Impact
- Strategic partnerships
- Expanded data sources
- Platform intelligence improvements
- Competitive differentiation

---

## 10. Improve Industry Accuracy

### Overview
**Objective:** Enhance emissions factor accuracy by industry
**Priority:** #10
**Timeline:** Molybdenum (Dec 15-26)

### Approach

**Industry-Specific Emissions Factors:**
- Technology: Cloud computing, hardware manufacturing
- Financial Services: Financed emissions
- Retail: Supply chain emissions
- Manufacturing: Process emissions
- Transportation: Fleet emissions

**Data Sources:**
- Industry associations
- Academic research
- Government databases
- Customer data aggregation

### Success Metrics
- Emissions factor accuracy: [X]% improvement
- Industry coverage: [X] industries
- Customer satisfaction: [X] NPS improvement

---

## 11. Tok on New Features

### Overview
**Objective:** Feature development TBD based on customer feedback
**Priority:** #11
**Timeline:** Zirconium+ (Nov 17+)

**Approach:**
- Gather customer feedback (ongoing)
- Prioritize by impact and effort
- Allocate sprint capacity
- Iterate based on usage

---

## 12. Small User Requests

### Overview
**Objective:** Quick-win customer requests
**Priority:** Ongoing (fill capacity gaps)
**Timeline:** All sprints

### Examples from Board

#### Scope 3 Improvements
- Improve target readiness
- Lifetime tracking
- Other enhancements (TBD)

#### Sopact Amazon Integration
- Add bulk option
- Streamline Amazon-specific workflows

#### UI Improvements
- Default sort by last updated
- Various UX enhancements

### Approach
- Maintain backlog of requests
- Estimate effort (T-shirt sizing)
- Fill in sprint capacity gaps
- Prioritize by customer impact

---

**Last Updated:** October 30, 2025
**Source:** Miro Board + Alex Rudnicki Explanation
