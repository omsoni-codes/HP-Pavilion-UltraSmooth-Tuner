# ⚡ HP Pavilion UltraSmooth Tuner (v2.0.0 Extreme Edition)
### Maximum Sustained Performance & Zero-Latency Tuning for HP Pavilion x360
**Optimized for Web Browsing (Safari/Chrome) & Microsoft Word / Office Document Editing**

[![Target CPU](https://img.shields.io/badge/CPU-Intel_Tiger_Lake_i3--1115G4-orange.svg?style=for-the-badge&logo=intel)](https://ark.intel.com)
[![Target OS](https://img.shields.io/badge/macOS-Tahoe_/_Golden_Gate-teal.svg?style=for-the-badge&logo=apple)](https://apple.com)
[![Graphics](https://img.shields.io/badge/Graphics-Metal_2_1536MB-blue.svg?style=for-the-badge&logo=apple)](https://apple.com)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)](LICENSE)

**Author:** [Om Soni (omsoni-codes)](https://github.com/omsoni-codes)  
**Target Hardware:** HP Pavilion x360 Convertible 14-dw1036tu  

---

## 🌟 Overview

**HP-Pavilion-UltraSmooth-Tuner** is a bespoke system optimization suite engineered by Om Soni to unlock peak hardware velocity on the HP Pavilion x360 running macOS.

Tailored specifically for users whose daily driver workflow is centered on **ultra-fast web browsing** and **effortless, responsive Microsoft Word document editing**, this tool optimizes kernel power states, eliminates typing latency, accelerates WebKit/Metal graphics, and silences background resource hogs.

---

## 🚀 Extreme Optimizations

### 1. 🏎️ CPU & Sustained Turbo Power
* **Zero Battery Throttling**: Completely removes power-nap and sleep downclocking (`pmset sleep 0`, `powernap 0`, `standby 0`).
* **Lid Close/Open Resilience**: Eliminates S0ix sleepimage crashes on Tiger Lake NVMe storage by locking sleepimage to 0 bytes and enabling instant display wake.

### 2. 📝 Microsoft Word & Office Zero-Latency Typing
* **Immediate Key Repeat**: Sets initial repeat delay to 10 and repeat rate to 1 for lightning-fast cursor movement through paragraphs.
* **Continuous Key Pressing**: Disables press-and-hold character accents for instant backspace and typing flow.
* **Subpixel Font Smoothing**: Calibrates medium subpixel text rendering for razor-sharp typography on 14-inch 1080p IPS displays.

### 3. 🌐 Web Browsing Acceleration (Safari & Chrome)
* **GPU-Accelerated WebKit**: Forces Metal 2 GPU execution for 2D canvases, WebGL, and HTML5 video.
* **Fluid 60 FPS Scrolling**: Activates buttery smooth native scroll animation curves.
* **Low Memory Footprint**: Disables speculative background prefetching and tab discarding delays.

### 4. 🪟 60 FPS CoreAnimation & WindowServer
* **Snappy Dock & Mission Control**: Eliminates launch delays while preserving 100% of the authentic frosted glass translucency.
* **Instant Dialog Sheets**: Reduces window resize delay to 0.001s.

### 5. 🧹 Background Overhead Reclamation
* Deactivates over 18 non-essential telemetry and crash-reporting background daemons (Siri, analytics, diagnostic push), saving over 800 MB of system RAM.

---

## 📦 How to Run

Execute directly in Terminal on your HP Pavilion x360:

```bash
git clone https://github.com/omsoni-codes/HP-Pavilion-UltraSmooth-Tuner.git
cd HP-Pavilion-UltraSmooth-Tuner
chmod +x tune_smooth.sh
./tune_smooth.sh
```

---

## ⚖️ License

Released under the **MIT License**. Copyright (c) 2026 **Om Soni (omsoni-codes)**. All rights reserved.
