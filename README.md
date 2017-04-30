# Digital Image Processing Project
Digital image processing project for implementing [Enhancements of
mircocalcifications in digital mammograms](http://ieeexplore.ieee.org/document/6208120/) using MATLAB

Call the function defined in dip.m on any microcalcification image. It'll return the binary image showing microcalcifications

It uses to techniques to filter mammograms:
* Wavelet decomposition upto level-3.
* Morphological closing operation after wavelet decomposition to unify
  microcalcification patches.

## Assumptions:
* On a 128x128 patch, microcalcifiactions are 5x5 or larger.

## Sample run
![](mdb148.jpg =500x "Original image")
![](mdb148_final.jpg =500x "Image after microcalcification filtering")
