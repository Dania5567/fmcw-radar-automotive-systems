# Source availability, provenance and reproducibility

## What was actually supplied

A single **203-page PDF**, titled *Design and Simulation of FMCW Radar for Automotive Systems*. The source contains academic prose, diagrams, scenario descriptions, results, and RTL architecture descriptions.

## What this repository includes

- An untouched copy of the supplied thesis PDF (renamed for easier navigation).
- Detailed Markdown documentation **written from** the supplied thesis.
- PNG renders of selected thesis pages containing figures, diagrams and results.
- Folders reserved for original MATLAB, RTL and hardware assets if the owners later provide them.
- GitHub publishing instructions and explicit provenance notices.

## What is not available from the PDF alone

- The original MATLAB `.m`, `.mlx`, `.mat`, `.slx`, or project files.
- Raw synthetic/collected radar data arrays or random seeds.
- The original SystemVerilog/Verilog source, RTL testbenches and `.mem` initializations.
- Vivado `.xpr`, constraints `.xdc`, timing reports, post-synthesis netlists and bitstreams.
- Executable command lines and version-locked dependencies to rerun the exact figures.

**Important:** A thesis description of code is not itself an executable source file. No runnable equivalent or placeholder pretending to be the thesis implementation has been manufactured here.

## If you possess the original implementation

1. Add owned MATLAB source under `src/matlab/` and original RTL under `src/rtl/`.
2. Preserve file/module names, copyright headers and authorship.
3. Add a `data/` folder only for data you are authorized to distribute; otherwise provide a generation script.
4. Include instructions to load scripts and invoke MATLAB / Vivado with exact versions.
5. Add automated numerical comparisons against expected range, velocity and CFAR outputs.
6. Save raw Vivado utilization/timing reports and reconcile printed inconsistencies in the thesis.
7. Avoid publishing proprietary third-party IP, licensed data, or company SDK assets without permission.

## Source consistency notes

The thesis has more than one example sample/dimension configuration. Table 1's 1024×256 sampling plan and other illustrative 500×192 or 512×256 matrices should not be merged uncritically. The implementation resource table has internally contradictory printed counts and percentages. These are recorded in the documentation, not silently fixed.

## Public-sharing checklist

Check with co-authors, supervisors and relevant university policy before posting the full report or academic graphics. If you are not authorized to post the thesis itself, remove `thesis/Bachelors_Thesis_FYP.pdf` before uploading, and publish only materials for which you have rights.
