# ⚡ HP Pavilion UltraSmooth Tuner
### Maximum Sustained Performance & Zero-Latency Tuning for HP Pavilion x360

[![Target CPU](https://img.shields.io/badge/CPU-Intel_Tiger_Lake_i3--1115G4-orange.svg?style=for-the-badge&logo=intel)](https://ark.intel.com)
[![Target OS](https://img.shields.io/badge/macOS-Tahoe_/_Golden_Gate-teal.svg?style=for-the-badge&logo=apple)](https://apple.com)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)](LICENSE)

**Author:** [Om Soni (omsoni-codes)](https://github.com/omsoni-codes)  
**Target Hardware:** HP Pavilion x360 Convertible 14-dw1036tu  

---

## 🌟 Overview

**HP-Pavilion-UltraSmooth-Tuner** is a bespoke system optimization script engineered by Om Soni to unlock maximum sustained hardware performance on the HP Pavilion x360.

Configured specifically for users who prioritize **instant responsiveness, zero-lag web browsing, and effortless document editing** over battery conservation, this utility configures macOS kernel parameters, WindowServer rendering flags, and WebKit acceleration.

---

## 🚀 What It Does

* **Locks Peak Performance**: Disables power-saving downclocking and power nap delays.
* **Instant WindowServer GUI**: Eliminates UI blur and window animations, speeding up Intel Xe-LP frame dispatch.
* **Hardware WebKit Acceleration**: Forces GPU-accelerated drawing for silky smooth 60 FPS scrolling in Safari.
* **Strips Background Overhead**: Unloads diagnostic daemons that consume memory and CPU cycles.

---

## 📦 How to Run

Open Terminal on your HP Pavilion x360 after boot and execute:

```bash
git clone https://github.com/omsoni-codes/HP-Pavilion-UltraSmooth-Tuner.git
cd HP-Pavilion-UltraSmooth-Tuner
chmod +x tune_smooth.sh
./tune_smooth.sh
```

---

## ⚖️ License

Released under the **MIT License**. Copyright (c) 2026 **Om Soni (omsoni-codes)**. All rights reserved.
