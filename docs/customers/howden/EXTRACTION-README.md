# Howden 2023 Sustainability Report - Extraction Documentation

## Overview

This directory contains the extracted and segmented content from the Howden 2023 Sustainability Report PDF.

**Extraction Date:** November 1, 2025
**Source PDF:** `howden 2023-sustainability-report.pdf` (48 pages, 12 MB)
**Extraction Method:** PyMuPDF text extraction + custom segmentation
**Output Directory:** `2023_extracted/`

---

## Directory Structure

```
/docs/customers/howden/
├── howden 2023-sustainability-report.pdf           # Original 2023 PDF (48 pages)
├── howden 2023-sustainability-report_extracted.md  # Full 2023 extracted text (single file)
├── howden sustainabilty report 2024.pdf            # Original 2024 PDF (45 pages)
├── howden sustainabilty report 2024_extracted.md   # Full 2024 extracted text (single file)
├── EXTRACTION-README.md                            # This file
├── 2023_extracted/                                 # 2023 Segmented output
│   ├── 00-index.md                                 # Table of contents
│   ├── 01-page-1.md                                # Cover page
│   ├── 02-page-2.md                                # About Howden
│   └── ... (48 pages total)
└── 2024_extracted/                                 # 2024 Segmented output
    ├── 00-index.md                                 # Table of contents
    ├── 01-page-1.md                                # Cover page
    ├── 02-page-2.md                                # About Howden
    └── ... (45 pages total)
```

---

## Files Generated

### 2023 Report
| File Type | Count | Description |
|-----------|-------|-------------|
| **Index** | 1 | `00-index.md` - Complete table of contents with links |
| **Page Files** | 48 | Individual markdown files for each PDF page |
| **Total** | 49 | All files in `2023_extracted/` directory |

### 2024 Report
| File Type | Count | Description |
|-----------|-------|-------------|
| **Index** | 1 | `00-index.md` - Complete table of contents with links |
| **Page Files** | 45 | Individual markdown files for each PDF page |
| **Total** | 46 | All files in `2024_extracted/` directory |

---

## Key Content by Page Range

### 2023 Report (48 pages)
| Pages | Content Topic |
|-------|---------------|
| 1-3 | Cover, About Howden, Table of Contents |
| 4-6 | CEO Message, Approach to Sustainability |
| 7-16 | Climate Risk & Resilience, Energy Transition, COP28 |
| 17-22 | Environmental Impact, Carbon Offsets, Waste Management |
| 23-31 | People & Culture, Diversity & Inclusion, Wellbeing |
| 32-35 | Governance, Human Rights, Supply Chain |
| 36-45 | Giving Back, Volunteering, Howden Foundation |
| 46-48 | Appendix, Energy Efficiency Actions, Contact Info |

**Key Sustainability Metrics (2023):**
- **Page 19:** Greenhouse gas emissions (Scope 1, 2, 3)
- **Page 20:** Carbon offset projects
- **Page 21:** Waste management and recycling data
- **Page 30:** Gender pay gap reporting
- **Page 47:** Energy efficiency actions

### 2024 Report (45 pages)
| Pages | Content Topic |
|-------|---------------|
| 1-3 | Cover, About Howden, Table of Contents |
| 4-5 | CEO Message, Approach to Sustainability |
| 6-17 | De-risking Energy Transition, Climate Solutions |
| 18-33 | Empowering People, Culture, Diversity & Inclusion |
| 34-40 | Being a Responsible Business, Governance, Supply Chain |
| 41-45 | Appendix, Emissions Data, ESG Frameworks, Contact Info |

**Key Sustainability Metrics (2024):**
- **Page 35:** Greenhouse gas emissions and reduction targets
- **Page 41:** Emissions table (Appendix)
- **Page 42:** ESG reporting frameworks

---

## How to Use This Extraction

### 1. Quick Navigation
Start with `2023_extracted/00-index.md` to see the full table of contents with clickable links to each page.

### 2. Search for Specific Topics
Use grep to search across all pages:
```bash
grep -i "scope 3" 2023_extracted/*.md
grep -i "emissions" 2023_extracted/*.md
grep -i "renewable energy" 2023_extracted/*.md
```

### 3. Access Individual Pages
Each page is a standalone markdown file:
```bash
cat 2023_extracted/19-page-19.md  # Emissions data
cat 2023_extracted/20-page-20.md  # Carbon offsets
```

### 4. Combine Specific Sections
Create custom reports by combining relevant pages:
```bash
cat 2023_extracted/{19..22}-*.md > emissions_section.md
```

