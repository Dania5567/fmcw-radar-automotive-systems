# Simulation scenarios and evaluation

**Sources:** Thesis §§4.5, 6.1–6.6 and 7.1–7.2.

## Reference scenarios (reported in §6.2)

| Scenario | Source conditions | Observations described in report |
| --- | --- | --- |
| 1. Target without rain | 3 TX / 4 RX; 23 m target; 30 m/s; free space | Baseline detection and SNR established |
| 2. Increased range | Target at 31 m | SNR declines as distance grows |
| 3. Multiple targets | Targets at 23 m and 31 m | Both reportedly separated in range–Doppler display |
| 4. Rain | Target at 26 m; rain attenuation | Lower SNR from added loss |
| 5. Increased noise figure | Noise figure raised from 12 dB to 15 dB | SNR decreases |
| 6. Earth-surface effects | Custom earth surface | No targets detected in the reported case |

These conditions were **simulated**. The report gives high-level settings and observations, not full serialized input datasets for these exact scenes.

## Additional MATLAB setup examples

Section 6.1 describes configurations including **1 TX / 6 RX**, **1 TX / 4 RX**, and **3 TX / 4 RX**. It distinguishes manual signal-level MATLAB Phased Array toolbox modeling and application/helper-driven long-range radar design. These are not claimed to be identical to every scenario above.

## RTL scenario 1 (Chapter 7)

- Expected target: **50 m** range and **20 m/s** relative radial velocity.
- Reported detections: **48.83–52.73 m** and **18.24–22.80 m/s**.
- The report interprets multiple nearby detections as the same target due to finite range/Doppler processing resolution.

## RTL scenario 2 (Chapter 7)

- Target A: about **50 m** and **20 m/s** relative radial velocity.
- Target B: about **70 m** and **40 m/s** relative radial velocity.
- Reported detection centers include **50.78 m / 22.80 m/s** and **70.31 or 72.27 m / 41.03 m/s**.

## Evaluation measures

- Detection probability (`Pd`): fraction of actual targets detected under the defined evaluation protocol.
- False-alarm probability (`Pfa`): frequency/probability of false detections under the chosen cell/scene definition.
- Range estimation RMSE: error between predicted and ground-truth target range.
- Velocity estimation RMSE: error between predicted and ground-truth relative radial velocity.
- Quantization impact and SQNR: differences between fixed- and floating-point reference processing.
- FPGA utilization: LUTs, registers, DSP slices, BRAM, clocks and timing as supported by implementation tools.

## Reproduction gaps

The uploaded report does not contain the random seeds, raw ADC cubes, environmental simulation files or MATLAB project source needed to reproduce all scenario outputs. This document is a **scenario register**, not a software test suite.
