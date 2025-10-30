# Daily Update - October 30, 2025 (Day 3)

## What I Did Today

1. **1:1 with Alex - SAP Deliverable Deep Dive** (Morning, ~42 min)
   - Learned SAP supplier segmentation workflow (4-tier next steps)
   - Deep dive on platform data export structure and emission factors
   - Discussed document-level assurance tracking (Limited/Reasonable/Unspecified)
   - Why downstream Scope 3 excluded (prevents double-counting)
   - Knowledge graph discussion (DeepSeek OCR, HyperRegister)
   - Side project alignment & ownership philosophy (6-month trial → stock options)
   - UK team meetup planning (or January London conference)
   - Payroll logistics (prorated invoice due tomorrow)

2. **Attended Pfizer Customer Meeting** (3pm Berlin time, ~45 min) ⭐
   - **First Pfizer call specifically** (had attended other customer calls)
   - Met Efthymios (Sustainable Sourcing) - key Pfizer contact
   - Observed Alex demo supplier claim profile feature (launched today!)
   - Participated: Suggested peer comparison approach
   - Learned: Efthymios proposed interactive forecast dashboard with 3-4 questions
   - Outcome: Alex committed to implementation by end of year

3. **Attended Coherent Customer Meeting** (Afternoon, ~30 min)
   - Introduced to Coherent team alongside Veronika
   - Observed Alex leading customer engagement
   - Q1 2026 data ingestion planning
   - Supplier claim profile demo (same feature shown to Pfizer)

4. **Received Takeda Organization Matching Task** (~15:43)
   - Assigned by Veronika via Notion (Project ID: 3410)
   - Scope: 34 supplier organizations to match and QA
   - Due: November 6, 2025 (Target: Complete by Oct 30-31)
   - Created project tracking structure in `/docs/customers/takeda/`
   - Documented workflow: Preparing for Research → Research in Progress (Muhit) → Ready for Client

5. **Documented All Interactions Comprehensively**
   - Created Efthymios Pfizer contact file in team interactions folder
   - Updated Alex's interaction log with Pfizer meeting (full detail)
   - Updated Pfizer customer interaction file
   - Updated date-based interaction timeline for Oct 30
   - Updated Veronika's team interaction file with Takeda task
   - Established dual tracking system (person-based + date-based)

## Key Meeting Takeaways

### Customer: Pfizer (Global Pharmaceutical) ⭐ FIRST PFIZER CALL

**Context:**
- **Contact:** Efthymios (Sustainable Sourcing) - "knows DitchCarbon best out of anyone at Pfizer"
- **Goal:** -25% Scope 3 reduction by 2030 via supplier engagement
- **Key Stakeholder:** Fred (VP of Procurement) - engagement KPIs being developed
- **Philosophy:** Avoid "survey fatigue" - make engagement simple, valuable, non-bureaucratic

**Main Topics:**

1. **Supplier Claim Profile Demo** (Launched Oct 30)
   - Suppliers claim profile, see scorecard/forecast/recommendations (FREE)
   - Upload data directly (private or public)
   - Can upgrade to paid tier for full Scope 3 management (Pfizer discount)
   - Efthymios: "Now it's the right time" (had wanted this "long ago")

