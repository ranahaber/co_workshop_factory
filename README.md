# cuOpt Factory Optimization Workshop

This is the master working folder for the factory-specific cuOpt training.

## Setup First

From this folder, run:

```bash
bash setup.sh
```

The setup script installs the required Python packages from:

```text
launchable/requirements.txt
```

It also registers this Jupyter kernel:

```text
Python (cuOpt Workshop)
```

After setup, open JupyterLab and select that kernel before running the notebooks.

## Recommended Review Path

Run the notebooks in this order:

```text
01-Autoclave-MIP-Workshop.ipynb
02-Autoclave-Formulation-Extensions.ipynb
03b-Drill-Path-Routing-Workshop.ipynb
04-VRP-Formulation-Extensions.ipynb
05-VRP-Runnable-Comparisons.ipynb
06-Possible-Objective-Swaps.ipynb
```

Current status:

- `01-Autoclave-MIP-Workshop.ipynb` is the main Day 1 hands-on notebook. It teaches MIP formulation through an autoclave scheduling example and ends with a one-autoclave vs. two-autoclave comparison.
- `02-Autoclave-Formulation-Extensions.ipynb` is a companion notebook for optional autoclave requirements: soft deadlines, compatibility, material availability, footprint capacity, setup, maintenance, staging, labor, and other add-on constraints.
- `03b-Drill-Path-Routing-Workshop.ipynb` is the preferred Day 2 teaching notebook for drill-path routing.
- `04-VRP-Formulation-Extensions.ipynb` is the VRP formulation menu for additional routing requirements.
- `05-VRP-Runnable-Comparisons.ipynb` is the runnable VRP comparison lab.
- `06-Possible-Objective-Swaps.ipynb` is a review notebook for UME to choose which objective swaps belong in the final workshop.

Supporting / alternate notebook:

- `03-Drill-Path-Routing-Workshop.ipynb` is an earlier compact drill-routing notebook. Keep it for reference unless we decide to retire it.

## Teaching Flow

Day 1:

1. PPT foundations: what optimization is, where cuOpt fits, and why this first use case is a MIP.
2. Notebook `01`: build the autoclave model step by step.
3. Notebook `02`: review possible model extensions and discuss how new requirements change the formulation.
4. PPT closeout: what the model taught us and what to ask the customer next.

Day 2:

1. PPT bridge: move from MIP scheduling to routing.
2. Notebook `03b`: robot drilling / toolpath routing with cuOpt.
3. Notebook `04`/`05`: review and run VRP variants if time allows.
4. Notebook `06`: decide which objective swaps should move into the final student path.
5. Later: reactive rework scheduling as a separate model, not mixed into the baseline routing notebook unless we decide to make a capstone.
6. PPT closeout: compare MIP vs. routing and summarize modeling choices.

## Data

Use these files for the autoclave notebooks:

```text
data/autoclave_parts.csv
data/autoclaves.csv
data/material_profiles.csv
```

Use these files for the drilling / VRP notebooks:

```text
data/drill_points.csv
data/robot_profiles.csv
```

Use these files later for reactive rework:

```text
data/rework_jobs.csv
data/rework_resources.csv
```

## Launchable Setup

Launchable install requirements live here:

```text
launchable/requirements.txt
```

The base workshop uses cuOpt `26.06`.

## Planning Docs

```text
PLANNING/00-workshop-decisions.md
PLANNING/01-day-1-ppt-storyboard.md
PLANNING/02-day-1-notebook-outline.md
PLANNING/03-day-2-ppt-storyboard.md
PLANNING/04-day-2-notebook-outline.md
PLANNING/05-parking-lot.md
```

## Source Inputs

The transferred source documents live one level up in:

```text
/home/rhaber/projects/workshop_cuopt/factory_inputs/
```

Relevant files read:

- `cuOpt Workshop Curriculum.pdf`
- `cuOpt_Curriculum_Working_Doc.pdf`
- `cuopt_Factory_Discussion.pdf`

Ignored by request:

- customer outline `.docx` file

## Export Rule

Student and tutor Launchable exports should be generated under:

```text
exports/student_launchable/
exports/tutor_launchable/
```

The entire `exports/` folder is ignored by this master project so duplicate export copies do not get committed.
