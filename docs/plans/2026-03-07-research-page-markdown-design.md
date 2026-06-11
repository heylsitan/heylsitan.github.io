# Research Page Markdown Design

**Date:** 2026-03-07

## Goal

Keep the research page easy to maintain by hand. The source file should be readable as plain markdown, without custom HTML wrappers or page-specific structure that the site owner has to remember.

## Approved Scope

- Keep only two sections: `在研项目` and `已完成项目`
- Replace HTML table markup with plain markdown tables
- Correct the project information using the user-provided text
- Keep only four columns:
  - 项目名称
  - 项目类别
  - 起止时间
  - 角色
- Remove page-specific table wrappers and the custom styles that only supported those wrappers

## Content

### 在研项目

1. 全球变暖背景下潜热释放加热对北半球阻塞的影响及未来预估，国家自然科学基金面上项目，2024-2027，主持
2. 西北暖湿化背景下干旱半干旱地区降水事件时空聚集度的变化特征及机理研究，干旱气象科学研究基金，2024-2026，主持

### 已完成项目

1. 气候变暖背景下冬夏季阻塞对北半球中高纬度干旱半干旱地区季节非对称性增温的影响机制，国家自然科学基金青年科学基金项目，2018-2020，主持
2. 20世纪50年代以来中国北方湖泊变化及其生态效应研究，国家重点研发计划专题，2019-2024，参与

## Layout Decision

Use standard markdown headings plus markdown tables.

Rationale:

- The file stays editable without HTML knowledge
- Future changes only require replacing row text
- The page can rely on theme-default table rendering instead of custom page scaffolding

## Verification

- Confirm `research.md` no longer contains HTML wrapper markup
- Confirm the new project names appear in source
- Build the site with the local Ruby compatibility shim and inspect the generated research page
