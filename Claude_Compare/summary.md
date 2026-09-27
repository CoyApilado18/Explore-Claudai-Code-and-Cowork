# Claude_Compare — Project Summary

One cloud salary dataset, explored with three Claude tools: Claude.ai for conversational analysis, Claude Code for a local dashboard, and file organization for the project folder.

## Folder structure

```
Claude_Compare/
├── charts/
│   └── claudeai-salary-by-cloud-platform.png
├── dashboard/
│   └── cloud-salary-dashboard.html
├── data/
│   └── cloud-salaries.csv
└── summary.md
```

## Files

| File | Created by | Description |
|------|------------|-------------|
| `data/cloud-salaries.csv` | None (downloaded from NextWork) | Source dataset of 215 cloud job listings with job title, city, salary, experience level, cloud platform and company size. |
| `charts/claudeai-salary-by-cloud-platform.png` | Claude.ai (screenshot of a chat response) | Claude.ai's answer comparing average salaries across AWS, Azure and GCP, overall and by experience level. |
| `dashboard/cloud-salary-dashboard.html` | Claude Code | Interactive Chart.js dashboard showing average salary by role, a city comparison and a cloud platform breakdown. |
| `summary.md` | Claude Code | This document: the folder layout, plus each file's origin and contents. |

## Renames

| Original name | New location |
|---------------|--------------|
| `dataset.csv` | `data/cloud-salaries.csv` |
| `claudeai-response.png` | `charts/claudeai-salary-by-cloud-platform.png` |
| `dashboard.html` | `dashboard/cloud-salary-dashboard.html` |

The dashboard embeds its data, so it still works after the move. Open `dashboard/cloud-salary-dashboard.html` in a browser.
