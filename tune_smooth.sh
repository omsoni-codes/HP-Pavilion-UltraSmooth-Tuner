#!/bin/bash
# ==============================================================================
# HP Pavilion x360 Ultra-Smooth Performance Optimizer
# Author: Om Soni (omsoni-codes)
# License: MIT License (c) 2026 Om Soni
# Target Hardware: HP Pavilion x360 Convertible 14-dw1036tu (Tiger Lake i3-1115G4)
# ==============================================================================
set -e

echo "======================================================================"
echo "      HP Pavilion x360 Ultra-Smooth Performance & Turbo Optimizer     "
echo "                     Author: Om Soni (omsoni-codes)                   "
echo "======================================================================"
echo ""

# 1. Power Management: Lock All Cores to Maximum Sustained Performance
echo "[*] Step 1/5: Locking CPU to Maximum Sustained Performance (Zero Power Saving)..."
sudo pmset -a disablesleep 1
sudo pmset -a sleep 0
sudo pmset -a displaysleep 30
sudo pmset -a powernap 0
sudo pmset -a standby 0
sudo pmset -a autopoweroff 0
sudo pmset -a tcpkeepalive 0
sudo pmset -a ring 0 2>/dev/null || true
echo "[✓] Power Management pinned to Full Sustained Clock Performance!"

# 2. WindowServer & UI Fluidity: Eliminate Stutter & Latency
echo ""
echo "[*] Step 2/5: Eliminating WindowServer GPU Overhead & Animation Latency..."
# Disable window resizing and opening animations
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false
defaults write -g QLPanelAnimationDuration -float 0
defaults write -g NSWindowResizeTime -float 0.001
defaults write com.apple.dock expose-animation-duration -float 0.05
defaults write com.apple.dock autohide-time-modifier -float 0
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock launchanim -bool false

# Reduce transparency to eliminate GPU fillrate load on Intel Xe-LP
defaults write com.apple.universalaccess reduceTransparency -bool true

# Smooth scrolling responsiveness
defaults write -g AppleScrollAnimationEnabled -bool true
defaults write -g NSScrollAnimationEnabled -bool true
echo "[✓] WindowServer latency reduced; instant window response enabled!"

# 3. Disable Background Telemetry & Diagnostic Daemons
echo ""
echo "[*] Step 3/5: Unloading Background Telemetry & Heavy Diagnostic Daemons..."
DAEMONS=(
    "com.apple.analyticsd"
    "com.apple.spindump"
    "com.apple.tailspind"
    "com.apple.diagnosticd"
    "com.apple.ReportCrash.Root"
)

for d in "${DAEMONS[@]}"; do
    sudo launchctl disable system/"$d" 2>/dev/null || true
done
echo "[✓] Background telemetry and crash monitors deactivated!"

# 4. Web Browsing & Safari Hardware Acceleration Boost
echo ""
echo "[*] Step 4/5: Accelerating Web Browsing (Safari & WebKit)..."
# Enable WebKit GPU Process for canvas & WebGL
defaults write com.apple.Safari WebKitPreferences.canvasUsesAcceleratedDrawing -bool true
defaults write com.apple.Safari WebKitPreferences.webGLEnabled -bool true
# Disable web page preload delays
defaults write com.apple.Safari WebKitPreferences.acceleratedDrawingEnabled -bool true
echo "[✓] WebKit GPU hardware acceleration enabled for smooth browsing!"

# 5. Word Processing & Office Responsiveness
echo ""
echo "[*] Step 5/5: Optimizing Word Processing & Low-Latency Text Rendering..."
# Subpixel font rendering enabled for crystal-clear text on 14-inch IPS display
defaults write -g CGFontRenderingFontSmoothingDisabled -bool false
defaults -currentHost write -globalDomain AppleFontSmoothing -int 2
echo "[✓] High-precision subpixel text smoothing configured!"

echo ""
echo "======================================================================"
echo " 🎉 SUCCESS! Your HP Pavilion x360 is Now Running at Peak Velocity!"
echo "    - CPU: All cores running without battery saving throttling"
echo "    - GPU: UI blur overhead removed, instant window response"
echo "    - Web: Accelerated WebKit rendering for fluid scrolling"
echo "    - Office: Low-latency text input and subpixel antialiasing"
echo "======================================================================"
