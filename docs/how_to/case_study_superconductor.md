# Superconductor Case Study

Filter down the corpus for superconductor-related papers:

```text
uv run examples/scripts/case_study_thermocatalysis/keyword_search.py

uv run examples/scripts/case_study_thermocatalysis/downsample_with_llm.py \
  --prompt default

uv run examples/scripts/case_study_thermocatalysis/downsample_with_llm.py \
  --prompt long
```
