# Configuration

LeMat-Synth uses [Hydra](https://hydra.cc/) for configuration management. Config files are located in `examples/configs/`.

## Config Groups

| Group | Description |
|-------|-------------|
| `data_loader` | Data source configuration (HuggingFace, local, annotations) |
| `synthesis_extraction` | Synthesis extraction LLM and prompt settings |
| `material_extraction` | Material extraction LLM and prompt settings |
| `judge` | LLM judge evaluation settings |
| `result_save` | Output storage configuration (local, GCS) |

## Overriding Configuration

Override any config value from the command line:

```bash
uv run examples/scripts/extract_synthesis_procedure_from_text.py \
  data_loader=local \
  data_loader.architecture.data_dir="/path/to/data"
```

See [Hydra documentation](https://hydra.cc/docs/intro/) for advanced override syntax.