2. **Interactive Forecast Dashboard** (Efthymios' Big Idea)
   - 3-4 short questions below forecast graph (NOT long surveys)
   - Questions trigger real-time forecast line adjustments
   - Supplier sees "new trajectory" based on investment decisions
   - Can export/share with leadership internally
   - **Alex committed: By end of year**

3. **Monetization Strategy**
   - Free tier: Scorecard, trajectory, recommendations
   - Paid tier: Scope 3 detail, benchmarking
   - Sectoral benchmarks (not competitor names) to avoid confidentiality issues
   - Efthymios: "Give them something good, but don't give them too much"

4. **My Contribution**
   - Suggested peer comparison in same graph
   - Efthymios: "Very tricky question in pharmaceuticals" (confidentiality)
   - Solution adopted: Sectoral/regional benchmarks instead

**Efthymios' Vision:**
> "This is what I'm trying to avoid... one hour calls... people that don't necessarily have an environmental and sustainability background... discussing because mainly they just need to discuss it and because someone else asked them to do so."

**Key Learning:** Simplicity wins. 3-4 questions that provide real value >> bureaucratic surveys.

---

### Customer: Coherent (£20k ACV, "In Love?" stage)
- **Contacts:** Richard Marino (Sustainability Lead), Valerie Estacuy (Procurement), Alexa (Analyst)
- **Pressure:** "Tremendous customer pressure" to reduce Scope 3 emissions fast
- **New Development:** Chief Supply Chain Officer "very supportive" of program

**Main Topics Discussed:**

1. **Q1 2026 Data Processing** - Submitted, 1 week timeline
2. **CDP Strategy** - Won't purchase (too expensive), using supplier claim profile instead
3. **Supplier Engagement** - Launching letter campaign, evaluating DitchCarbon vs Excel
4. **New Features** - Supplier claim profile (launched today), maturity module (November)

### Key Learnings

**Customer Success:**
- Phased approach: Internal enablement → Informational outreach → Action requests
- Leadership support (Chief Supply Chain Officer) = program accelerator
- Customer pressure from downstream buyers drives urgency

**Product-Market Fit:**
- Supplier claim profile launched exactly when customer needs it
- "One source of truth" preference over Excel
- Suppliers need value (recommendations) to engage, not just data requests

**Data Management:**
- Partial year data = separate project (avoid misleading comparisons)
- Consistent threshold (£10k) = simplicity over optimization
- Flexible submission formats = customer-centric approach

**Alex's Style:**
- "What's easier for you?" approach
- Transparent about challenges (CDP negotiations)
- Realistic timelines with caveats

## Key Learnings (Categorized)

### Customer Success
1. **Phased engagement works:** Internal enablement first (Pfizer: category managers, Coherent: Chief Supply Chain Officer) → then external supplier outreach
2. **Leadership support = accelerator:** Both customers emphasized executive buy-in (Fred at Pfizer, Chief Supply Chain Officer at Coherent)
3. **Simplicity beats sophistication:** Efthymios explicitly rejecting survey fatigue → 3-4 questions max
4. **Forward-looking >> historical:** Pfizer wants supplier investment plans, not just past emissions
5. **Value exchange critical:** Suppliers engage when they GET value (recommendations, trajectory visualization), not just GIVE data

### Product-Market Fit
6. **Timing is everything:** Supplier claim profile launched exactly when both customers evaluating engagement tools
7. **One source of truth preferred:** Valerie (Coherent) enthusiastic about platform-native solution vs. Excel
8. **Interactivity = engagement:** Efthymios' vision of real-time forecast adjustments based on supplier inputs
9. **Free tier must provide real value:** Give enough to engage, charge for deep Scope 3 work

### Data Management
10. **Partial year data = separate project:** Avoid misleading comparisons (Coherent Q1 2026)
11. **Consistent threshold = simplicity:** £10k rule for all submissions (never rethink)
12. **Downstream Scope 3 exclusion:** Prevents double-counting (customer's Scope 1/2 already calculated)
13. **Emission factor formula:** (Scope 1 + 2 + Upstream Scope 3) / Revenue = kg CO2e per dollar

### Technical & UX
14. **Scope 1/2 predictability >> Scope 3:** Suppliers can estimate operational emissions easier than value chain
15. **Sectoral benchmarks solve confidentiality:** Don't show competitor data, show industry trends (Pfizer pharma concern)
16. **Document-level assurance tracking:** Each document independently assured (Limited/Reasonable/Unspecified)
17. **Corporate hierarchy intelligence:** System tracks ownership relationships automatically

### Team Insights
18. **Alex's style:** "What's easier for you?" approach, transparent about challenges, realistic timelines
19. **Collaborative product design:** Customers proposing features (Efthymios), DitchCarbon validating feasibility
20. **6-month trial standard:** Everyone proves value → then ownership discussions (stock options)
21. **Passion-driven hiring:** Alex hired me because I demonstrated commitment to Scope 3 work

### Personal Development
22. **Proactive learning valued:** I specifically asked to join Pfizer call → Alex noticed and appreciated
23. **Customer calls = accelerator:** Seeing real needs vs. abstract product features
24. **Contributing matters:** My peer comparison suggestion led to sectoral benchmark solution
25. **Building relationships:** First Pfizer call = foundation for ongoing relationship with Efthymios

## My Action Items

**Administrative (High Priority - Due Tomorrow Oct 31):**
- [ ] Submit prorated invoice (5 days Oct 27-31) to finance@ditchcarbon.com
- [ ] Email finance@ditchcarbon.com with bank details for Xero setup
- [ ] Ask finance which expense account to use for laptop reimbursement

**From Pfizer Call:**
- [ ] Continue attending Pfizer calls and building relationship with Efthymios
- [ ] Track interactive dashboard implementation progress (by end of year)
- [ ] Monitor Pfizer's supplier claim profile rollout feedback

**From Coherent Call:**
- [ ] Support Q1 2026 data ingestion process
- [ ] Monitor timeline (1 week target)
- [ ] Track Coherent customer success metrics

**From Takeda Task Assignment (Priority: Complete by Oct 30-31):**
- [ ] Access DC2 account (Project 3410) and original client file
- [ ] Review all 34 Takeda supplier organizations
- [ ] QA Check 1: Verify unique suppliers match client input
- [ ] QA Check 2: Validate SBTi/CDP status (focus large orgs with Europe HQs)
- [ ] QA Check 3: Validate industry mappings (sort by largest industry EF)
- [ ] QA Check 4: Validate organization emission factors (sort by largest upstream/scope 1+2 EFs)
- [ ] Update Notion status to "Research in Progress"
- [ ] Tag Muhit in Notion for next research phase
- [ ] Document completion and learnings

**Learning & Development:**
- [ ] Schedule 1:1 with Charlie Groves to discuss knowledge graph (avoid Thursdays)
- [ ] Prepare knowledge graph explanation/example for Charlie discussion
- [ ] Research UK visa requirements (3-4 days, tourist visa) for potential team meetup

## Observations

### What Went Well
- **First Pfizer call:** Successfully contributed to discussion, suggestion adopted
- **Product launch timing:** Witnessed claim profile launch aligned perfectly with customer needs (both Pfizer and Coherent)
- **Relationship building:** Warm introduction to Efthymios, foundation established
- **Documentation discipline:** Comprehensive tracking across all systems (person-based, date-based, customer files)

### What I Learned
- **Customer relationship dynamics:** How Alex balances technical details with relationship building
- **Feature validation in real-time:** Efthymios said "now it's the right time" for feature he wanted "long ago"
- **Co-creation mindset:** Customers as product designers (Efthymios' interactive dashboard idea)
- **Simplicity principle:** 3-4 questions >> long surveys (applies to everything)

### Growth Moments
- **Contributing to customer call:** Peer comparison suggestion → sectoral benchmark solution
- **Understanding nuance:** Pharmaceutical confidentiality concerns (learned industry-specific challenges)
- **Seeing strategy unfold:** Engagement KPIs (first 2 years) vs. reduction KPIs (long-term)
- **Product thinking:** Why features matter (value exchange, excuse elimination, forward-looking data)
