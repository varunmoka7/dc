# Sprint Strontium - October 31, 2025

**Type:** Sprint Retro + Team Meeting
**Date:** October 31, 2025
**Duration:** ~73 minutes
**Sprint:** Strontium (2-week sprint ending Oct 31)

**Attendees:**
- Marc Munier (CEO)
- Alex Rudnicki (COO)
- Charlie Groves (Senior Engineer)
- Marcello Ruja (Engineer)
- Gourav Sen (Engineer)
- Moka Varun (Scope 3 Support Executive) - First Sprint Retro
- Max Tancock (Sales) - First part only
- Sunny Hsiao - First part only

---

## MAJOR ANNOUNCEMENT: Leadership Change

**Cam (CTO/Co-Founder) left the company effective immediately (Oct 31)**

### Background:
- Requested significant ownership increase → Marc declined
- Response: Threatened to "scorch the earth" and email stakeholders
- Already emailed all shareholders
- Access revoked to systems, API keys rotated in production

### Transition Plan:
- **Engineering Leadership:** Alex assumes interim management of engineering team
- **Replacement:** Hiring senior engineer (player-coach model, not CTO)
  - Timeline: ~January 2026 (1 month recruiting + notice period + holidays)
  - Not hiring CTO: Too expensive, difficult to find right fit for startup
  - Fractional CTO option available (John - Rails legend) if needed
- **Contracting:** Cam may help on contract basis (his choice)
- **Options:** Keeps accrued options to date

### Team Impact:
- Marc: "He's a fantastic engineer and a fantastic bloke... misjudged the situation... I lost trust"
- Product dev may slow down but won't dent ambition
- Opportunity for Marcello, Gourav, Charlie to step up with more responsibility
- Gourav to upskill on GCP/infrastructure (training budget available)
- Contractors on standby if needed

**Marc's philosophy:** "Everyone here is aligned on high impact potential. Otherwise we wouldn't be doing this."

---

## Sprint Retro Summary

### What Went Well ✅

**Product Launches:**
1. **Claim Profile shipped** 🎉
   - 1 year in the making
   - First user: Pfizer (Efthymios claimed profile)
   - 1000+ organizations claimed in first day
   - 7057 users confirmed email already
   - Engagement loop: Team members notified when colleague claims org (~90 Pfizer employees got notification)

2. **Team Recommendations** shipped

3. **Chatbot** launched

**Customer Success:**
4. **Pfizer** - Major milestone
   - Efthymios claimed Pfizer profile
   - Ready to send to 2 close suppliers as pilot
   - Engagement vision: Annual business reviews showing org forecasts/recommendations to suppliers
   - Interactive dashboard proposal: 3-4 questions that adjust forecast in real-time
   - "One of top 3 most influential pharma companies globally" (Alex)

5. **SAP Deliverable** completed (Alex)
   - 4-tier supplier maturity segmentation (300 suppliers)
   - Custom requirements: 2023+ emission factors only, limited assurance only
   - Claim profile links for each supplier
   - Foundation for future "maturity module" in platform

**Technical Achievements:**
6. **Performance optimizations** (Charlie + Gourav)
   - 30-40% speed improvement on org/document loading
   - Database CPU optimized (6x reduction while maintaining 50% headroom)
   - Pipeline running more smoothly
   - System responsive almost immediately (vs hours before)

7. **Bug fixes** - 5 major bugs resolved (Charlie)
   - 30-40+ tickets closed this sprint ("load more" button needed!)
   - Dashboard export fix
   - Assurance export improved
   - Initiative cascading fixed
   - Document-org architecture improved

8. **Cost savings** on GCP

9. **Marketing SEO** - Now ranking well for "Scope 3 tools"

**Personal Highlights:**
- Varun: First week complete, shadowed Pfizer call, first assignment (Takeda entity resolution)
- Marcello: "One sprint, one feature" - shipped claim profile despite not knowing Rails when he joined
- Marc: Private equity pitch to 3i (portfolio recommendation model)

### Gaps & Areas for Improvement 🔧

**Technical Issues:**
1. **Document/Org pipeline stability** (Gourav)
   - Status inconsistencies (reverting to created/error)
   - 4000 orgs erroring for same reason (infinite loop: created → errored → created)
   - Need monitoring dashboard in Grafana
   - Need Slack notifications for error spikes

2. **Proactive monitoring** (Alex + Charlie)
   - Currently reactive: Users find bugs → escalate → fix
   - Need: Dev team knows problems before users see them
   - Many issues hanging around undetected until critical mass

3. **Code review delays** (Marcello)
   - PRs open for 5 days
   - Resolving conflicts takes 30min-1hr
   - Slows feature velocity

4. **Document-org resolution issues** (Charlie)
   - Should have made architectural change sooner
   - Need better communication of importance

**Process Issues:**
5. **Team directory outdated** (Varun feedback)
   - Need better onboarding knowledge base
   - Notion content overwhelming for new hires

6. **Celebrating wins** (Marc)
   - Team not shouting about successes enough
   - Enormous progress last 2 weeks not communicated widely

---

## Decisions & Process Changes

