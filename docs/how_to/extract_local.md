# Extract Locally

Run extraction on local markdown files instead of the HuggingFace dataset.

## Usage

```text
uv run examples/scripts/extract_synthesis_procedure_from_text.py \
  data_loader=local \
  data_loader.architecture.data_dir="/path/to/markdown" \
  synthesis_extraction=default \
  material_extraction=default \
  judge=default \
  result_save=default
```

Replace `/path/to/markdown` with the path to your directory containing markdown-converted papers.
