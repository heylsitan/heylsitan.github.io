# Research Page Markdown Simplification Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Convert the research page back to plain markdown tables so the content is easy to edit manually while reflecting the corrected project information.

**Architecture:** Keep all research-project content inside `_pages/research.md` using standard markdown headings and tables. Remove the custom SCSS rules that only existed to support the previous HTML wrapper and responsive table container.

**Tech Stack:** Jekyll, Markdown, SCSS

---

### Task 1: Prove the current page is too HTML-heavy

**Files:**
- Modify: `_pages/research.md`

**Step 1: Write the failing check**

Expected failure before changes:
- The page still contains custom HTML wrappers
- The page still contains outdated project information

**Step 2: Run the failing check**

Run: `rg -n "research-projects|projects-table|半干旱地区显著增温|青藏高原水循环变化" _pages/research.md`

Expected:
- Matches exist for wrapper classes and outdated project names

**Step 3: Write the minimal implementation**

- Replace the HTML wrapper with markdown headings and markdown tables
- Insert the corrected in-progress and completed project rows
- Keep only the approved columns

**Step 4: Run the source check again**

Run: `rg -n "research-projects|projects-table|全球变暖背景下潜热释放加热|20世纪50年代以来中国北方湖泊变化" _pages/research.md`

Expected:
- Wrapper classes no longer match
- New project names match

### Task 2: Remove obsolete page-scoped styling

**Files:**
- Modify: `_sass/_custom.scss`

**Step 1: Write the failing check**

Expected failure before changes:
- The stylesheet still contains `.research-projects` and `.projects-table`

**Step 2: Run the failing check**

Run: `rg -n "research-projects|projects-table" _sass/_custom.scss`

Expected:
- Matches exist

**Step 3: Write the minimal implementation**

- Remove the page-specific research project table styles
- Keep unrelated global styles unchanged

**Step 4: Run the style check again**

Run: `rg -n "research-projects|projects-table" _sass/_custom.scss`

Expected:
- No matches

### Task 3: Verify the rendered page

**Files:**
- Verify build output: `_site/research/index.html`

**Step 1: Build the site**

Run: `RUBYOPT='-r./fix_tainted.rb' bundle exec jekyll build`

Expected:
- Exit code 0

**Step 2: Inspect generated output**

Run: `rg -n "在研项目|已完成项目|全球变暖背景下潜热释放加热|20世纪50年代以来中国北方湖泊变化|research-projects|projects-table" _site/research/index.html`

Expected:
- Correct headings and project names are present
- Old wrapper classes are absent
