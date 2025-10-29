# Emissions Frameworks & Methodology

**Purpose:** Deep understanding of Scope 3 emissions and calculation frameworks
**Priority:** CRITICAL - Foundation for all customer work
**Last Updated:** October 26, 2025

---

## Table of Contents

1. [GHG Protocol Overview](#ghg-protocol-overview)
2. [Scope Definitions](#scope-definitions)
3. [Scope 3 Categories (15 Categories)](#scope-3-categories-15-categories)
4. [Calculation Methodologies](#calculation-methodologies)
5. [Compliance Frameworks](#compliance-frameworks)
6. [Key Standards & Alignments](#key-standards--alignments)
7. [Regional Variations](#regional-variations)
8. [Common Calculation Mistakes](#common-calculation-mistakes)

---

## GHG Protocol Overview

### What is the GHG Protocol?

The **Greenhouse Gas Protocol** is the international standard for greenhouse gas emissions accounting and reporting. It was developed by the World Resources Institute (WRI) and the World Business Council on Sustainable Development (WBCSD).

**Key Features:**
- Most widely used accounting standard globally
- Aligned with major ESG frameworks
- Provides consistent methodology for emissions measurement
- Enables credible ESG reporting

### GHG Protocol Structure

The protocol defines three scopes for corporate emissions:

```
┌─────────────────────────────────────────────────┐
│         CORPORATE GREENHOUSE GAS EMISSIONS      │
├─────────────────────────────────────────────────┤
│ Scope 1: Direct Emissions                       │
│ Scope 2: Indirect Emissions (Energy)            │
│ Scope 3: All Other Indirect Emissions           │
└─────────────────────────────────────────────────┘
```

---

## Scope Definitions

### Scope 1: Direct Emissions
**Definition:** Greenhouse gases directly produced by the company through controlled sources

**Examples:**
- Company-owned vehicles
- On-site fuel combustion
- Manufacturing processes
- Refrigerant leaks
- Landfill methane from company-owned waste

**Typical % of Total:** 10-15% for most enterprises

**Why it's easy:** Company has direct control and measurement

---

### Scope 2: Indirect Emissions (Energy)
**Definition:** Emissions from purchased electricity, steam, heating, and cooling

**Examples:**
- Purchased electricity for offices
- District heating systems
- Purchased steam for production
- Purchased cooling

**Two Accounting Methods:**
1. **Location-based:** Uses average grid carbon intensity (default)
2. **Market-based:** Uses actual renewable contracts purchased

**Typical % of Total:** 10-25% for most enterprises

**Why it's important:** Easier to reduce through renewable energy contracts

---

### Scope 3: Indirect Emissions (Value Chain)
**Definition:** All other indirect emissions in the value chain not owned/controlled by the company

**Examples:**
- Supplier emissions (purchased goods)
- Employee commuting
- Business travel
- Waste disposal
- Use of sold products
- Transportation by third parties

**Typical % of Total:** 60-95% for most enterprises (sometimes 98%+)

**Why it's hard:**
- Company doesn't control these sources
- Data is scattered across supply chain
- Requires supplier cooperation
- Complex calculation methodologies

**DitchCarbon's Edge:** AI-powered approach that doesn't require supplier surveys

---

## Scope 3 Categories (15 Categories)

These are the 15 official categories defined by GHG Protocol for Scope 3:

### **Upstream Emissions (Purchased Goods/Services)**

#### Category 1: Purchased Goods and Services ⭐ (Usually Largest)
**Definition:** Emissions from extraction, production, and transport of goods/services purchased by company

**Calculation Method:**
```
Emissions = Purchased Amount × Emissions Intensity Factor
```

**Example:**
- Company buys steel → Steel emissions included
- Company buys consulting → Consulting firm emissions included
- Company buys packaging materials → Material production emissions

**Data Needed:**
- Purchase volume (kg, liters, units)
- Type of material/service
- Supplier information (for primary data)

**Key Challenge:** Understanding emissions intensity of different materials
- Steel: ~2.0 kg CO2e per kg
- Aluminum: ~12 kg CO2e per kg
- Plastics: ~5-10 kg CO2e per kg

---

#### Category 2: Capital Goods
**Definition:** Emissions from production of assets purchased (buildings, equipment, vehicles)

**Examples:**
- New manufacturing equipment
- Office building construction
- Company vehicle purchase
- Solar panel installation

**Key Difference from Cat 1:** These are large, one-time purchases, not recurring

**Calculation:**
```
Emissions = Capital Cost × Emissions Intensity by Industry
```

---

#### Category 3: Fuel and Energy-Related Activities
**Definition:** Emissions from production of fuels and electricity not in Scope 1/2

**Examples:**
- Upstream emissions from coal mining (for your fuel)
- Natural gas extraction and distribution
- Electricity transmission losses
- Refinery processing emissions

**Why separate category:** Accounts for "hidden" emissions in energy supply chain

---

#### Category 4: Upstream Transportation and Distribution ⭐ (Often Significant)
**Definition:** Emissions from transporting purchased products/materials to company

**Examples:**
- Freight from supplier to warehouse
- Shipping materials
- Fuel for supplier's distribution
- Transportation intermediaries

**Calculation:**
```
Emissions = Weight × Distance × Transport Mode Factor
```

**Transport Mode Factors (per ton-km):**
- Air freight: ~0.11 kg CO2e
- Truck: ~0.06 kg CO2e
- Ship: ~0.01 kg CO2e
- Rail: ~0.03 kg CO2e

---

### **Downstream Emissions (End of Life)**

#### Category 5: Waste Generated in Operations
**Definition:** Emissions from waste disposal and treatment from operations

**Examples:**
- Office waste to landfill
- Manufacturing scrap disposal
- Recycling process emissions
- Hazardous waste treatment

**Not included:** Waste from sold products (that's Cat 12)

---

#### Category 6: Business Travel ⭐ (Easier to Track)
**Definition:** Emissions from travel by employees on business

**Examples:**
- Flight emissions (employee flights)
- Hotel stays (embodied emissions)
- Car rental emissions
- Train travel

**Why important:** Often trackable through expense systems

**Calculation:**
```
Emissions = Distance × Mode × Occupancy Factor
```

**Typical Flight Emissions:**
- Short haul (< 460 km): ~0.255 kg CO2e per km
- Medium haul: ~0.195 kg CO2e per km
- Long haul: ~0.195 kg CO2e per km

---

#### Category 7: Employee Commuting
**Definition:** Emissions from employee travel to/from work

**Examples:**
- Personal car commuting
- Public transit
- Cycling/walking (zero)
- Work-from-home (zero)

**Calculation:**
```
Emissions = Days Worked × Distance × Mode Factor
```

**Typical Mode Factors:**
- Car (solo): ~0.21 kg CO2e per km
- Car (carpooled): ~0.05 kg CO2e per km
- Public transit: ~0.089 kg CO2e per km
- Cycling/walking: 0

---

#### Category 8: Upstream Leased Assets
**Definition:** Emissions from operation of assets leased by the company (lessee perspective)

**Example:**
- Office lease emissions
- Equipment lease emissions
- Vehicle lease emissions

**Key Point:** Prevents double-counting with lessor (if lessor reports in Scope 1)

---

### **Product Use & End-of-Life**

#### Category 9: Downstream Transportation and Distribution ⭐ (For Retailers)
**Definition:** Emissions from transporting sold products to end customers

**Examples:**
- Last-mile delivery
- Retail distribution center
- E-commerce shipping

**Highly relevant for:** E-commerce, retail, logistics companies

---

#### Category 10: Processing of Sold Products
**Definition:** Emissions from processing sold products after sale (before use)

**Example:**
- Steel sold for further processing
- Intermediate chemicals processed further
- Recycled materials reprocessing

---

#### Category 11: Use of Sold Products ⭐ (For Manufacturers)
**Definition:** Emissions from use of products sold during customer use phase

**Examples:**
- Car fuel consumption over vehicle lifetime
- Appliance electricity use
- Fuel heating products
- Industrial equipment operation

**Calculation:**
```
Emissions = Expected Lifetime Use × Intensity per Use
```

**Key for:** Manufacturing, automotive, appliances, energy products

---

#### Category 12: End-of-Life Treatment of Sold Products
**Definition:** Emissions from disposal/recycling/treatment of sold products after use

**Examples:**
- Landfilling of products
- Recycling process emissions
- Incineration
- Decomposition in landfills

**Often significant for:** Packaging, consumer goods, electronics

---

### **Organizational Boundaries**

#### Category 13: Downstream Leased Assets
**Definition:** Emissions from operation of assets leased out by the company (lessor perspective)

**Example:**
- Real estate company leasing office building
- Equipment leasing company
- Car rental company

---

#### Category 14: Franchises
**Definition:** Emissions from operation of franchises (franchisor perspective)

**Example:**
- Fast food franchise operations
- Hotel chain franchises
- Retail brand franchises

---

#### Category 15: Investments
**Definition:** Emissions from companies in which you have ownership stakes

**Examples:**
- Joint ventures
- Subsidiaries
- Investment portfolio companies

**Note:** Scope 3 accounting allows different approaches (equity share, financial control, etc.)

---

## Calculation Methodologies

### Primary Data (Most Accurate)
**Definition:** Direct measurement from actual operations

**Example:**
```
We measured:
- Company A purchased 100 tons of steel from Supplier X
- Supplier X's actual emissions: 2.2 kg CO2e per kg steel
- Total: 100,000 kg × 2.2 = 220,000 kg CO2e
```

**Advantages:**
- Most accurate
- Can differentiate suppliers
- Shows real impact

**Disadvantages:**
- Requires supplier cooperation
- Time-consuming data collection
- Many suppliers won't provide this

---

### Secondary Data (Efficient - DitchCarbon Approach)
**Definition:** Use industry standard factors and public data

**Example:**
```
We know:
- Company B purchased steel (type unknown, supplier unknown)
- Industry average: 2.0 kg CO2e per kg steel
- Estimated purchase: 100 tons
- Total: 100,000 kg × 2.0 = 200,000 kg CO2e
```

**DitchCarbon Advantage:**
- Uses AI to match companies to better factors
- Doesn't require supplier surveys
- Rapidly scalable
- Still GHG Protocol compliant

**Advantages:**
- Fast to implement
- No supplier cooperation needed
- Cost-effective
- Compliant with GHG Protocol

**Disadvantages:**
- Less precise than primary data
- Averages may not reflect actual supplier

---

### Hybrid Approach (Ideal)
**Definition:** Combine both for accuracy and scalability

**Example:**
```
- Top 20% of suppliers (by spend): Primary data
- Remaining suppliers: Secondary data with confidence ranges
- New suppliers: Secondary data until relationship matures
```

---

## Compliance Frameworks

### CSRD (Corporate Sustainability Reporting Directive) - EU ⭐
**Requirement:** All large EU companies must report Scope 1, 2, and 3
**Timeline:**
- Large companies (250+ employees): Report by 2025 (for 2024 data)
- Small/medium enterprises: Report by 2026 (for 2025 data)

**Key Requirement:** Mandatory third-party assurance

---

### ISSB (International Sustainability Standards Board)
**Requirement:** Global ESG reporting standard
**Scope 3:** Must report if material to business

---

### SBTi (Science Based Targets initiative)
**Requirement:** Align carbon reduction targets to climate science
**Scope 3:** Must include Scope 3 in targets (with some exceptions)

---

### TCFD (Task Force on Climate-related Financial Disclosures)
**Requirement:** Report climate-related financial risks
**Scope 3:** Encouraged reporting

---

## Key Standards & Alignments

### GHG Protocol Scopes
- Scope 1: Direct emissions
- Scope 2: Purchased energy
- Scope 3: Everything else in value chain

### ISO 14064 Series
- International standard for GHG quantification and reporting
- Aligned with GHG Protocol
- Required for certain certifications

### Carbon Trust Standard
- Third-party verified emissions reporting
- More rigorous than GHG Protocol alone
- Used by leading companies

---

## Regional Variations

### EU (CSRD)
- Mandatory Scope 3 reporting
- Third-party assurance required
- Must use latest GHG Protocol Corporate Standard
- Double materiality assessment

### UK
- Similar to CSRD but slightly different timeline
- Mandatory for large companies
- Assurance requirements differ

### US (SEC - Proposed)
- Scope 1 and 2 required
- Scope 3 required if material
- Assurance requirements TBD
- Currently in rule-making process

### Asia-Pacific
- Varies by country
- Singapore and Hong Kong leading
- China has regional standards
- Japan has voluntary frameworks

---

## Common Calculation Mistakes

### ❌ Mistake 1: Double Counting
**Problem:** Counting emissions in both Scope 2 and Scope 3

**Example:**
```
WRONG:
- Scope 2: Purchased electricity (50 tCO2e)
- Scope 3 Cat 3: Upstream of purchased electricity (50 tCO2e)
= 100 tCO2e total
```

**Correct Approach:** Only count once in appropriate scope

---

### ❌ Mistake 2: Including Scope 1 in Scope 3
**Problem:** Counting company-owned emissions as indirect

**Example:**
```
WRONG:
- Company car fuel (own vehicle) = Scope 3
RIGHT:
- Company car fuel (own vehicle) = Scope 1
- Company car fuel (rented vehicle) = Scope 3
```

---

### ❌ Mistake 3: Not Accounting for Land Use Changes
**Problem:** Ignoring carbon sequestration from forest products

**Example:**
```
If purchasing sustainably sourced paper, should consider:
- Production emissions: +X
- Land sequestration credit: -Y
- Net: X - Y
```

---

### ❌ Mistake 4: Using Wrong Emission Factor
**Problem:** Using outdated or incorrect carbon intensity

**Solution:** Use latest GHG Protocol approved databases:
- DEFRA/GHGP databases (UK)
- EPA emission factors (US)
- Local grid carbon intensity data

---

## Learning Resources

### Key Documents to Study
- GHG Protocol Corporate Accounting Standard
- Scope 3 Guidance Document
- Calculation Tools Reference

### DitchCarbon Resources
- [Company Mission & Value Prop](/docs/company/DITCHCARBON-COMPANY-PROFILE.md)
- [Blog Summaries](/docs/company/DITCHCARBON-BLOG-SUMMARIES.md)
- Platform API documentation (in Section 2)

---

## Practice Questions

1. A company buys steel from a supplier. Which Scope is this?
2. An employee takes a flight for business. Which Scope 3 category?
3. What's the difference between primary and secondary data?
4. Name 3 of the 15 Scope 3 categories.
5. Why is Scope 3 typically larger than Scope 1 + 2 combined?

---

**Next Section:** [DitchCarbon Platform Guide](./02-PLATFORM-GUIDE.md)

**Last Updated:** October 26, 2025
