# <img src="assets/lematerial-logo-light.png" alt="LeMaterial-Synthesis logo" width="400" class="only-light" /><img src="assets/lematerial-logo.png" alt="LeMaterial-Synthesis logo" width="400" class="only-dark" />

An open-source multi-modal toolbox for extracting structured synthesis procedures and performance data from materials science literature at scale.

<div markdown="block" class="action-buttons">
  <a href="https://arxiv.org/abs/2510.26824" class="md-button md-button--primary action-button">Paper</a>
  <a href="https://huggingface.co/datasets/LeMaterial/LeMat-Synth" class="md-button md-button--primary action-button">Dataset</a>
  <a href="https://github.com/LeMaterial/lematerial-llm-synthesis" class="md-button md-button--primary action-button">GitHub</a>
</div>

## Documentation

<div markdown="block" class="framework-grid">

<div markdown="block">

### Explanation
**Concepts & architecture**

Understand what LeMat-Synth is, how the multi-modal extraction pipeline works, and the design decisions behind the toolbox.

[**Read Explanations**](explanation/index.md)
</div>

<div markdown="block">

### Reference
**Configuration & data models**

Full reference for Hydra configs, supported LLMs, synthesis ontology schema, and bibliographic resources.

[**View Reference**](reference/index.md)
</div>

<div markdown="block">

### Tutorials
**Step-by-step learning**

Install the toolbox, run your first extraction, and explore interactive Jupyter notebooks with real data.

[**Explore Tutorials**](tutorials/index.md)
</div>

<div markdown="block">

### How-to Guides
**Practical recipes**

Extract from HuggingFace or locally, run case studies, customize the pipeline, and contribute to the project.

[**Browse How-to Guides**](how_to/index.md)
</div>

</div>

## Key Features

- **Multi-Modal Extraction**: Extract structured data from both text and figures in scientific papers
- **Multi-LLM Support**: Works with Mistral, OpenAI, Google Gemini, and Anthropic Claude
- **Judge Evaluation**: Built-in LLM judges for quality assessment of extracted data
- **Hydra Configuration**: Flexible, composable configuration system
- **Case Studies**: Ready-to-use pipelines for superconductors and thermocatalysis

## Overview

![LeMat-Synth overview](assets/overview.png)
