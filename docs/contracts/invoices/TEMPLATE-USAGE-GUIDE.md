# Invoice Template Usage Guide

## Quick Reference

**Template Location:** `/Users/varunmoka/dc/docs/contracts/invoices/TEMPLATE-invoice.html`

**For Each Month:** Copy template → Replace placeholders → Save as PDF

---

## Monthly Invoice Creation Process

### Step 1: Copy Template

```bash
cd /Users/varunmoka/dc/docs/contracts/invoices/
cp TEMPLATE-invoice.html VM-DC-2025-002.html
```

**Naming Convention:** `VM-DC-YYYY-NNN.html`
- VM = Your initials
- DC = DitchCarbon
- YYYY = Year
- NNN = Sequential number (001, 002, 003...)

### Step 2: Replace Placeholders

Open the new file and replace these placeholders:

| Placeholder | Example | Notes |
|-------------|---------|-------|
| `[INVOICE_NUMBER]` | VM-DC-2025-002 | Sequential numbering |
| `[INVOICE_DATE]` | 30 November 2025 | Last day of month |
| `[DUE_DATE]` | 7 December 2025 | Invoice date + 7 days |
| `[PERIOD_DATES]` | 1-30 November 2025 | Full month dates |
| `[PERIOD_DESCRIPTION]` | Full month of engagement | Or describe work |
| `[HOURS]` | 160 | Full month = ~160 hours (40/week × 4 weeks) |
| `[AMOUNT]` | 3,076.80 | Full month = €3,076.80 (160 hrs × €19.23) |

**Important:** Replace `[AMOUNT]` in **three places:**
1. Table amount column
2. Subtotal line
3. Total line

### Step 3: Calculate Monthly Amount

**Full Month Calculation:**
```
Monthly hours: 40 hrs/week × 4.33 weeks = 173.2 hours (use 173 or 174)
OR
Working days: ~22 days × 8 hrs = 176 hours

Amount: [hours] × €19.23 = €[total]
```

**Partial Month (like first invoice):**
```
Days worked: X days
Hours: X × 8 = [hours]
Amount: [hours] × €19.23 = €[total]
```

### Step 4: Save as PDF

1. Open HTML file in browser
2. Press **Cmd+P** (Print)
3. Select **"Save as PDF"**
4. Save as: `VM-DC-2025-002.pdf`
5. Keep both HTML and PDF versions

### Step 5: Send to Finance

**Email to:** finance@ditchcarbon.com

**Subject:** Invoice VM-DC-2025-002 - Varun Moka - November 2025

**Body:**
```
Hi,

Please find attached my invoice for November 2025.

Invoice Details:
- Invoice Number: VM-DC-2025-002
- Period: 1-30 November 2025
- Amount: €3,076.80
- Due Date: 7 December 2025

Payment to be made via bank transfer to the account details on the invoice.

Best regards,
Varun Moka
```

**Attach:** PDF file

---

## Invoice Number Reference

| Month | Invoice Number | Period | Amount |
|-------|---------------|--------|---------|
| Oct 2025 | VM-DC-2025-001 | 27-31 Oct (5 days) | €769.20 |
| Nov 2025 | VM-DC-2025-002 | 1-30 Nov (full month) | €3,076.80* |
| Dec 2025 | VM-DC-2025-003 | 1-31 Dec (full month) | €3,076.80* |
| Jan 2026 | VM-DC-2026-001 | 1-31 Jan (full month) | €3,076.80* |

*Approximate - adjust based on actual hours/days worked

---

## Important Notes

### VAT Status
- **Keep at 0%** - Reverse charge applies (Germany → UK B2B services)
- Contract states "excluding any applicable VAT"
- You handle German taxes separately

### Payment Terms
- **7 days from invoice date** per contract Section 4
- Always calculate due date and include in invoice

### Tax & Visa Documentation
- **Keep all invoices** (both HTML and PDF)
- Track in spreadsheet for annual tax filing
- Needed for German Finanzamt
- Required for visa renewal documentation

### Bank Details
- Already populated in template (N26 Bank SE)
- Verify IBAN hasn't changed before sending
- Keep updated if you change banks

---

## Pro Tips

### Timing
- **Send invoice:** Last day or first day of month
- **Due date:** Always 7 days after invoice date
- **Follow up:** If not paid by due date +2 days

### Organization
```
/docs/contracts/invoices/
├── TEMPLATE-invoice.html (master template)
├── TEMPLATE-USAGE-GUIDE.md (this file)
├── 2025/
│   ├── VM-DC-2025-001.html
│   ├── VM-DC-2025-001.pdf
│   ├── VM-DC-2025-002.html
│   ├── VM-DC-2025-002.pdf
│   └── ...
└── invoice-tracker-2025.xlsx (create this)
```

### Invoice Tracking Spreadsheet
Create a simple spreadsheet to track:
- Invoice number
- Date issued
- Period covered
- Amount
- Due date
- Date paid
- Status

---

## Troubleshooting

**Q: What if I work partial hours in a month?**
A: Calculate actual hours worked (days × 8) and use that. Update description to note partial month.

**Q: Do I include holidays?**
A: No, only bill for actual working days. If you take vacation, don't include those days.

**Q: What if the rate changes?**
A: Update the €19.23 rate in template. Check contract for any rate increase clauses.

**Q: Currency fluctuations?**
A: Always invoice in EUR (per contract note). Rate is fixed at €19.23/hour regardless of GBP changes.

---

**Created:** 31 October 2025
**Last Updated:** 31 October 2025
**Version:** 1.0
