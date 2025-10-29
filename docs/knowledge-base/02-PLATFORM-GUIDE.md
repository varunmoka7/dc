# DitchCarbon Platform Guide

**Purpose:** Master the DitchCarbon product, features, and capabilities
**Priority:** CRITICAL - Essential for all customer work
**Last Updated:** October 26, 2025

---

## Table of Contents

1. [Platform Overview](#platform-overview)
2. [Core Features](#core-features)
3. [Organizations API](#organizations-api)
4. [DitchCarbon Scoring Methodology](#ditchcarbon-scoring-methodology)
5. [Data Structure](#data-structure)
6. [Customer Workflow](#customer-workflow)
7. [Integration Capabilities](#integration-capabilities)
8. [Advanced Features](#advanced-features)
9. [Hands-On Practice](#hands-on-practice)

---

## Platform Overview

### What is DitchCarbon Platform?

DitchCarbon is an AI-powered Scope 3 emissions intelligence platform that helps enterprises measure and reduce their supply chain emissions without requiring supplier surveys.

### Core Value Proposition

```
┌─────────────────────────────────────────┐
│    WITHOUT DitchCarbon:                 │
│  - Manual supplier surveys              │
│  - Low response rates (10-30%)           │
│  - Outdated data                        │
│  - Months to complete                   │
│  - High cost                            │
└─────────────────────────────────────────┘

                    ↓

┌─────────────────────────────────────────┐
│    WITH DitchCarbon:                    │
│  - Instant supplier emissions scores    │
│  - 1M+ companies scored                 │
│  - AI-verified, current data           │
│  - Real-time capability                │
│  - Cost-effective                       │
└─────────────────────────────────────────┘
```

### Key Statistics

- **1M+ companies** scored in database
- **60%** of emissions from procurement
- **Survey-free** approach (AI-powered)
- **GHG Protocol** aligned
- **Multi-framework** compliance (CSRD, SBTi, ISSB)

---

## Core Features

### 1. Supplier Emissions Scoring ⭐ (Main Feature)

**What it does:**
- Scores suppliers on their emissions profile
- Rates on scale (e.g., 0-100 or color-coded)
- Shows emissions intensity per unit
- Benchmarks against peer companies

**How it works:**
```
Input: Supplier name + procurement data
         ↓
AI Analysis: Analyzes public disclosures, industry data, business model
         ↓
Output: Emissions score + breakdown by category
```

**Use Cases:**
- Procurement teams selecting sustainable suppliers
- Supply chain optimization
- ESG risk assessment
- Supplier performance management

---

### 2. Company-Level Emissions Data

**What it does:**
- Provides emissions profiles for specific companies
- Shows disclosed climate initiatives
- Indicates reporting frameworks used
- Reveals supply chain risk factors

**Data included:**
- Scope 1, 2, and 3 emissions (if disclosed)
- Emissions intensity metrics
- Carbon reduction targets
- Science-Based Targets commitment
- Industry benchmarks

---

### 3. GHG Protocol Compliance Engine

**What it does:**
- Ensures all calculations align with GHG Protocol standards
- Applies correct emission factors
- Prevents double-counting
- Validates methodology

**Why it matters:**
- Auditable by third parties
- Acceptable for CSRD, SBTi, ISSB reporting
- Defensible in ESG claims

---

### 4. AI Pipeline for Data Processing

**What it does:**
- Automatically extracts emissions data from public sources
- Verifies data accuracy
- Categorizes by Scope 3 category
- Updates continuously

**Data sources:**
- Corporate sustainability reports
- SEC filings
- Government databases
- Industry publications
- ESG ratings

---

### 5. Free Online Directory

**What it is:**
- Public database of 1M+ company emissions scores
- Accessible at ditchcarbon.com
- Shows company emissions trends
- Displays climate initiatives

**Strategic Purpose:**
- Market visibility
- Customer acquisition
- Industry benchmarking
- Thought leadership

---

## Organizations API

### API Overview

**What is it?**
DitchCarbon's core API for programmatic access to emissions data

**Your API Key:**
```
dc_production_59594494e058c52a4ccc5ea55d0996ed4236c2627bd4c4995865d06ac7a597f5
```

**Rate Limits:** [To confirm in dev standup]
**Documentation:** [To explore with dev team]

### Common API Queries

#### Query 1: Get Company Emissions Score

**Use Case:** Look up supplier emissions when you have their name

```
Request:
GET /organizations/search?name=Tesla&country=US

Response:
{
  "company": {
    "name": "Tesla Inc",
    "ditchcarbon_score": 75,
    "scope1_emissions": 500000,
    "scope2_emissions": 1200000,
    "scope3_emissions": 25000000,
    "industry": "Automotive Manufacturing",
    "employees": 127855,
    "headquarters": "Austin, Texas"
  }
}
```

#### Query 2: Get Emissions by Category

**Use Case:** Understand where supplier's emissions come from

```
Request:
GET /organizations/{id}/scope3_breakdown

Response:
{
  "scope3_categories": {
    "purchased_goods": 15000000,
    "upstream_transport": 5000000,
    "business_travel": 2000000,
    "employee_commute": 1500000,
    "downstream_transport": 1500000
  }
}
```

#### Query 3: Search Multiple Suppliers

**Use Case:** Analyze your supply base all at once

```
Request:
POST /organizations/bulk_lookup
Body:
{
  "companies": [
    {"name": "Company A", "country": "DE"},
    {"name": "Company B", "country": "US"},
    {"name": "Company C", "country": "JP"}
  ]
}

Response:
[
  { "name": "Company A", "score": 72, "emissions": 5000000 },
  { "name": "Company B", "score": 68, "emissions": 8000000 },
  { "name": "Company C", "score": 85, "emissions": 2000000 }
]
```

### Your Onboarding Task

**Tuesday, Oct 28:** Query 3 companies using Organizations API
- Choose 3 real companies
- Document what data you find
- Understand the response structure
- This prepares you for customer implementation

---

## DitchCarbon Scoring Methodology

### The 100-Point Score System

**Range:** 0-100 (higher is better for climate performance)

**Weighting (Sample - Confirm with Product Team):**
- Emissions intensity vs peer: 35 points
- Emissions reduction trajectory: 25 points
- Climate commitments and targets: 20 points
- Disclosure transparency: 15 points
- Third-party verification: 5 points

### Score Interpretation

```
Score 80+:  Industry leader in sustainability
Score 60-79: Above average climate performance
Score 40-59: Average performance
Score 20-39: Below average - needs improvement
Score 0-19:  Significant climate risk
```

### Data Point Analysis (30+ Data Points)

DitchCarbon analyzes 30+ data points per company:

**Direct Data (Public Disclosures):**
- Scope 1 emissions reported
- Scope 2 emissions reported
- Scope 3 emissions reported
- Reduction targets
- Science-Based Targets
- Climate initiatives

**Derived Data (AI Analysis):**
- Industry emissions benchmarks
- Company size normalization
- Revenue per emission unit
- Trend analysis (3-5 year)
- Peer comparison

**Risk Factors:**
- Geographic risk (climate regulation)
- Industry risk (carbon-intensive sector)
- Supply chain risk (Scope 3 exposure)
- Transition risk (ability to decarbonize)

---

## Data Structure

### Company Profile Object

```json
{
  "id": "org_12345",
  "name": "Acme Manufacturing",
  "country": "USA",
  "state": "California",
  "industry": "Industrial Manufacturing",
  "industry_code": "3343",
  "employees": 5000,
  "revenue_usd": 500000000,
  "ditchcarbon_score": 72,
  "founded": 1985,
  "headquarters_address": "123 Main St, Los Angeles, CA",
  "website": "www.acmemanufacturing.com"
}
```

### Emissions Data Object

```json
{
  "year": 2023,
  "scope1_tco2e": 15000,
  "scope2_tco2e": 8000,
  "scope3_tco2e": 200000,
  "total_emissions_tco2e": 223000,
  "emissions_per_employee": 44.6,
  "emissions_per_million_revenue": 446,
  "data_quality": "verified",
  "source": "corporate_disclosure",
  "last_updated": "2024-10-01"
}
```

### Scope 3 Breakdown Object

```json
{
  "category_1_purchased_goods": 120000,
  "category_4_upstream_transport": 35000,
  "category_6_business_travel": 12000,
  "category_7_employee_commute": 15000,
  "category_11_use_of_sold_products": 18000,
  "other_categories": 5000,
  "total_scope3": 205000
}
```

---

## Customer Workflow

### Typical Customer Journey

#### Phase 1: Discovery (Week 1-2)

**Customer Questions:**
- What are our Scope 3 emissions?
- How do we compare to competitors?
- Where is the biggest risk in our supply chain?

**Your Role:**
- Help them upload supplier list
- Explain DitchCarbon methodology
- Set expectations on data quality

**DitchCarbon Tasks:**
- Import supplier data
- Run emissions analysis
- Generate initial report

#### Phase 2: Analysis (Week 3-4)

**What happens:**
- Detailed supply chain analysis
- Supplier segmentation by emissions
- Benchmark analysis
- Reduction opportunity identification

**Your Role:**
- Guide through findings
- Answer methodology questions
- Provide context on scores

#### Phase 3: Action Planning (Week 5-6)

**Deliverables:**
- Reduction roadmap
- Supplier engagement strategy
- Target setting recommendations
- Integration planning

**Your Role:**
- Present findings to customer leadership
- Develop action plans
- Support implementation planning

#### Phase 4: Implementation (Ongoing)

**Activities:**
- Integrate into procurement workflow
- Monitor supplier performance
- Track reduction progress
- Update targets and strategies

---

## Integration Capabilities

### Direct Platform Access

**How it works:**
- Customer uploads supplier list
- Platform scores all suppliers
- Results available in portal

### API Integration (Programmatic)

**Use Cases:**
- ERP system integration
- Procurement platform integration
- Sustainability reporting tools
- Custom internal systems

**Example - SAP Integration:**
```
Company's SAP System
    ↓
API Call to DitchCarbon: "Get emissions for supplier X"
    ↓
DitchCarbon Response: "Emissions score: 72, Category breakdown: ..."
    ↓
SAP displays in procurement system
    ↓
Procurement team sees carbon score when selecting supplier
```

### Partner Integrations

**HICX Partnership:**
- Supplier data management platform
- Integrated supplier emissions scores
- Pre-qualified supplier lists

**SAP Ariba Partnership:**
- Embedded in SAP procurement
- Real-time emissions intelligence
- Supplier performance analytics

---

## Advanced Features

### Forecasting Capability

**What it does:**
- Predicts future supplier emissions
- Based on disclosed reduction targets
- Allows scenario modeling

**Use Case:**
```
"If all our suppliers hit their reduction targets,
our Scope 3 emissions in 2030 would be: 150,000 tCO2e"
```

### Scenario Analysis

**What it does:**
- Models impact of supplier switching
- Calculates savings from different strategies
- Quantifies impact of reduction initiatives

**Example Scenarios:**
- "Switch to top 10% suppliers by emissions"
- "Achieve 30% emissions reduction by 2030"
- "Move all purchases to renewable energy suppliers"

### Benchmarking Engine

**What it does:**
- Compare against industry peers
- Show position in market
- Identify improvement opportunities

**Metrics:**
- Emissions per employee
- Emissions per revenue
- Emissions intensity by industry
- Trend vs industry

---

## Hands-On Practice

### Task 1: Your API Exploration (Tuesday, Oct 28)

**Objective:** Get comfortable with Organizations API

**Steps:**
1. Use API key to query 3 companies:
   - A major supplier (e.g., large tech company)
   - A manufacturing company
   - A logistics company

2. Document findings:
   - Company name and emissions
   - Scope 3 breakdown
   - Score and interpretation
   - Data quality observations

3. Questions to answer:
   - What data was available vs missing?
   - How would you explain score to customer?
   - What questions would customer ask?

### Task 2: Platform Navigation

**By end of Week 1:**
- Log into platform (ask for access)
- Navigate to sample customer data
- Explore supplier scoring
- Try uploading a test supplier list

### Task 3: Score Interpretation

**Practice explaining this score:**
```
Customer: "We found a supplier with a DitchCarbon score of 45.
           What does that mean?"

Your Response Should Cover:**
- What 45 means (below average)
- What it indicates (emissions risk, needs improvement)
- What to do about it (engage supplier, find alternatives)
- How it compares to peers
```

---

## Checklist: Master the Platform

- [ ] Understand core features
- [ ] Get familiar with API documentation
- [ ] Run your first API query (3 companies)
- [ ] Understand scoring methodology
- [ ] Know typical customer workflow
- [ ] Understand integration capabilities
- [ ] Can explain score interpretation to customer
- [ ] Have accessed live platform
- [ ] Completed sample customer scenario

---

## Knowledge Check Questions

1. What are the main 3 features of DitchCarbon platform?
2. Explain the difference between primary and secondary data in DitchCarbon's approach.
3. What does a score of 72 mean for a company?
4. How would you help a customer with 500 suppliers get started?
5. What integration options exist for customers with SAP systems?

---

**Next Section:** [Customer Success Playbook](./03-CUSTOMER-SUCCESS.md)

**Last Updated:** October 26, 2025
