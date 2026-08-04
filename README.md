# Signals and Systems Course - Spring 2025 (1404) 🎓

## 📚 About This Repository
This repository contains computer assignments and projects for the **Signals and Systems** course, completed in Spring 1404 (2025) under the supervision of **Dr. Akhavan** at the **University of Tehran**. The assignments progressively cover signal analysis, image processing, machine learning classification, digital communications (ASK/FSK), radar systems, music synthesis, and dynamic system modeling using **MATLAB** and **Simulink**.

---

## 📋 Assignment Overview

### 🔹 CA1: Signal Analysis & Correlation-Based Estimation
**Topic:** Cross-correlation, radar ranging, and linear regression.

This assignment focuses on statistical analysis of signals and correlation techniques. The first part implements correlation algorithms to estimate distance in radar systems by analyzing the time delay between transmitted and received signals. The second part covers linear regression and Least Squares curve fitting, demonstrating how mathematical tools can extract meaningful parameters (slope and intercept) from noisy measurement data, with robustness testing under varying noise levels.

---

### 🔹 CA2: License Plate Detection — Image Processing Pipeline
**Topic:** 2D signal processing, morphological operations, and character segmentation.

A complete computer vision pipeline designed for automatic license plate recognition in both **static images** and **video streams**. The project covers the entire workflow from image preprocessing (resizing, grayscale conversion, adaptive thresholding, binarization, morphological operations) to character segmentation for both **English and Persian** alphabets. It demonstrates practical application of noise removal, contour analysis, and pattern matching techniques to localize and extract license plate information from complex backgrounds.

---

### 🔹 CA3: Steganography, Curve Fitting & Machine Learning
**Topic:** Information hiding, sinusoidal fitting, and supervised classification.

This comprehensive assignment consists of three distinct parts:

- **Part 1 — Steganography:** Implementing data hiding techniques to embed text messages within images using Least Significant Bit (LSB) manipulation, where busy blocks of the image are identified for optimal and imperceptible data embedding.
- **Part 2 — Curve Fitting:** Performing sinusoidal curve fitting on 1000 data points using three different methods (`fittype`, `fitoptions`, and custom optimization) to compare accuracy and convergence rates.
- **Part 3 — Machine Learning:** Applying supervised classification algorithms (Decision Trees, SVM, Ensemble methods) on a diabetes dataset with 600 training and 100 validation samples across six features (Glucose, Blood Pressure, Skin Thickness, Insulin, BMI, Age), achieving approximately **78% classification accuracy** for diabetes prediction.

---

### 🔹 CA4: Amplitude Shift Keying (ASK) Communication System
**Topic:** Digital modulation, matched filtering, and noise analysis.

This project implements a digital communication system using **Amplitude Shift Keying (ASK)** modulation for transmitting text messages. The assignment involves converting text messages to binary sequences using a custom character mapset, modulating them onto a carrier sine wave, and analyzing system performance under **Additive White Gaussian Noise (AWGN)** at different bit rates. The receiver employs cross-correlation (matched filtering) for symbol detection and synchronization, investigating the relationship between signal-to-noise ratio, bit error rate, and transmission reliability.

---

### 🔹 CA5: Frequency Shift Keying (FSK) & Spectral Analysis
**Topic:** FFT-based spectral analysis, frequency resolution, and FSK modulation.

An advanced exploration of frequency-domain signal analysis and digital transmission using **Frequency Shift Keying (FSK)** modulation. The assignment examines the impact of frequency resolution on spectral analysis accuracy, studies the effects of noise and bandwidth limitations on FSK system performance, and analyzes how different parameters affect the reliability of digital data transmission. Students perform FFT-based spectral analysis to distinguish between different frequency states representing binary data.

---

### 🔹 CA6: Doppler Radar & Music Synthesis
**Topic:** Doppler shift estimation, multi-object detection, and audio signal generation.

This assignment consists of two major applications:

- **Part 1 — Doppler Radar:** Implementing a radar system to detect **distance** (via time delay) and **velocity** (via Doppler frequency shift) of objects. The project includes studying noise sensitivity (distance estimation is more noise-sensitive than velocity), detecting **multiple objects simultaneously** by identifying multiple peaks in the frequency spectrum, and handling special cases like objects with identical speeds or distances.
- **Part 2 — Music Synthesis:** Synthesizing music by generating sine waves at specific musical note frequencies, composing and playing melodies including the **Game of Thrones theme song**, and implementing automatic note detection from recorded audio using FFT analysis to identify individual notes from their frequency signatures.

---

### 🔹 CA7: Dynamic System Simulation — Vehicle Suspension
**Topic:** Mass-Spring-Damper modeling, damping analysis, and Simulink simulation.

This final project focuses on modeling and analyzing dynamic control systems, specifically **vehicle suspension systems**. The assignment investigates three damping scenarios:

| Damping Coefficient | Behavior | Assessment |
|---|---|---|
| **B = 0** (Undamped) | Continuous oscillations without energy dissipation | ❌ Unacceptable |
| **B = 2** (Critically Damped) | Optimal response, no oscillation, fastest settling | ✅ **Optimal** |
| **B = 100** (Overdamped) | Slow response with excessive damping | ⚠️ Too sluggish |

Students determine that **critical damping (B = 2)** is optimal for vehicle suspension as it absorbs road shocks efficiently without transferring oscillations to the cabin. The project includes solving second-order differential equations analytically using MATLAB's symbolic toolbox (`dsolve`) and verifying results through Simulink block diagram simulations.

---

## 🛠️ Tools & Technologies

| Category | Tools |
|----------|-------|
| **Software** | MATLAB R2020a or later |
| **Simulation** | Simulink |
| **Toolboxes** | Signal Processing Toolbox, Image Processing Toolbox, Statistics and Machine Learning Toolbox |
| **File Formats** | `.m`, `.mlx`, `.slx`, `.mat`, `.csv`, `.wav`, `.mov`, `.jpg` |

---

## 📂 Repository Structure

```text
Signals-and-Systems-Course-Spring04/
├── CA1/          # Signal Analysis & Correlation-Based Estimation
├── CA2/          # License Plate Detection (English & Persian)
├── CA3/          # Steganography, Curve Fitting & ML Classification
├── CA4/          # ASK Communication System
├── CA5/          # FSK & Spectral Analysis
├── CA6/          # Doppler Radar & Music Synthesis
├── CA7/          # Vehicle Suspension Simulation (Simulink)
└── README.md     # This file
```

---

## 🚀 How to Run

### For MATLAB Assignments (CA1–CA6):
```matlab
% Navigate to the desired assignment folder
cd CA1
% Run the main script or open the Live Script
run calc_corr.m   % Or open any .mlx file in MATLAB
```

### For Simulink Models (CA7):
1. Open **MATLAB** and navigate to the `CA7` folder.
2. Double-click any `.slx` file to open it in **Simulink**.
3. Run the simulation from the Simulink toolbar and inspect Scope outputs.

### For Live Scripts (`.mlx`):
1. Open the `.mlx` file directly in MATLAB.
2. Run sections individually or execute the entire script.

---

## 📊 Reports & Results

Each assignment includes detailed documentation:
- `CA*_810102443.pdf` — Final PDF reports with derivations and results
- `CA*_810102443.docx` — Original Word documents
- `CA*.mlx` — MATLAB Live Scripts with embedded results and visualizations

---

## 👨‍💻 Author
**Amirali Dehghani** | Electrical Engineering Student (Control)

---

## 📝 License
This project is licensed for **educational purposes only**.

---

<div align="center">

**⭐ If you found this repository helpful, please give it a star!**

</div>
