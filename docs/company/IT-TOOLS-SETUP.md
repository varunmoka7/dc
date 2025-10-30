# DitchCarbon IT Tools Setup & Documentation

**Date Created:** 25 October 2025
**Status:** New hire onboarding (Varun Moka)
**Next Review:** After first week of tool usage

---

## Overview

DitchCarbon uses a modern SaaS stack for operations, customer management, and team collaboration. All tools use Google SSO (Gmail login) for unified authentication.

---

## 1. Google Suite (GSuite)

### Purpose
Core productivity and authentication backbone for all DitchCarbon tools.

### Setup
- **Email Address:** varun@ditchcarbon.com
- **Authentication:** Gmail login (Google SSO)
- **Calendar:** gcal.google.com
  - Purpose: Team scheduling, meeting visibility
  - Requirement: Update working hours visibility (consistent but flexible)

### Sub-Tools
- **Gmail** - Company email
- **Google Drive** - File storage and collaboration
  - Access Level: Product/Ops folder + Sales & Marketing folder
  - Note: Additional folders may be added as needed
- **Google Docs/Sheets** - Document collaboration
- **Google Calendar** - Meeting scheduling and availability

### API Integration Potential
- **Calendar API** - Sync meetings to external systems
- **Drive API** - Programmatic file access
- **Gmail API** - Email automation or history pulling

---

## 2. Notion

### Purpose
Knowledge management, meeting notes, customer tracking, and deliverable board management.

### Access
- **URL:** notion.com (via Google SSO)
- **Login:** Gmail/DC email

### Key Workspaces
1. **Meeting Notes** - Team meetings, 1:1 notes, standup summaries
2. **Customer Boards** - Customer information and status tracking
3. **Deliverable Boards** - Project and deliverable tracking
4. **Company Mission** - Core company documentation
5. **IT Policies** - Company policies and procedures
6. **Team Directory** - Staff and role information

### Usage Patterns
- Structured information capture
- Customer lifecycle tracking
- Project management
- Knowledge base for new hires
- Meeting notes and action items

### API Integration Potential
- **Notion API** - Pull customer data, meeting notes, deliverable status
- **Database Queries** - Real-time access to customer information
- **Automation** - Sync deliverables with external systems
- **Reporting** - Generate metrics from Notion boards

**API Endpoint:** api.notion.com
**Authentication:** Bearer token (can be generated in Notion settings)

---

## 3. HubSpot (CRM)

### Purpose
Customer relationship management, sales pipeline tracking, and customer communication logging.

### Access
- **URL:** hubspot.com (via Google SSO)
- **Login:** Gmail/DC email

### Key Features
- **Deals Pipeline** - Sales opportunities and status
- **Contacts** - Customer and prospect information
- **Email Logging** - Communication history with customers
- **Tasks** - Customer follow-ups and action items
- **Reports** - Sales and customer metrics

### Primary Users
- Sales team (deal tracking, email logging)
- Customer success team (customer communication)
- Leadership (sales metrics and reporting)

### Your Access Level
- **Read Access:** Customer and deal information
- **Log Access:** Email communication with customers (if needed)
- **Note:** Sales team manages deals; you manage customer relationships post-sale

### API Integration Potential
- **HubSpot API** - Extensive integration options
- **Contacts API** - Pull customer data
- **Deals API** - Track customer projects/outcomes
- **Tickets API** - Customer service issues
- **Timeline API** - Communication history
- **Custom Objects** - Scope 3 specific tracking

**API Endpoint:** api.hubapi.com
**Authentication:** Private app token or OAuth2
**Rate Limits:** Depends on HubSpot tier

**Use Cases:**
- Auto-create customer records from platform signups
- Log customer support interactions
- Track deliverable completion status
- Sync customer emissions data to CRM
- Automated customer segmentation

---

## 4. Slack

### Purpose
Real-time team communication, project coordination, partner API communication.

### Setup
- **Download:** Slack app (desktop + mobile)
- **Workspace:** ditchcarbon.slack.com
- **Authentication:** Google SSO

### Channel Structure
- **#general** - Company announcements
- **#random** - Off-topic chat
- **#engineering** - Dev team coordination
- **#customer-success** - Customer-facing team
- **#sales** - Sales team communication
- **#operations** - Operations and processes
- **#api-partners** - External API partner communication
- **#standups** - Daily standup summaries
- **DMs** - Direct team communication

### Key Features
- Real-time messaging
- File sharing
- Integrations with other tools
- Thread conversations
- Notification management

### API Integration Potential
- **Slack API** - Bot automation and notifications
- **Incoming Webhooks** - Send notifications from external systems
- **Events API** - Trigger actions on Slack events
- **Message API** - Post customer updates or alerts

**API Endpoint:** slack.com/api
**Authentication:** Bot tokens or OAuth2
**Common Integrations:** HubSpot, Notion, GitHub, custom alerts

**Use Cases:**
- Daily standup automation
- Customer support notifications
- Deliverable completion alerts
- API partner updates
- Customer communications summaries

---

## 5. Intercom

### Purpose
Customer service request tracking and communication via email and website messaging.

### Access
- **URL:** app.intercom.com (via Google SSO)
- **Login:** Gmail/DC email

### Key Features
- **Inbox** - Incoming customer messages and emails
- **Conversations** - Email thread management
- **Messenger** - Website chat widget
- **Knowledge Base** - Customer self-service
- **Insights** - Customer interaction analytics

### Communication Channels
- **Email** - Customer support inquiries
- **Website Messenger** - Live chat and messages
- **Bot Automation** - Automated responses

