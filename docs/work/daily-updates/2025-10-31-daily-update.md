# Daily Update - October 31, 2025 (Day 5 - End of First Week!)

## What I Did Today

1. **Sprint Strontium Retro** (Morning, ~73 min) 🎉
   - First sprint retrospective attendance
   - Major announcement: Cam (CTO) left company, leadership transition
   - Participated: Asked about customer feature prioritization
   - Gave feedback: Need better onboarding knowledge base for new hires
   - Learned: Deploy process (weekly Tuesdays + 10min bug bash)
   - Learned: Code review best practices (small PRs, 24hr SLA, tag reviewers)
   - No blockers reported

2. **Takeda Organization Matching QA - Started** (Project 3410)
   - Received Veronika's tutorial on entity resolution QA methodology
   - Studied critical red flags (missing S&P Global ID = duplicate issue)
   - Completed QA for Organization #1: Agilent Technologies ✅ PASS
   - Created comprehensive tracking system for all 34 organizations
   - Set up QA evidence folder: `/docs/customers/takeda/qa-evidence/`

3. **Takeda Customer Research**
   - Researched Takeda Pharmaceutical background ($31.7B revenue, 47,455 employees)
   - Documented climate strategy (Net-zero Scope 3 by 2040, 67% supplier target-setting goal)
   - Analyzed supplier categories (lab equipment, pharma manufacturing, packaging, logistics)
   - Created customer profile: `/docs/customers/takeda/TAKEDA-customer-profile.md`
   - Understood project importance: Supports Takeda's Scope 3 transparency challenge

4. **Platform Deep Dive** 🔍
   - Explored DC2 Research Platform in detail
   - Navigated organization detail pages (S&P Global IDs, documents, targets, emissions)
   - Learned data structure: Requested Org vs Matching Org
   - Understood parent laddering (subsidiaries → ultimate parent with data)
   - Reviewed claim profile functionality (from sprint discussion)
   - Examined document processing status (synced, created, error states)

5. **Documentation & Knowledge Management**
   - Documented sprint meeting comprehensively
   - Updated interaction timeline for Oct 31
   - Stored learnings to knowledge base (entity resolution, sprint process)
   - Organized file structure (Takeda customer folder, screenshots cleanup)

## Key Meeting Takeaways

### Sprint Strontium Retro - Leadership & Product

**Major Announcement:**
- Cam (CTO/Co-Founder) left effective immediately
- Alex assumes interim engineering management
- Hiring senior engineer (~January 2026)
- Team response: Professional, focused on stepping up

**Sprint Wins:**
- Claim Profile launched (1 year in making) - 1000+ orgs claimed
- Pfizer claimed profile (engagement loops working!)
- SAP maturity segmentation delivered (300 suppliers)
- 30-40% performance improvements
- 30-40+ tickets closed

**My Participation:**
- Asked: How do you prioritize customer feature requests?
  - Alex answer: Big enterprise wants it + others would want it → roadmap
- Feedback: Need better onboarding knowledge base
- Marc's comment: "Great attitude"

**Process Learnings:**
- Code reviews: Small PRs, 24hr SLA, tag specific reviewers
- Deploys: Weekly Tuesdays, whole team observes, 10min bug bash after
- Monitoring: Shifting from reactive (users find bugs) to proactive (dashboards/alerts)

## Key Learnings (Categorized)

### Entity Resolution QA Methodology

