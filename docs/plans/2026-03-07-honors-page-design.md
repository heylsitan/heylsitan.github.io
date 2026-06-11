# Honors Page Design

**Date:** 2026-03-07

## Goal

Add a dedicated `荣誉获奖` page that appears in the top navigation and presents honors in a simple, chronological format similar to the user-provided reference image.

## Approved Scope

- Create a new standalone page for honors
- Add the page to the main navigation
- Use a compact, reverse-chronological list
- Keep the source easy to edit by hand
- Preserve the existing overall site style

## Content Structure

The page should contain:

- A page title: `荣誉获奖`
- One chronological list, newest first
- Each row should show:
  - date
  - award title

## Layout Decision

Use a markdown list with a lightweight CSS hook so the page source stays easy to edit while the rendered page gets a clean two-column visual rhythm.

Rationale:

- Plain markdown remains maintainable
- The date column can still align visually through minimal styling
- The output stays close to the user's reference image without introducing a complex template

## Content Seed

Use the honors shown in the reference image as the initial list, including:

- 2025.12 甘肃省拔尖领军人才
- 2024.11 甘肃省领军人才（第一层次）
- 2024.10 “隆基教学创新奖”-物理气候学团队
- 2024.06 “国家级大学生创新创业训练计划”优秀指导老师
- 2024.06 高校优秀教师党支部书记“双带头人”
- 2024.01 “长江学者奖励计划”特聘教授
- 2024.01 甘肃省“陇原人才服务卡”A类人才
- 2023.07 2022年高等教育（研究生）国家级教学成果奖二等奖（3/15）
- 2023.06 兰州大学先进基层党组织（支部书记）
- 2023.04 甘肃省气象学会“创先争优奖”-优秀会员
- 2022.12 甘肃省优秀硕士学位论文指导教师
- 2022.09 第二批新时代甘肃省高等院校党建“样板党支部”培育创建单位
- 2021.09 甘肃省领军人才
- 2021.09 兰州大学国华青年英才奖
- 2021.07 兰州大学优秀共产党员
- 2021.03 高等学校科学研究优秀成果奖自然科学奖二等奖（第一完成人）
- 2021.03 兰州大学大气科学学院气候学系“模范女职工集体”（系主任）
- 2019.03 兰州大学“巾帼标兵”
- 2018.05 兰州大学青年五四奖章
- 2016.09 兰州大学本科毕业论文（设计）优秀指导教师
- 2013.11 国际气候组织最佳成果展示奖

## Verification

- Confirm the navigation contains `荣誉获奖`
- Confirm the new page source contains the honors list
- Build the site with the local Ruby compatibility shim
- Confirm the generated honors page contains the expected headings and award text
