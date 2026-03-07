# Honors Page Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Add a dedicated honors page to the site navigation with a simple chronological list of honors and awards.

**Architecture:** Create a single markdown page under `_pages` and register it in `_data/navigation.yml`. Use one small CSS block in the shared stylesheet to align the date column and remove list bullets while keeping the source easy to edit.

**Tech Stack:** Jekyll, Markdown, YAML, SCSS

---

### Task 1: Prove the honors page and nav entry do not exist yet

**Files:**
- Create: `_pages/honors.md`
- Modify: `_data/navigation.yml`

**Step 1: Write the failing check**

Expected failure before changes:
- No honors page exists
- Navigation does not include `荣誉获奖`

**Step 2: Run the failing check**

Run: `rg -n "荣誉获奖|/honors/" _pages _data/navigation.yml`

Expected:
- No matches

**Step 3: Write the minimal implementation**

- Create the honors page
- Add the honors page to the main navigation

**Step 4: Run the source check again**

Run: `rg -n "荣誉获奖|/honors/" _pages/honors.md _data/navigation.yml`

Expected:
- Matches exist in both files

### Task 2: Add the honors list and minimal styling

**Files:**
- Create: `_pages/honors.md`
- Modify: `_sass/_custom.scss`

**Step 1: Write the failing check**

Expected failure before changes:
- No honors list source exists
- No honors list styling exists

**Step 2: Run the failing check**

Run: `rg -n "甘肃省拔尖领军人才|honors-list|honor-date" _pages/honors.md _sass/_custom.scss 2>/dev/null`

Expected:
- No matches

**Step 3: Write the minimal implementation**

- Add the honors entries in reverse chronological order
- Keep the page source easy to edit
- Add lightweight styles for list spacing and date alignment

**Step 4: Run the source check again**

Run: `rg -n "甘肃省拔尖领军人才|honors-list|honor-date" _pages/honors.md _sass/_custom.scss`

Expected:
- Matches exist

### Task 3: Verify the rendered page

**Files:**
- Verify build output: `_site/honors/index.html`

**Step 1: Build the site**

Run: `RUBYOPT='-r./fix_tainted.rb' bundle exec jekyll build`

Expected:
- Exit code 0

**Step 2: Inspect generated output**

Run: `rg -n "荣誉获奖|甘肃省拔尖领军人才|国际气候组织最佳成果展示奖" _site/honors/index.html`

Expected:
- The page heading and honors entries are present