**Critical Red Flag (from Veronika's tutorial):**
> "Organization without S&P Global ID = suspect duplicate issue"

**QA Checklist for Each Org:**
1. ✅ S&P Global ID exists (PRIMARY check)
2. ✅ Name matches (client request → database match)
3. ✅ Website matches
4. ✅ Has data (documents, targets, emissions)
5. ✅ Industry makes sense
6. ✅ Parent laddering correct (if applicable)

**When to Flag:**
- Missing S&P Global ID → investigate duplicates
- Website mismatch → verify company relationship
- No data available → matched to empty duplicate
- Wrong industry → "spidey senses tingling"

**Remediation Actions:**
- Search for org with S&P Global ID
- Delete duplicate without ID (via Madman)
- Move website to correct record
- Move/lock documents to prevent re-crawling

### Platform Architecture Understanding

**DC2 Research Platform:**
- Project-based organization (e.g., Project 3410 = Takeda)
- Client Organizations = user requests (what customer provided)
- Matching Organizations = database records (what we matched to)
- "Synced" status = successfully matched
- Parent laddering = automatic climb to org with data

**Data Hierarchy:**
- Organization → Documents → Emissions → Targets
- S&P Global integration (authoritative source)
- Corporate family trees (subsidiaries → parents)
- Emission factors calculated from Scope 1+2+Upstream Scope 3 / Revenue

### Customer Success Strategy

**Takeda Context:**
- Japan's largest pharma, needs accurate Scope 3 data
- Supplier engagement goal: 67% to set science-based targets
- Challenge: "Lack of transparency into Scope 3 emissions" (Takeda quote)
- Our QA quality = foundation for their supplier strategy

**Impact Scale (Marc's reminder):**
- Pfizer Scope 3: 2.8M billion kg CO2e
- = 5 million people flying London to NYC
- = Everyone in France getting 10 T-shirts
- "Your work directly impacts this at enormous scale"

### Engineering Culture

**Code Review Best Practices:**
- Small PRs > Large PRs (5min review vs 20min)
- Tag person who knows code best (not always most senior)
- 24-hour SLA for reviews
- Metric tracked: Average review time

**Deploy Process:**
- Weekly Tuesdays (Charlie managing now)
- P0 bugs = immediate deploy
- Whole team observes (knowledge sharing)
- 10min bug bash immediately after (catch before customers)

**Performance Philosophy:**
- "Obvious optimizations" = biggest wins (Gourav: 15-20% compute savings)
- Example: Stop recalculating when data unchanged
- Monitoring: Proactive (dashboards/alerts) vs Reactive (users report bugs)

### Enterprise Software Philosophy

**Feature Prioritization (Alex):**
> "Beauty of enterprise software: They tell you what they want. No guessing."

**Criteria:**
1. Big enterprise customer wants it
2. Many other customers would want it
3. = Definitely goes on roadmap
4. Timing = strategic question

**Network Effects Strategy:**
- "Bloomberg of carbon emissions data" (Marc's 4-year vision)
- User-generated content (suppliers commenting on forecasts)
- Engagement loops (team notifications when colleague claims org)
- Platform, not just SaaS tool

## My Action Items

**Takeda Project (Due Nov 6, Target: Complete by Nov 1-2):**
- [x] Access DC2 account (Project 3410) ✅
- [x] Complete Org #1 QA (Agilent) ✅
- [ ] Complete 33 remaining org QA checks
- [ ] Flag orgs without S&P Global ID
- [ ] Validate SBTi/CDP status (prioritize Europe HQs)
- [ ] Validate industry mappings (sort by largest EF)
- [ ] Validate emission factors (sort by largest EFs)
- [ ] Update Notion status to "Research in Progress"
- [ ] Tag Muhit in Notion for next research phase
- [ ] Document completion and learnings

**Learning & Development:**
- [ ] Attend Tuesday deploy meeting next week (observe process)
- [ ] Schedule 1:1s with other team members (Charlie, Marcello, Gourav, Marc, Veronika)
- [ ] Follow up in engineering chat about agentic code review tools
- [ ] Continue platform exploration (claim profile, maturity module)

**From Sprint:**
- [ ] Review updated team directory (Marc mentioned needs updating)
- [ ] Explore fractional CTO concept (Sunny's suggestion - interesting model)

## Observations

### What Went Well

**First Sprint Retro:**
- Participated confidently (asked good question, gave feedback)
- Marc noticed and appreciated "great attitude"
- Learned sprint process: Standup → What went well → Gaps → Weekend actions
- Understood code review/deploy workflows for future reference

**Takeda Project Setup:**
- Strong start: Research → Methodology → First org complete
- Veronika's tutorial extremely valuable (clear mental model now)
- Documentation system working well (customer folder, QA tracking)
- Platform exploration = hands-on learning (better than just reading docs)

**Platform Confidence Growing:**
- Can navigate DC2 Research Platform independently
- Understand data structure (client org → matching org → S&P ID → data)
- Know what to look for (red flags, validation criteria)
- Comfortable with DC2 URL patterns and page navigation

**First Week Complete! 🎉**
- Attended: 2 customer calls (Pfizer, Coherent), 2 sprint meetings, multiple 1:1s
- Received: First real assignment (Takeda QA)
- Learned: Entity resolution, platform architecture, customer success workflows
- Started contributing: QA work, feedback on processes

### What I Learned

**Transition = Opportunity:**
- Cam leaving → Everyone stepping up with more responsibility
- Small team advantage: Easy communication, fast decision-making
- "High impact potential alignment" (Alex) = cultural filter

**Quality Matters (Pharmaceutical Precision):**
- Takeda = pharmaceutical company → zero tolerance for errors
- Wrong entity match = wrong emissions data = compliance risk
- Our QA foundation = their multi-year supplier strategy
- "If we got the wrong company... it's a bad mistake" (Veronika)

**Platform Thinking:**
- Claim profile = 1 year in making (worth the wait)
- Network effects > SaaS features (Bloomberg model)
- Engagement loops = reactivation strategy (90 Pfizer employees notified)
- User-generated content = platform moat

**Enterprise Customer Dynamics:**
- They tell you what they need (interactive dashboard, maturity segmentation)
- Fast iteration on feedback = more feedback (Pfizer relationship)
- Advisor role >> Vendor role (Alex: "On their side of the table")

### Growth Moments

**Asked Smart Question in Sprint:**
- "How do you prioritize features from multiple customers?"
- Alex appreciated question, gave clear framework
- Demonstrated strategic thinking, not just tactical execution

**Gave Valuable Feedback:**
- Onboarding knowledge base suggestion
- Marc: "Team directory needs updating" (validation)
- Contributing process improvements in first week

**Platform Deep Dive:**
- Self-directed learning (explored without being told)
- Connected sprint discussion (claim profile) to platform exploration
- Building technical competency alongside customer success skills

**First Assignment Execution:**
- Studied methodology thoroughly before starting
- Created tracking systems proactively
- Completed first org QA correctly (following Veronika's framework)
- Documented everything for future reference

## Personal Reflections

**Intense Week:**
- Working two jobs (restaurant + DC) = financial necessity but exhausting
- "Most money I've earned in a long time" (positive!)
- Restaurant struggling to replace me (chef called at 6pm Thursday)
- Excited to start fresh next week (more focus on DC)

**Learning Curve:**
- Notion content = overwhelming but systematic approach helps
- Customer calls = accelerated learning vs abstract docs
- Hands-on QA work = platform understanding clicks faster
- Sprint process = cultural immersion (how team works together)

**Looking Forward:**
- Next week: Full focus on DC (restaurant transition complete)
- Takeda QA: 33 more orgs to complete (momentum building)
- More team interaction: 1:1s with other members
- Tuesday deploy: Observe engineering workflow firsthand

---

**Week 1 Summary:** Foundation built. Customer context understood. Platform skills developing. First assignment in progress. Team integration positive. Ready for Week 2! 🚀
