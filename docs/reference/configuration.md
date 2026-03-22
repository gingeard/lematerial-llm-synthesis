# Configuration

LeMat-Synth uses [Hydra](https://hydra.cc/) for configuration management. Config files are located in `examples/config/`.

## Config Groups

The main config (`examples/config/config.yaml`) composes five groups:

### data_loader

| Config | Class | Description |
|--------|-------|-------------|
| `default` | `HFLoader` | Loads papers from HuggingFace dataset |
| `local` | `FSPaperLoader` | Loads papers from local filesystem |
| `annotation` | `AnnotationHFLoader` | Loads annotated papers for evaluation |

**Key parameters (default):**

| Parameter | Value | Description |
|-----------|-------|-------------|
| `dataset_uri` | `LeMaterial/LeMat-Synth-Papers` | HuggingFace dataset identifier |
| `dataset_config_name` | `full` | Dataset configuration |
| `split` | `chemrxiv` | Dataset split |
| `number_of_samples` | `1500` | Number of papers to load |

**Key parameters (local):**

| Parameter | Value | Description |
|-----------|-------|-------------|
| `data_dir` | `examples/data/txt_papers/mistral/` | Path to markdown files |
| `number_of_samples` | `2` | Number of papers to load |

### material_extraction

| Config | Class | Description |
|--------|-------|-------------|
| `default` | `DspyTextExtractor` | Single LLM extraction |
| `multi_llm` | `DspyTextExtractor` | Ensemble extraction across multiple LLMs |

**Key parameters (default):**

| Parameter | Value | Description |
|-----------|-------|-------------|
| `llm_name` | `gemini-2.5-flash-lite` | LLM to use |
| `temperature` | `0.0` | Deterministic output |
| `max_tokens` | `4096` | Maximum response length |

**Key parameters (multi_llm):**

| Parameter | Value | Description |
|-----------|-------|-------------|
| `llm_names` | `[claude-sonnet-4.6, gemini-3-flash, qwen3.5-397b-a17b, deepseek-v3.2]` | LLM ensemble |
| `num_retries` | `3` | Retries per LLM |

### synthesis_extraction

| Config | Class | Description |
|--------|-------|-------------|
| `default` | `DspySynthesisExtractor` | Single LLM synthesis extraction |
| `multi_llm` | `DspySynthesisExtractor` | Multi-LLM ensemble extraction |

**Key parameters (default):**

| Parameter | Value | Description |
|-----------|-------|-------------|
| `llm_name` | `gemini-2.0-flash` | LLM to use |
| `temperature` | `0.0` | Deterministic output |
| `max_tokens` | `12000` | Maximum response length |
| `num_retries` | `3` | Retry attempts |

### judge

| Config | Class | Description |
|--------|-------|-------------|
| `default` | `DspyGeneralSynthesisJudge` | Single LLM quality evaluation |
| `multi_llm` | `DspyGeneralSynthesisJudge` | Multi-LLM ensemble evaluation |
| `linking` | `DspyLinkingJudge` | Synthesis-to-performance linking evaluation |

**Evaluation criteria (default/multi_llm) — scored 1-5:**

1. Structural Completeness
2. Material Extraction
3. Process Steps
4. Equipment Extraction
5. Conditions Extraction
6. Semantic Accuracy
7. Format Compliance

**Linking judge failure flags:**

| Flag | Description |
|------|-------------|
| F1 | Name mismatch |
| F2 | One-to-many synthesis |
| F3 | Many-to-one figure |
| F4 | Sample code failure |
| F5 | Precursor vs. product confusion |
| F6 | Characterization confusion |
| F7 | Dual-axis error |
| F8 | False negative |
| F9 | False positive |

### result_save

| Config | Class | Description |
|--------|-------|-------------|
| `default` | `SynthesisFSResultGather` | Save single LLM results |
| `multi_llm` | `MultiLLMResultGather` | Aggregate and save multi-LLM results |

**Output structure:**
```text
results/{paper_id}/
├── result.json
├── publication_text.txt
├── si_text.txt
└── cost_report.json
```

## Supported LLMs

| Model | Provider |
|-------|----------|
| `gemini-2.0-flash` | Google |
| `gemini-2.5-flash` | Google |
| `gemini-2.5-flash-lite` | Google |
| `gemini-3-pro` | Google |
| `gemini-3-flash` | Google |
| `claude-sonnet-4.6` | Anthropic |
| `qwen3.5-35b-a3b` | Alibaba (via OpenRouter) |
| `qwen3.5-397b-a17b` | Alibaba (via OpenRouter) |
| `kimi-k2.5` | Moonshot (via OpenRouter) |
| `deepseek-v3.2` | DeepSeek |

## Overriding Configuration

Override any config value from the command line:

```text
uv run examples/scripts/extract_synthesis_procedure_from_text.py \
  data_loader=local \
  data_loader.architecture.data_dir="/path/to/data"
```

Use multi-LLM ensemble:

```text
uv run examples/scripts/extract_synthesis_procedure_from_text.py \
  synthesis_extraction=multi_llm \
  material_extraction=multi_llm \
  judge=multi_llm \
  result_save=multi_llm
```

See [Hydra documentation](https://hydra.cc/docs/intro/) for advanced override syntax.
