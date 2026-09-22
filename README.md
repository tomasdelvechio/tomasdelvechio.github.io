# Tomás Delvechio's Personal & Academic Website

Personal portal, academic CV, and technical blog hosted on GitHub Pages at [tomasdelvechio.github.io](https://tomasdelvechio.github.io/).

Built with the [Nikola](https://getnikola.com/) static site generator in Python.

---

## 🏗️ Architecture & Branches

- **`src` branch (working branch):** Source Markdown posts, themes, static assets, configuration, and scripts. All development and editing happens here.
- **`master` branch (publication branch):** Compiled static HTML deployed automatically via `make deploy`.

---

## 🚀 Quickstart

### Prerequisites
- Python 3.x
- `make`

```bash
# 1. Setup virtual environment (.venv) and install dependencies
make install

# 2. Start local development server with live auto-rebuild (http://localhost:8000)
make dev
```

---

## 📝 Everyday Workflows

### 1. Write a new blog post
```bash
make post
```
- Prompts for the post title.
- Scaffolds a new Markdown file with Nikola metadata under `posts/`.
- If `$EDITOR` is defined in your environment (e.g., `export EDITOR=code`), it automatically opens the new file in your editor.

#### Adding images to a post:
1. Place images in `files/img/blog/<year>/my-image.png`.
2. Reference them in Markdown using root-relative paths:
   ```markdown
   ![Alt text](/img/blog/2026/my-image.png)
   ```

### 2. Check site status
```bash
make status
```
Displays counts of published posts, drafts, and scheduled articles.

### 3. Validate links and files
```bash
make check          # Fast: checks local links and orphaned files (< 1s)
make check-remote   # Thorough: validates remote external links over HTTP
```

### 4. Deploy to GitHub Pages
```bash
# Always commit your source changes first with a meaningful message
git add .
git commit -m "Add new post on topic X"

# Run pre-flight checks and deploy to master
make deploy
```

---

## 📂 Content Organization Guide

| Content Type | Location | Notes |
| :--- | :--- | :--- |
| **CV / Landing Page** | `files/index.html` | Academic profile, publications list, and course links |
| **Blog Articles** | `posts/*.md` | Markdown posts rendered under `/blog` |
| **Academic Papers (PDFs)** | `files/academic/<event-year>/` | Linked directly from `files/index.html` |
| **Course Materials** | `files/subjects/<subject-name>/` | Datasets, code exercises, and web simulators |
| **Slide Decks (reveal.js)**| `files/talks/<talk-name>/` | Standalone HTML5 presentation decks |
| **Legacy Blog Archive** | `files/old/` | Preserved static snapshots from earlier CMS (Wordpress IDs) |
| **Site Settings & Theme** | `conf.py` / `themes/kiss/` | Main Nikola configuration, metadata, and templates |

---

## 🛠️ Maintenance & Reset

```bash
make clean        # Wipes output/, cache/, and SQLite build database (.doit.db)
make venv-clean   # Wipes .venv/ completely (automatically recreated on next make command)
```
