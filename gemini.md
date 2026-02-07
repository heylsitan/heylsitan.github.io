# Gemini Context: heylsitan.github.io

This repository contains the source code for the academic personal website of **He Yongli (何永利)**, an Associate Professor at the College of Atmospheric Sciences, Lanzhou University.

## Project Overview
- **Type**: Academic Personal Website (Jekyll-based)
- **Template**: [AcademicPages](https://github.com/academicpages/academicpages.github.io) (forked from Minimal Mistakes)
- **Primary Language**: Chinese (zh-CN) with English content.
- **URL**: https://heylsitan.github.io

## Core Directory Structure
- `_publications/`: Markdown files for academic papers.
- `_talks/`: Markdown files for presentations and invited talks.
- `_teaching/`: Markdown files for courses and teaching materials.
- `_posts/`: Blog posts and news updates.
- `_pages/`: Static pages like "About Me", "CV", and "Portfolio".
- `files/`: Storage for PDFs (papers), CVs, and other downloadable assets.
- `images/`: Profile photos, project thumbnails, and post images.
- `markdown_generator/`: Python scripts and TSV/Bibtex files for automating the generation of publication and talk markdown files.

## Maintenance Workflows

### 1. Adding Publications
- **Automatic**: Update `markdown_generator/publications.tsv` (or use BibTeX files) and run the scripts in that directory to regenerate files in `_publications/`.
- **Manual**: Create a new `.md` file in `_publications/` following the established front-matter naming convention (`YYYY-MM-DD-title-slug.md`).
- **Assets**: Always place the corresponding PDF in the `files/` directory and ensure the `paperurl` in the markdown front-matter points to `https://heylsitan.github.io/files/your-file.pdf`.

### 2. Updating Bio and Info
- Primary configuration is handled in `_config.yml` (author name, bio, social links, Google Scholar, etc.).
- The "About Me" content is located in `_pages/about.md`.

## Guidelines for AI Assistance
- **Language**: Maintain the professional academic tone. When writing content in Chinese, ensure it aligns with the existing style of a university faculty member.
- **Consistency**: Follow the existing YAML front-matter structure for all collections (`_publications`, `_talks`, etc.).
- **PDF Handling**: When asked to add a paper, first check if the PDF exists in `files/`. If not, suggest uploading it first.
- **Scripts**: Prefer using the tools in `markdown_generator/` for bulk updates to ensure metadata consistency across the site.
- **Cleanliness**: Avoid cluttering the root directory. Keep assets in their designated folders.
