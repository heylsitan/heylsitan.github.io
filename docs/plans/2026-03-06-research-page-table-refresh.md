# Research Page Table Refresh Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Replace the narrative research page with a compact two-section table layout for current and completed projects.

**Architecture:** Keep the page content in markdown and use standard HTML table markup inside the page file because the dataset is small and static. Add a narrow, page-scoped style block in the shared custom stylesheet so the tables render cleanly and remain readable on mobile through horizontal scrolling.

**Tech Stack:** Jekyll, Markdown, HTML tables, SCSS

---

### Task 1: Rewrite the research page structure

**Files:**
- Modify: `_pages/research.md`

**Step 1: Define the failing check**

Expected failure before changes:
- The page still contains `项目简介`
- The page still contains `主要成果`
- The page still contains `研究方向`
- The page still contains `合作研究`
- The page does not contain grouped project tables

**Step 2: Run the failing check**

Run: `rg -n "项目简介|主要成果|研究方向|合作研究|<table" _pages/research.md`

Expected:
- Matches for removed sections exist
- No meaningful grouped project table markup exists yet

**Step 3: Write the minimal implementation**

- Replace the free-form markdown blocks with:
  - `在研项目` heading plus one table
  - `已完成项目` heading plus one table
- Keep only the approved columns
- Use `-` for missing roles

**Step 4: Run the content check again**

Run: `rg -n "项目简介|主要成果|研究方向|合作研究|<table" _pages/research.md`

Expected:
- Removed sections no longer match
- Table markup matches

### Task 2: Add page-scoped table styling

**Files:**
- Modify: `_sass/_custom.scss`

**Step 1: Define the failing check**

Expected failure before changes:
- No dedicated research project table styles exist

**Step 2: Run the failing check**

Run: `rg -n "research-projects|projects-table" _sass/_custom.scss`

Expected:
- No matches

**Step 3: Write the minimal implementation**

- Add styles for:
  - wrapper spacing
  - table overflow on small screens
  - table header/background/borders
  - compact text sizing

**Step 4: Run the style check again**

Run: `rg -n "research-projects|projects-table" _sass/_custom.scss`

Expected:
- New page-scoped styles are present

### Task 3: Verify the rendered page

**Files:**
- Verify build output: `_site/research/index.html`

**Step 1: Run the site build**

Run: `bundle exec jekyll build`

Expected:
- Exit code 0
- `_site/research/index.html` generated

**Step 2: Inspect generated output**

Run: `rg -n "在研项目|已完成项目|<table|项目简介|研究方向|合作研究" _site/research/index.html`

Expected:
- Section headings and table markup are present
- Removed sections are absent
