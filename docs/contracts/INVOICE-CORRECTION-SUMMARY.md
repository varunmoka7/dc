# Invoice Correction Summary - October 2025

## What Changed

### Original Calculation (INCORRECT)
**Method:** Calendar days
- Total calendar days in October: 31
- Days worked: 5 (Oct 27-31)
- Pro rata: 5/31 = 16.13%
- Amount: €3,333.33 × 16.13% = **€537.83** ❌

### Corrected Calculation (CORRECT)
**Method:** Working days (per Alex Rudnicki - Oct 31, 2025)
- Total working days in October: 23
- Days worked: 5 (Oct 27-31)
- Pro rata: 5/23 = 21.74%
- Amount: €3,333.33 × 21.74% = **€724.65** ✅

### Difference
- **Increase:** +€186.82
- **Percentage difference:** 34.8% increase

---

## Why the Change?

**Email from Alex Rudnicki (Oct 31, 2025, 5:20 PM):**
> "I would calculate pro rata by working days. There are 23 working days in October, and you worked 5, so 5/23 = 21.74% of your monthly (€40k/12 = €3333.33), which results in €724.65.
>
> Does that make sense?"

**Key Insight:** DitchCarbon calculates pro rata based on **working days** (excluding weekends), NOT calendar days.

---

## Standard for All Future Invoices

### Pro Rata Calculation Formula
```
Pro Rata Amount = Monthly Rate × (Days Worked / Total Working Days in Month)
```

### Working Days Definition
- **Include:** Monday through Friday
- **Exclude:** Weekends (Saturday, Sunday)
- **Exclude:** Public holidays (when applicable)

### Monthly Breakdown (2025 Reference)
| Month | Total Working Days |
|-------|-------------------|
| January | 23 |
| February | 20 |
| March | 21 |
| April | 22 |
| May | 21 |
| June | 21 |
| July | 23 |
| August | 21 |
| September | 22 |
| October | **23** |
| November | 20 |
| December | 22 |

**Note:** Adjust for public holidays as applicable.

---

## Files Updated

1. **Alex's interaction log** (`docs/work/team-interactions/alex/ALEX-RUDNICKI-interactions.md`)
   - Added email entry with calculation methodology
   - Documented working days standard

2. **Invoice guide** (`docs/contracts/INVOICE-DETAILS-GUIDE.md`)
   - Corrected calculation examples
   - Added warning about incorrect calendar days method
   - Updated all amount references

3. **October invoice** (`docs/contracts/invoices/VM-2025-001-OCTOBER-INVOICE.md`)
   - Created with correct €724.65 amount
   - Includes calculation breakdown in notes
   - References Alex's confirmation date

---

## Action Required

### For October Invoice
- [ ] Review VM-2025-001-OCTOBER-INVOICE.md
- [ ] Add your email address
- [ ] Add VAT number (if applicable)
- [ ] Add bank account details
- [ ] Convert to PDF or submit as-is
- [ ] Send to finance@ditchcarbon.com

### For Future Invoices
- [ ] Always use working days methodology
- [ ] Reference monthly working days table above
- [ ] Include calculation breakdown in invoice notes
- [ ] Submit last week of each month

---

## Calculation Verification

**October 2025 Working Days Breakdown:**
```
Mon-Fri dates in October 2025:
Week 1: Oct 1-3 (3 days) - Wed, Thu, Fri
Week 2: Oct 6-10 (5 days) - Mon-Fri
Week 3: Oct 13-17 (5 days) - Mon-Fri
Week 4: Oct 20-24 (5 days) - Mon-Fri
Week 5: Oct 27-31 (5 days) - Mon-Fri
---
Total: 23 working days ✓

Your work period (Oct 27-31):
Mon Oct 27, Tue Oct 28, Wed Oct 29, Thu Oct 30, Fri Oct 31
= 5 working days ✓
```

**Pro rata calculation verification:**
```
5 ÷ 23 = 0.2174 (21.74%) ✓
€3,333.33 × 0.2174 = €724.65 ✓
```

---

## Summary

✅ **Correct invoice created:** VM-2025-001-OCTOBER-INVOICE.md
✅ **Correct amount:** €724.65
✅ **Methodology documented:** Working days standard
✅ **System updated:** All guides and references corrected
✅ **Ready to submit:** Add personal details and send to finance@ditchcarbon.com

**Next Steps:** Review invoice, add your details, and submit by end of day October 31 for payment on last Friday of month.
