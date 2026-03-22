# Extract from HuggingFace Dataset

## Prerequisites

1. [Apply for access](https://huggingface.co/datasets/LeMaterial/LeMat-Synth/) to the LeMat-Synth dataset (request will be instantly approved)
2. Install HuggingFace CLI ([guide](https://huggingface.co/docs/huggingface_hub/en/guides/cli)):
    - Recommended: `pip install -U "huggingface_hub[cli]"`
    - Or (macOS): `brew install huggingface-cli`
3. Login with access token: `huggingface-cli login`

## Run Extraction

```text
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
