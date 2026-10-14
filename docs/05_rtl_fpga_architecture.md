# RTL and FPGA architecture

**Sources:** Thesis §5.5, §6.6, §7.2, and chapter 8.

## Purpose

The thesis describes a migration from MATLAB signal processing toward clocked hardware for the compute-intensive FFT and CFAR operations. The RTL chain is written in **Verilog/SystemVerilog** according to the report and evaluated using **Vivado** tools. The named FPGA family/board target is **Nexys A7-100T**.

## DSP dataflow overview

The architectural description includes FFT processing, buffering, squared-magnitude calculation, CFAR detection and a controller to schedule stages. The controller coordinates stages in a defined progression through loading, computation and detection states.

## RTL modules mentioned in the report

- **FFT/DFT stages:** The narrative discusses 256-point and 128-point DFT/FFT stages in an RTL-oriented range–Doppler implementation.
- **Ping-pong buffering:** Alternating storage banks help stage results and arrange read/write access between transformations.
- **Dual-port memory:** A module described as `simple_dual_port_ram` supports simultaneous/managed buffer operations.
- **Magnitude-squared stage:** Real and imaginary output components are combined into an energy/power-like measure for later detection.
- **CFAR engine:** A hardware-oriented threshold comparison over a sliding neighborhood.
- **Control unit:** An FSM with named phases, including `LOAD_TO_PINGPONG`, `LOAD_FROM_PINGPONG`, `LOAD_TO_DFT128`, `COMPUTE_DFT128`, `SQUARE_LAW`, and `CFAR_PHASE` (see §5.5).

## Validation reported in the thesis

The report states that RTL testbenches were run in Vivado Simulator; detections were related back to physical units using range and Doppler grids held in testbench infrastructure. Chapter 7 describes detection distributions near known test-target range/velocity values and provides a synthesized/implemented resource-utilization table.

## Read the results carefully

The reported synthesis uses **127 of 135 Block RAM tiles (94.07%)** and **218 of 240 DSPs (90.83%)**, indicating limited remaining margin for these particular resources. The implementation table reports **119 of 135 Block RAM tiles (88.15%)** and **210 of 240 DSPs (87.50%)**.

The source's implementation row for LUTs prints `265000 used` with `63400 available`, yet gives **41.80%** utilization; these three values cannot all be correct. Register and LUT-memory figures also contain presentation inconsistencies. This package reproduces the report's numeric claims only with these caveats instead of editing original figures.

## What is not in this repository

The supplied thesis PDF does **not** include downloadable `.v`, `.sv`, `.xpr`, `.xdc`, waveform dumps, testbench input files or a compiled bitstream. Empty `src/rtl/` and `hardware/` directories contain guidance only. No synthesis was rerun in preparing this package.

## Extension path

When original code becomes available, add RTL modules under `src/rtl/`, specify the exact Vivado version, provide a deterministic simulation command, add test vectors and expected checks, and document FPGA constraints under `hardware/`. Keep module names and requirements aligned with the thesis, and run regression tests before stating the design is reproducible.
