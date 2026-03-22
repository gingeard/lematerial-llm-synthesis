# Getting Started

This tutorial walks you through installing LeMat-Synth and running your first synthesis extraction.

## Prerequisites

This project uses **uv** as a package & project manager. See [uv's README](https://github.com/astral-sh/uv?tab=readme-ov-file#installation) for installation instructions.

## Installation

```bash
# 1. Clone & enter the repo
git clone https://github.com/LeMaterial/lematerial-llm-synthesis.git
cd lematerial-llm-synthesis

# 2. Create & seed venv
uv venv -p 3.11 --seed

# 3. Install dependencies & package
uv sync && uv pip install -e .
```

## API Key Configuration

Copy the example environment file and add your keys:

```bash
cp .env.example .env
```

Edit `.env` to add your API keys:

```bash
MISTRAL_API_KEY=your_api_key    # for Mistral models and Mistral OCR
OPENAI_API_KEY=your_api_key     # for OpenAI models
GEMINI_API_KEY=your_api_key     # for Gemini models
ANTHROPIC_API_KEY=your_api_key  # for Anthropic models (Claude)
```

Load the environment before running scripts:

```bash
source .env
```

## Verify Installation

```bash
uv run python -c "import llm_synthesis"
```

## Your First Extraction

Run a synthesis extraction from the HuggingFace dataset:

```bash
uv run examples/scripts/extract_synthesis_procedure_from_text.py \
  data_loader=default \
  synthesis_extraction=default \
  material_extraction=default \
  judge=default \
  result_save=default
```

!!! note "HuggingFace Access"
    You need to [request access](https://huggingface.co/datasets/LeMaterial/LeMat-Synth/) to the dataset first, then log in with `huggingface-cli login`.
