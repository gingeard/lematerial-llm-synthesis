# Architecture & Pipeline

LeMat-Synth uses a modular pipeline architecture built on [Hydra](https://hydra.cc/) for configuration management.

## Pipeline Overview

```mermaid
graph LR
    A[Data Loader] --> B[Synthesis Extraction]
    B --> C[Material Extraction]
    C --> D[Judge Evaluation]
    D --> E[Result Save]
```

## Components

### Data Loader
Loads papers from various sources: HuggingFace datasets, local markdown files, or annotation directories.

### Synthesis Extraction
Uses LLMs to extract structured synthesis procedures from paper text.

### Material Extraction
Identifies and structures material properties and compositions from extracted data.

### Judge Evaluation
LLM-based quality assessment of extracted synthesis procedures.

### Result Save
Stores results locally or in Google Cloud Storage.

## Configuration

All pipeline components are configured via Hydra YAML files in `examples/configs/`. See the [Configuration Reference](../reference/configuration.md) for details.
