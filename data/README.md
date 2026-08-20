# Workshop Data

## Autoclave model

Use these files for the autoclave MIP notebooks:

- `autoclave_parts.csv`
- `autoclaves.csv`
- `material_profiles.csv`

The current autoclave dataset is tuned for the one-vs-two-autoclave lesson:

- with `AC-1` only, the model is capacity/recipe constrained and should leave some parts unscheduled inside the planning window
- with both `AC-1` and `AC-2`, the model should recover more parts

The intended teaching outcome is that a second autoclave does not only add capacity. It also lets the factory run different compatible cure recipes in the same time window.

## Robot drill routing model

Use these files for the drill routing notebooks:

- `drill_points.csv`
- `robot_profiles.csv`

## Rework scheduling model

Use these files later for a separate rework scheduling notebook:

- `rework_jobs.csv`
- `rework_resources.csv`

Rework data is included for planning and future exercises, but reactive rework is not part of the current baseline Day 2 routing notebook.