---

## Extraction Scripts Used

### Stage 1: PDF to Markdown Extraction
**Script:** `/Users/varunmoka/extract_pdf_simple.py`

```bash
python3 /Users/varunmoka/extract_pdf_simple.py \
  "howden 2023-sustainability-report.pdf"
```

**Features:**
- Fast text extraction using PyMuPDF
- Preserves document structure and formatting
- No OCR required (text-based PDF)
- Output: Single markdown file with page separators

### Stage 2: Segmentation into Separate Files
**Script:** `/Users/varunmoka/segment_markdown.py`

```bash
python3 /Users/varunmoka/segment_markdown.py \
  --input "howden 2023-sustainability-report_extracted.md" \
  --output "2023_extracted" \
  --header-level 1 \
  --source-pdf "howden 2023-sustainability-report.pdf"
```

**Features:**
- Splits markdown by header level (level 1 = pages)
- Auto-generates index file with table of contents
- Numbered file naming (01-, 02-, etc.)
- Preserves all content and formatting

---

## Re-running the Extraction

If you need to re-extract or process the 2024 report:

### Extract 2024 Report
```bash
cd /Users/varunmoka/dc/docs/customers/howden

# Step 1: Extract PDF to markdown
python3 /Users/varunmoka/extract_pdf_simple.py \
  "howden sustainabilty report 2024.pdf"

# Step 2: Segment into separate files
python3 /Users/varunmoka/segment_markdown.py \
  --input "howden sustainabilty report 2024_extracted.md" \
  --output "2024_extracted" \
  --header-level 1 \
  --source-pdf "howden sustainabilty report 2024.pdf"
```

### Modify Segmentation Level
If you want to segment by content sections instead of pages:
1. Edit the extracted markdown to add section headers
2. Re-run segmentation with appropriate header level

---

## Verification Checklist

✅ **All pages extracted:** 48 pages → 48 markdown files
✅ **Index file created:** `00-index.md` with full TOC
✅ **Content preserved:** Text, structure, and formatting intact
✅ **Tables preserved:** Pipe-delimited markdown tables maintained
✅ **Searchable:** All content searchable via grep/find
✅ **File naming:** Sequential numbering (01- through 48-)

---

## Use Cases

### For Tim Rainbow (Sustainability Director)
- Quick reference to emissions data (Page 19)
- Carbon offset projects (Page 20)
- Scope 3 supplier engagement strategy content

### For Customer Success Team
- Extract sustainability metrics for reporting
- Reference specific initiatives (energy transition, urban resilience)
- Prepare materials for customer presentations

### For Research & Analysis
- Searchable content across all 48 pages
- Easy comparison between 2023 and 2024 reports (once 2024 is extracted)
- Data extraction for benchmarking

---

## Technical Details

**Extraction Tool:** PyMuPDF (fitz) 1.26.5
**Text Encoding:** UTF-8
**Total Characters:** 85,948
**Total Lines:** 2,492
**Processing Time:** ~5 seconds (extraction) + ~1 second (segmentation)

---

## Next Steps

1. ✅ Extract 2023 report (completed)
2. ✅ Extract 2024 report (completed)
3. ⏳ Compare metrics between years
4. ⏳ Create summary document with key findings
5. ⏳ Share with Tim Rainbow for Nov 24 deadline preparation

## Comparing 2023 vs 2024 Reports

### Quick Comparison Commands

**Compare emissions sections:**
```bash
# 2023 emissions
cat 2023_extracted/19-page-19.md

# 2024 emissions
cat 2024_extracted/35-page-35.md 2024_extracted/41-page-41.md
```

**Search for specific metrics across both years:**
```bash
grep -i "scope 3" 2023_extracted/*.md 2024_extracted/*.md
grep -i "carbon offset" 2023_extracted/*.md 2024_extracted/*.md
grep -i "renewable energy" 2023_extracted/*.md 2024_extracted/*.md
```

**Key Differences:**
- **2024 report is 3 pages shorter** (45 vs 48 pages)
- **Emissions data location changed:** Page 19 (2023) → Page 35 + Appendix (2024)
- **2024 includes ESG frameworks** section in appendix
- **Structure reorganized:** More focus on "De-risking Energy Transition" theme in 2024

---

## Support

For questions or issues with the extraction:
- **Scripts Location:** `/Users/varunmoka/`
- **Extraction Script:** `extract_pdf_simple.py`
- **Segmentation Script:** `segment_markdown.py`
- **Documentation:** This file (`EXTRACTION-README.md`)

**Last Updated:** November 1, 2025
