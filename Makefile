docs-prepare:
	mkdir -p docs/notebooks
	find examples -name "*.ipynb" -not -path "*/dev/*" -exec cp {} docs/notebooks/ \;

docs-serve: docs-prepare
	NO_MKDOCS_2_WARNING=1 JUPYTER_PLATFORM_DIRS=1 uv run --group docs mkdocs serve

docs-build: docs-prepare
	NO_MKDOCS_2_WARNING=1 JUPYTER_PLATFORM_DIRS=1 uv run --group docs mkdocs build
