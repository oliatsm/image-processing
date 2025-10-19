# Artificial Intelligence II – Assignment 1  
### Edge Detection using Gaussian and Sobel Filters  
**University of Patras – Department of Electrical and Computer Engineering**  
**Author:** Olympia Tsamou

---

## Overview
This assignment focuses on the **detection of high-frequency regions (edges)** in two grayscale images using **Gaussian smoothing** and **Sobel operators**.  
All processing was implemented in **MATLAB**, using custom functions for convolution, filtering, normalization, and thresholding.

---

## Files and Structure

| File | Description |
|------|--------------|
| `project1.m` | Main script executing all steps and displaying results |
| `convolution.m` | Manual implementation of 2D convolution |
| `gaussianfilter.m` | Applies a 5×5 Gaussian smoothing filter |
| `sobelfilter.m` | Sobel filter for horizontal, vertical, or combined edges |
| `normalize.m` | Normalizes pixel intensities to a given range |
| `threshold.m` | Applies an edge significance threshold |
| `report/Askisi1.pdf` | Original report in Greek |
| `images/grid.png`, `images/Lenna.png` | Input images |

---

## Objectives

1. Apply a **5×5 Gaussian smoothing filter** to two images (`I1`, `I2`).
2. Perform **Sobel edge detection** (horizontal, vertical, and combined).
3. Normalize results in two ways:
   - [min, max] → [0, 255]
   - Zero gradient → brightness value 0
4. Detect edges of **any orientation** (gradient magnitude).
5. Apply a **threshold (T = 40)** to emphasize significant edges.

---

## 1. Gaussian Smoothing

Both images were converted to grayscale and convolved with a 5×5 Gaussian filter (σ = 5/6).

**Observations:**
- The filtered images appear **smoother** and **less noisy**.
- Due to zero-padding, a **black border** appears around the images.

---

## 2. Horizontal Edge Detection (Sobel 3×3)

The Sobel filter for horizontal edges was applied:
\[
G_y = 
\begin{bmatrix}
1 & 2 & 1 \\
0 & 0 & 0 \\
-1 & -2 & -1
\end{bmatrix}
\]

Two types of normalization were performed:

### a. Normalization to [0, 255]
- Points with higher gradient magnitude appear **white**, negative gradients appear **black**.
- Gaussian smoothing reduces noise and produces clearer edge maps.

### b. Normalization with Zero Gradient = 0
- Taking the absolute value makes edges **uniformly bright** regardless of direction.
- However, the **direction information** is lost (e.g., grid lines appear double).

---

## 3. Vertical Edge Detection (Sobel 3×3)

For vertical edges, the transposed Sobel filter was used:
\[
G_x = 
\begin{bmatrix}
-1 & 0 & +1 \\
-2 & 0 & +2 \\
-1 & 0 & +1
\end{bmatrix}
\]

**Observations:**
- The same conclusions apply: normalization improves contrast.
- The vertical features of both images become prominent.

---

## 4. Edge Detection in Any Direction

To detect edges regardless of orientation, both Sobel outputs were combined:

\[
G = \sqrt{H^2 + V^2}
\]

**Results:**
- The combined edge magnitude image clearly highlights object boundaries.
- Gaussian smoothing produces **fewer spurious edges** and **cleaner contours**, especially noticeable in the *Lenna* image.

---

## 5. Edge Significance Thresholding

A **threshold T = 40** was applied:
- Pixels with intensity > 40 are kept.
- Others are set to 0 (black).

**Observations:**
- In the *grid* image, the threshold has minimal effect.
- In *Lenna*, the main contours are enhanced, and fine textures are suppressed.

---

## Conclusions

- The **Gaussian filter** effectively smooths the image and removes noise before edge detection.
- The **Sobel operator** successfully identifies horizontal, vertical, and general edges.
- **Normalization** improves visibility but may remove directionality.
- **Thresholding** isolates major edges and reduces detail clutter.
- The method demonstrates the essential steps of **gradient-based edge detection** used in computer vision.

---

## Execution

Run the main script in MATLAB:

```matlab
>> project1
