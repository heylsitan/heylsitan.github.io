# Research Page Design

**Date:** 2026-03-06

## Goal

Simplify the research page so it reads like a compact academic project index instead of a narrative content page.

## Approved Scope

- Keep only two sections: `在研项目` and `已完成项目`
- Remove project descriptions and outcomes
- Remove `研究方向`
- Remove `合作研究`
- Present projects as grouped tables

## Content Model

Each project row should contain only structured fields:

- 项目类别
- 项目名称
- 项目编号
- 研究期限
- 参与角色

If a project does not have a role specified, display `-`.

## Layout Decision

Use one table for current projects and one table for completed projects.

Rationale:

- The page now contains only structured metadata
- Tables make row-to-row scanning faster than stacked markdown blocks
- Grouped tables preserve semantic separation between ongoing and completed work
- A responsive wrapper avoids mobile layout breakage

## Styling Constraints

- Keep the design consistent with the existing Minimal Mistakes theme
- Add only minimal custom styles
- Support narrow screens with horizontal scrolling instead of squeezing columns

## Verification

- Build the Jekyll site successfully
- Inspect generated `research/index.html` for the expected section headings and table markup