### Code Review Process (New):
1. **Small pull requests** preferred (easier/faster to review)
2. **Tag specific reviewer** - nominate who knows code best
   - Frontend/claim profile/forecast → Marcello
   - Backend/jobs/pipeline → Gourav
   - Mix it up for cross-training
3. **24-hour review SLA** - PRs must be reviewed within 1 day
4. **Ping on Slack** if urgent/faster needed
5. **Track metric:** Average code review time (review in 2 weeks)

### Deploy Process (Maintained):
1. **Weekly deploys** - Tuesdays (Charlie now managing)
2. **P0 bugs** - Can deploy immediately if critical
3. **Deploy meeting** - Standing meeting for whole team to observe
4. **Bug bash** - 10min testing session immediately after deploy
   - Catch bugs before customers do
   - Test while feature fresh in mind

### Monitoring Improvements:
1. Grafana dashboard for pipeline errors
2. Slack notifications for error spikes
3. Proactive detection before users affected

---

## Varun's Sprint Highlights (First Week)

**What went well:**
- Pfizer call shadowing - "very interactive, idea sharing discussions"
- 1:1 with Alex - platform walkthrough
- First assignment: Takeda entity resolution (Veronika)
- Learning customer success workflows

**Questions asked:**
- How do you prioritize customer feature requests from multiple customers?
  - Alex: If big enterprise wants it + everyone else would want it → roadmap
  - Timing = strategic question
  - Beauty of enterprise: They tell you what they want

**Observations:**
- "Intense week" - working two jobs (restaurant + DC)
- "Most money I've earned in a long time"
- Excited to start fresh next week

**Feedback given:**
- Need better onboarding knowledge base
- Notion content overwhelming for new team members
- Suggested: Curated guide for each department's work

**No blockers** as of Oct 31

---

## Key Technical Details

### Claim Profile Flow (Marcello):
- Countdown timer (1 min) while job processes
- High-priority queue for claim jobs
- Auto-redirect to "My Organization" if approved
- Modal if failed: "Team reviewing your request"
- Madman CRUD operations for claim management
- Dropdown for multiple claimed orgs in same tree

### SAP Maturity Segmentation (Alex):
**End goal:** 100% org emission factor coverage (2023+, limited assurance)

**Tiers:**
1. ✅ Has 2024 EF + limited assurance → Ready to use
2. ⚠️ Has 2024 EF, no assurance → Request assurance statement
3. ⚠️ Has old EF (2020), stopped reporting categories → Request recent categories
4. ⚠️ Missing categories → Request specific categories
5. ⚠️ Not disclosed → Ask to disclose via claim profile link

**Actions:** All push suppliers to ditchcarbon.com to upload data

### Performance Wins (Gourav):
- Orgs/docs loading 30-40% faster
- Stopped recalculating client orgs when org data unchanged
- Example: Apple has ~2000 client orgs → massive fan-out avoided
- "15-20% of total compute effort saved" (Charlie)

---

## Action Items from Meeting

**Weekend reprocessing (Charlie):**
- [ ] Resolve documents with multiple org claims (cost analysis first)
- [ ] Recalculate for doc-org sync bug
- [ ] Pre-calculate scorecards for all orgs (Marcello request)

**Claim Profile launch (Alex + Marcello):**
- [ ] Fix UI bugs/improvements before announcement
- [ ] Create supplier-facing video (vs buyer video)
- [ ] Send announcement to customers once polished

**Tooling/Access (Marc):**
- [ ] Resolve Claude/Cursor billing (Cam's card revoked)
- [ ] Set up new accounts if billing fails

**Monitoring (Charlie):**
- [ ] Grafana dashboard for pipeline errors
- [ ] Slack error spike notifications

---

## Sprint Stats

**Tickets closed:** 30-40+ (needed "load more" button)
**Major features:** Claim Profile, Team Recommendations, Chatbot
**Performance:** 30-40% speed improvement
**Users:** 7,057 confirmed emails
**Claimed orgs:** 1,000+ in first day

---

## Cultural Moments

**Marc's impact reminder (Pfizer Scope 3):**
> "2.8 million billion kg CO2e = Flying 5 million people London-NYC = Giving everyone in France a T-shirt 10x over. Your personal choices matter, but the work you're doing directly impacts this at enormous scale."

**Marcello's growth:**
> "Didn't know Rails when you joined... accelerated capability at ungodly rate" (Marc)

**Alex on current state:**
> "Platform actually works now. Sprint ago: buffer 2-3x time because something will break. Now: Much smoother, dealt with underlying problems. Hope to bug dev team much less."

**Varun's question style:**
- Asking about prioritization frameworks
- Thinking about agentic code review flows
- Suggesting improvement to knowledge base
- Marc: "Great attitude"

---

## Cross-References

- **Pfizer:** [/docs/customers/pfizer/](/docs/customers/pfizer/)
- **SAP:** Maturity segmentation deliverable (300 suppliers)
- **Coherent:** Q1 2026 data processing upcoming
- **Takeda:** Varun's first assignment (entity resolution)

**Next Sprint:** Unnamed (TBD)
**Next Retro:** 2 weeks from Oct 31 = ~Nov 14, 2025
