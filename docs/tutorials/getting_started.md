# Getting Started

This tutorial walks you through installing LeMat-Synth and running your first synthesis extraction.

## Prerequisites

This project uses **uv** as a package & project manager. See [uv's README](https://github.com/astral-sh/uv?tab=readme-ov-file#installation) for installation instructions.

## Installation

**1. Clone & enter the repo**
```text
git clone https://github.com/LeMaterial/lematerial-llm-synthesis.git
cd lematerial-llm-synthesis
```

**2. Create & seed venv**
```text
uv venv -p 3.11 --seed
```

**3. Install dependencies & package**
```text
uv sync && uv pip install -e .
```

## API Key Configuration

Copy the example environment file and add your keys:

```text
cp .env.example .env
```

Edit `.env` to add your API keys:

```text
MISTRAL_API_KEY=your_api_key    # for Mistral models and Mistral OCR
OPENAI_API_KEY=your_api_key     # for OpenAI models
GEMINI_API_KEY=your_api_key     # for Gemini models
ANTHROPIC_API_KEY=your_api_key  # for Anthropic models (Claude)
```

Load the environment before running scripts:

```text
source .env
```

??? note "Windows"
    On Windows, set environment variables via:

    - Search bar → Edit the system environment variables → Advanced → click "Environment Variables..."
    - Under "User variables for \<your-username\>" click "New" and add each:
        - Variable name: `MISTRAL_API_KEY`; Value: `your_api_key`
        - Variable name: `OPENAI_API_KEY`; Value: `your_api_key`
        - Variable name: `GEMINI_API_KEY`; Value: `your_api_key`
        - Variable name: `GOOGLE_APPLICATION_CREDENTIALS`; Value: `C:\path\to\service-account.json`

    For any platform you can always load .env-style keys in code via `os.environ.get(...)`.

## Verify Installation

```text
uv run python -c "import llm_synthesis"
```

## Your First Extraction

Run a synthesis extraction from the HuggingFace dataset:

```text
uv run examples/scripts/extract_synthesis_procedure_from_text.py \
  data_loader=default \
  synthesis_extraction=default \
  material_extraction=default \
  judge=default \
  result_save=default
```

!!! note "HuggingFace Access"
    You need to [request access](https://huggingface.co/datasets/LeMaterial/LeMat-Synth/) to the dataset first, then log in with `huggingface-cli login`.