### Your Role
- Respond to customer service requests
- Log customer questions and solutions
- Escalate complex issues
- Provide Scope 3 platform support

### API Integration Potential
- **Intercom API** - Full customer communication data
- **Conversations API** - Query and manage conversations
- **Contacts API** - Customer data access
- **Webhooks** - Route conversations to external systems
- **Custom Bots** - Automate customer support

**API Endpoint:** api.intercom.io
**Authentication:** Bearer token
**Rate Limits:** 10,000 requests per hour (Pro plan+)

**Use Cases:**
- Auto-ticket creation for common issues
- Sentiment analysis of customer messages
- Escalation alerts
- Customer communication logging to CRM
- Self-service knowledge base integration

---

## 6. Xero

### Purpose
Financial management, expense tracking, and reimbursement processing.

### Access
- **URL:** xero.com (via Google SSO)
- **Login:** Gmail/DC email

### Key Features
- **Expense Management** - Personal expense submission
- **Invoicing** - If freelance invoicing needed
- **Bank Reconciliation** - Financial tracking
- **Reports** - Financial metrics

### Your Usage
- **Expense Submission:** MacBook Air purchase, ChatGPT subscriptions, travel costs
- **Process:**
  1. Purchase item with personal funds
  2. Submit receipt to Xero
  3. Follow expense runbook
  4. Approval and reimbursement

### Pre-Approved Expenses
- Personal ChatGPT or AI subscription
- Travel expenses (with prior approval)
- Workspace costs (with prior approval)

### API Integration Potential
- **Xero API** - Limited for employees (mainly accounting integration)
- **Expense Data** - Export for analysis
- **Reporting** - Financial metrics

---

## Tool Integration Architecture

```
┌─────────────────────────────────────────────────────────────┐
│                    Google Suite (SSO Hub)                   │
│                   (Email, Drive, Calendar)                  │
└──────────────────────┬──────────────────────────────────────┘
                       │
        ┌──────────────┼──────────────┐
        │              │              │
    ┌───▼───┐      ┌──▼──┐      ┌──▼───┐
    │ Notion│      │Slack│      │ Xero │
    │(Notes)│      │(Comm)│     │(Finance)
    └───┬───┘      └──┬──┘      └──┬───┘
        │             │            │
    ┌───▼──────────────▼────────────▼──┐
    │   HubSpot (CRM Hub)              │
    │   (Customers, Deals, Email)      │
    └───┬────────────────────────────────┘
        │
    ┌───▼────────┐
    │ Intercom   │
    │ (Support)  │
    └────────────┘
```

---

## API Opportunity Assessment

### High Priority Integrations
1. **HubSpot → Notion** - Sync customer data to deliverable boards
2. **HubSpot → Slack** - Customer update notifications
3. **Intercom → HubSpot** - Auto-create tickets/contacts
4. **Slack → Notion** - Archive important decisions

### Medium Priority
1. **Intercom → Slack** - Customer support alerts
2. **Calendar → Slack** - Meeting reminders
3. **Notion → HubSpot** - Deliverable status sync

### Lower Priority (Currently)
1. **Xero integrations** - Finance-specific, managed by leadership
2. **Drive → Slack** - File sharing automation

### Custom Integration Ideas for Scope 3 Role
- **Customer Emissions Tracking** - Pull from DitchCarbon platform to HubSpot
- **Deliverable Automation** - Auto-generate reports from customer data
- **Customer Success Dashboard** - Notion dashboard pulling HubSpot data
- **Scope 3 Metrics** - Track customer reduction achievements across tools

---

## Security & Best Practices

### Authentication
- Use Google SSO for all tools (single sign-on)
- Never share login credentials
- Enable two-factor authentication where available
- Use strong, unique passwords for backup accounts

### Data Protection
- Mark sensitive customer data appropriately
- Follow company data protection policies
- Don't download customer data unnecessarily
- Log out on shared devices

### API Keys (If Accessing via API)
- Never commit API keys to version control
- Store in environment variables
- Rotate keys regularly
- Use bearer tokens where possible
- Monitor API usage for anomalies

---

## Getting Started Checklist

- [ ] Set up GSuite account and email
- [ ] Update Google Calendar with working hours
- [ ] Access Notion and review Company Mission
- [ ] Review IT policies in Notion
- [ ] Add self to team directory
- [ ] Download and configure Slack app
- [ ] Access HubSpot and review customer data
- [ ] Access Intercom and review support workflows
- [ ] Access Xero and understand expense process
- [ ] Join key Slack channels
- [ ] Schedule 1:1 with Alex to discuss workflow

---

## API Documentation Resources

| Tool | API Docs | Sandbox | Rate Limits |
|------|----------|---------|-------------|
| Notion | https://developers.notion.com | Yes | 3 req/sec |
| HubSpot | https://developers.hubspot.com | Yes | Tier-dependent |
| Slack | https://api.slack.com | Yes | 1 req/sec + burst |
| Intercom | https://developers.intercom.com | Yes | 10k/hour |
| Google APIs | https://developers.google.com | Yes | Quota-based |

---

## Next Steps

1. **Complete IT Setup** - All tools by Monday Oct 27
2. **Familiarize with Workflows** - First week
3. **Assess Integration Needs** - After 2 weeks (you'll understand use cases better)
4. **Design Custom Integrations** - If needed, propose to Alex

**For API Integration Projects:** Discuss with Alex or Marc before implementing - may require IT approval and security review.

---

**Last Updated:** 25 October 2025
**Maintained By:** Internal IT/Operations
**Questions?** Ask in #operations Slack or email IT support
