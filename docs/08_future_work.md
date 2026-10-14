# Future work

**Source:** Thesis §8.2 (Conclusion & Future Work).

## 1. Hardware-in-the-loop validation

Connect FPGA processing to real or realistic recorded radar data and assess robustness to timing, RF imperfections, multipath and interference. Compare RTL samples and latency against simulation baselines.

## 2. Radar interference mitigation

Explore interference-aware and adaptive CFAR variants to reduce mutual interference and false alarms in multi-radar traffic scenes. Evaluate both missed-detection and false-alarm behavior.

## 3. Adaptive waveform design

Adapt chirp parameters, sweep bandwidth and coherent observation time based on environment and required sensing performance. Measure consequences for range/velocity ambiguity and resolution.

## 4. MIMO and 3D imaging

Extend the angle-estimation model with virtual arrays, higher angular resolution and point-cloud representation, with clearly documented transmit/receive calibration.

## 5. Multi-sensor fusion

Combine radar detections with camera or lidar information for improved object awareness. Account for synchronization, coordinate calibration and sensor uncertainty.

## 6. Power/area improvement

Optimize register and memory footprints, investigate buffering alternatives, resource sharing, clock gating and lower-power architectures. The reported BRAM and DSP utilization motivates this directly.

## 7. Lightweight machine learning

Study hardware-efficient quantized target classifiers or interference suppressors, with realistic accuracy/latency/power measurements and safety evaluation.

## Suggested priority order (editorial guidance, not a thesis result)

First recover exact code and testbenches; next achieve repeatable baseline detections and document correct resource values; then broaden scenes and HIL tests; only afterward compare advanced variants or add AI classifiers. This order minimizes the risk of optimizing an unverified implementation.
