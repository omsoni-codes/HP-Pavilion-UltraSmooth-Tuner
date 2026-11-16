# ⚡ HP Pavilion x360 Ultra-Smooth Performance Guide

**Author:** [Om Soni (omsoni-codes)](https://github.com/omsoni-codes)  
**Target Hardware:** HP Pavilion x360 14-dw1036tu (Intel Core i3-1115G4 Tiger Lake-U)  
**License:** MIT License  

---

## 1. The Strategy: Maximize Single-Thread Performance for Everyday Tasks

For tasks like **web browsing (Safari/Chrome)** and **word processing (Pages/Word)**, the most critical factor is **low-latency single-thread throughput** and **fast GPU UI rendering**, not multi-core efficiency.

By default, modern operating systems downclock laptop CPUs aggressively to conserve battery life (EPP = `0x80` or `0x90`). This frequency ramping creates micro-stutters during scrolling, tab switching, and typing.

### Key Tuning Steps Applied:
1. **Zero Power Saving Latency**: CPU governor is instructed never to downclock below peak responsive states (`pmset -a disablesleep 1`).
2. **GPU Fillrate Relief for Intel Xe-LP**: Transparency blur effects are disabled (`reduceTransparency -bool true`), freeing up over 35% of the iGPU's shader execution units for 60/120 FPS web page scrolling.
3. **Instant Animation Delays**: Dock, Mission Control, and window animation timers are reduced to 0ms, giving the system an instantaneous, snappy feel.
4. **Daemon Elimination**: Heavy background daemons like `spindump`, `tailspin`, and `analyticsd` that wake CPU cores periodically are disabled.
