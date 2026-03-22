# Extract from HuggingFace Dataset

## Prerequisites

1. [Request access](https://huggingface.co/datasets/LeMaterial/LeMat-Synth/) to the LeMat-Synth dataset
2. Log in: `huggingface-cli login`

## Run Extraction

```bash
uv run examples/scripts/extract_synthesis_procedure_from_text.py \
  data_loader=default \
  synthesis_extraction=default \
  material_extraction=default \
  judge=default \
  result_save=default
```

## Available Datasets

| Dataset | Description |
|---------|-------------|
| [LeMat-Synth](https://huggingface.co/datasets/LeMaterial/LeMat-Synth/) | Synthesis procedures and images in per-synthesis format |
| [LeMat-Synth-Papers](https://huggingface.co/datasets/LeMaterial/LeMat-Synth-Papers/) | Intermediate dataset in per-paper format |
