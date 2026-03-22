# Contribute to Documentation

## Setup

Install docs dependencies:

```bash
uv sync --group docs
```

## Local Preview

Start the development server:

```bash
uv run mkdocs serve
```

Open [http://127.0.0.1:8000](http://127.0.0.1:8000) in your browser. The site auto-reloads on changes.

## Structure

This documentation follows the [Diataxis](https://diataxis.fr/) framework:

| Section | Purpose | Style |
|---------|---------|-------|
| **Tutorials** | Learning-oriented | Step-by-step walkthroughs |
| **How-to Guides** | Task-oriented | Practical recipes |
| **Explanation** | Understanding-oriented | Conceptual discussion |
| **Reference** | Information-oriented | Technical descriptions |

## Adding Pages

1. Create a new `.md` file in the appropriate section directory under `docs/`
2. Add the page to the `nav` section in `mkdocs.yml`
3. Preview locally with `uv run mkdocs serve`

## Adding Jupyter Notebooks

Place `.ipynb` files in `docs/` (e.g. `docs/tutorials/`) and reference them in `mkdocs.yml` navigation. The `mkdocs-jupyter` plugin renders them automatically.
