# What is LeMat-Synth?

LeMat-Synth is an open-source multi-modal toolbox for extracting structured synthesis procedures and performance data from materials science literature at scale.

It was published as [LeMat-Synth v1.0](https://arxiv.org/abs/2510.26824) on the arXiv and presented at NeurIPS AI4Mat 2025.

## Goals

- **Structured extraction** — convert unstructured scientific papers into machine-readable synthesis procedures
- **Multi-modal** — process both text and figures from publications
- **Multi-LLM** — support multiple LLM providers (Gemini, Claude, Qwen, DeepSeek)
- **Quality assessment** — built-in LLM judges to evaluate extraction quality
- **Extensibility** — composable pipeline architecture for new materials science use cases

## Data Sources

The pipeline curates papers from three sources:

- **arXiv** — open-access preprints
- **ChemRxiv** — chemistry preprint server
- **OMG24 / Semantic Scholar** — broader materials science literature

From an initial corpus of 81k relevant publications, the pipeline extracts structured synthesis data.

## Output

The final output is a **standardized synthesis database** in machine-readable format. For each material, the database contains:

- Chemical formula (e.g., LiFePO₄)
- Complete synthesis recipe with ordered steps
- Equipment and conditions for each step
- Starting materials with quantities
- Performance data linked from figures

## Datasets

Extracted data is available on HuggingFace:

- [LeMat-Synth](https://huggingface.co/datasets/LeMaterial/LeMat-Synth/) — per-synthesis format
- [LeMat-Synth-Papers](https://huggingface.co/datasets/LeMaterial/LeMat-Synth-Papers/) — per-paper format
