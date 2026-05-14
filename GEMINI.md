# Project: Tomás Delvechio's Personal & Academic Website

This is a static website and blog managed with [Nikola](https://getnikola.com/), a Python-based static site generator. The site serves as the academic and personal portal for Tomás Delvechio.

## Project Structure

- `conf.py`: Primary configuration file for Nikola. Defines site metadata, enabled plugins, theme, and language settings.
- `posts/`: Contains blog posts in Markdown (`.md`) format.
- `files/`: Static assets (images, PDFs, HTML files) that are copied directly to the output.
- `themes/`: Custom or downloaded Nikola themes used for styling the site.
- `requirements.txt`: Python dependencies, including Nikola and its plugins.
- `Makefile`: Shortcut commands for common development tasks.
- `.venv/`: Local Python virtual environment (ignored by git).

## Building and Running

The project uses a `Makefile` to simplify common operations.

### Prerequisites
- Python 3.x
- `make`

### Commands
- **Install Dependencies:**
  ```bash
  make install
  ```
  This creates a virtual environment in `.venv` and installs packages from `requirements.txt`.

- **Local Development / Preview:**
  ```bash
  make serve
  ```
  Builds the site and starts a local development server. The site is typically available at `http://localhost:8000`.

- **Create a New Post:**
  ```bash
  make post
  ```
  Prompts for a title and creates a new Markdown file in the `posts/` directory with the necessary metadata headers.

- **Deploy to GitHub Pages:**
  ```bash
  make gh-push
  ```
  Builds the site and pushes the output to the `gh-pages` branch (or configured deployment target).

## Development Conventions

- **Language:** The default language is Spanish (`es`).
- **Post Format:** Always use Markdown for new posts.
- **Metadata:** Each post must start with Nikola-compatible metadata (title, slug, date, tags, etc.).
- **Static Assets:** 
  - Images for posts should ideally be placed in `files/img/blog/` or organized by year/topic.
  - References in Markdown should use the path relative to the root of the generated site (e.g., `/img/foto.jpg`).
- **Themes:** The active theme is configured in `conf.py`.

## Key Configuration (conf.py)
- `BLOG_AUTHOR`: "Tomás Delvechio"
- `BLOG_TITLE`: "Tomás Delvechio"
- `SITE_URL`: "http://tomasdelvechio.github.io/"
- `DEFAULT_LANG`: "es"
