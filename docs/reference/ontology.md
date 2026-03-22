# Synthesis Ontology

The `GeneralSynthesisOntology` is the core data model for structured synthesis extraction.

## Top-level Fields

| Field | Type | Description |
|-------|------|-------------|
| `target_compound` | `str` | Compound name or formula |
| `target_compound_type` | `Literal` | Material category (see below) |
| `synthesis_method` | `Literal` | Synthesis method (see below) |
| `starting_materials` | `list[Material]` | Input materials |
| `steps` | `list[ProcessStep]` | Ordered synthesis steps |
| `equipment` | `list[Equipment]` | Equipment used |
| `notes` | `str` | Additional observations |

## Material

| Field | Type | Description |
|-------|------|-------------|
| `name` | `str` | Chemical name or formula |
| `vendor` | `str` | Supplier |
| `amount` | `float` | Quantity |
| `unit` | `str` | Unit of measurement |
| `purity` | `str` | Purity grade |

## ProcessStep

| Field | Type | Description |
|-------|------|-------------|
| `step_number` | `int` | Order in sequence |
| `action` | `Literal` | Action type (see below) |
| `description` | `str` | Free-text description |
| `materials` | `list[Material]` | Materials used in this step |
| `equipment` | `list[Equipment]` | Equipment used in this step |
| `conditions` | `Conditions` | Synthesis conditions |

## Equipment

| Field | Type | Description |
|-------|------|-------------|
| `name` | `str` | Equipment name |
| `instrument_vendor` | `str` | Manufacturer |
| `settings` | `str` | Operating settings |

## Conditions

| Field | Type | Description |
|-------|------|-------------|
| `temperature` | `float` | Temperature value |
| `temp_unit` | `str` | Temperature unit (°C, K, °F) |
| `duration` | `float` | Duration value |
| `time_unit` | `str` | Time unit (s, min, h) |
| `pressure` | `float` | Pressure value |
| `pressure_unit` | `str` | Pressure unit (Pa, bar, atm) |
| `atmosphere` | `Literal` | `air`, `N2`, `H2`, `Ar`, `O2`, `vacuum` |
| `stirring` | `bool` | Whether stirring is applied |
| `stirring_speed` | `float` | Stirring speed (rpm) |
| `pH` | `float` | pH value |

All Literal types (compound types, synthesis methods, action types) are defined in the source: [`src/llm_synthesis/models/ontologies/general.py`](https://github.com/LeMaterial/lematerial-llm-synthesis/blob/main/src/llm_synthesis/models/ontologies/general.py)
