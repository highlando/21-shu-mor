# Time Schedule

| Date | Times | Content |
| ---- | :-----: | ------- |
| 21 June |  14:10-14:55 | 1.1 Introduction to LTI Systems :microphone: |
|         |  15:05-15:50 | 1.2 Introduction to LTI Systems :microphone: |
| 22 June |  14:10-14:55 | 2.1 Mathematical Basics of LTI Systems I :camera: |
|         |  15:05-15:50 | 2.2 Exercise 1 :clipboard: |
| 23 June |  14:10-14:55 | 2.3 Solutions to Exercise 1 :camera: |
|         |  15:05-15:50 | 3.1 Mathematical Basics of LTI Systems II :camera: |
| 24 June |  14:10-14:55 | 3.2 Exercise 2 :clipboard:|
|         |  15:05-15:50 | 3.3 Solutions to the Exercise :camera: |
| 25 June |  14:10-14:55 | 4.1 Introduction to MOR 1 :camera: |
|         |  15:05-15:50 | 4.2 Introduction to MOR 2 :camera: |
| 28 June |  08:00-08:45 | 5.1 Projection Based MOR :microphone: |
|         |  08:55-09:40 | 6.1 Mathematical Basics of Balanced Truncation :microphone: |
| 29 June |  14:10-14:55 | 6.2 Exercise 3 :clipboard: |
|         |  15:05-15:50 | 6.3 Solutions to Exercise 3 :microphone: |
| 30 June |  14:10-14:55 | 7.1 Balanced Truncation 1 :camera: |
|         |  15:05-15:50 | 7.2 (Practical) Exercise 4 :clipboard: |
| 01 July |  14:10-14:55 | 7.3 Solutions to Exercise 4 :microphone: |
|         |  15:05-15:50 | 7.4 LQG-Balanced Truncation for incompressible Flows :camera: |
| 02 July |  08:00-08:45 | 8.1 POD and DMD for Burgers' Equation :microphone: |
|         |  08:55-09:40 | 8.2 Summary of the Lecture :microphone: |

All times are Beijing time.

 * :microphone: - live session
 * :camera: - prerecorded session
 * :clipboard: - exercise (on your own)

# The Lecture

:clipboard: [The script (might get updates in the course of the lecture)](shmorsc.pdf)

## 1 Introduction to LTI Systems

*I will start my short course by introducing the class of Linear Time Invariant
(LTI) systems and the control related system theory for them. Although LTI
systems can be used to model many real life processes, the mathematical theory
for control is very general.*

 * An illustrative example
 * The state-space representation and transfer functions
 * Controllability/Observability
 * Realizations

Also check my whiteboard notes of the lecture [11](files/11-21.jpg) and [12](files/12-21.jpg)

## 2 Mathematical Basics of LTI Systems 1

1. Screencast with introduction to math basics and explanations of the 1st exercise
sheet on
  * Hautusz' criteria
  * Equivalence transformations
2. Please download and solve the [1st exercise sheet](files/22-exi.pdf).

<!--
3. Screencast with the solutions.

[The solutions whiteboard](blackboards/23-exi.png)

## 3 Mathematical Basics of LTI Systems 2

1. Screencast with introduction to math basics and explanations of the 2nd exercise
sheet on
  * Stability and Minimality,
  * System Norms.
2. Please download and solve the [2nd exercise sheet](exii.pdf).
3. Screencast with the solutions.

[The lecture whiteboard](blackboards/31-stability.png)
 * stability

[The solutions whiteboard](blackboards/33-exii.png)

## 4 Introduction to Model Reduction

*This lecture will be on the fundamental motivations and mathematical
notions of model reduction in general and for LTI in particular. This lecture
will provide some illustrative examples for the use and results of model
reduction.*

[The lecture whiteboard](blackboards/412-invariance-intro-mor.png)
 * Recap on *A-invariance*
 * Why model reduction?

## 5 Projection Based Model Reduction

*In this lecture, I will introduce the fundamental model reduction approach
that uses projections and explain several ways to compute these projections.*

 * Projections and projectors
 * Projection and Interpolation

[The lecture whiteboard](blackboards/512-projections-gramians.png)
 * MOR and projections
 * The Gramians

## 6 Mathematical Basics of Balanced Truncation

1. Introduction to math basics and explanations of the 3rd exercise sheet on
  * Gramians of LTI systems,
  * Transformations, Invariants, and
  * Balancing of the Gramians.
2. Please download and solve the [3rd exercise sheet](exiii.pdf).
3. Live discussion of the solutions.

[whiteboard of the exercise](blackboards/61-exiii-gramians.png)


## 7 Balanced Truncation

1. In lecture 7.1, we will learn about Balanced Truncation which is a powerful model
reduction technique for stable LTI systems.

[whiteboard on balanced truncation](blackboards/62-balanced-truncation.png)

2. Please download and solve the [4th exercise sheet](exiv.pdf).
  * You can use `MATLAB` (if you don't have the *control systems toolbox*, use
    the routine files provided below)
  * or `octave` with `pkg install -forge control` and `pkg load control`.
  * Here are the [data and routine files](exiv-data.zip).

3. Live demonstration of the solutions to *Exercise 4* by the students or by the
   lecturer.
  * Solutions [1](bt-min.m) [2](bt-beam.m)

4. Lecture of LQG-BT which combines controller design and model reduction by
   Balanced Truncation and its application to flow control.

[whiteboard](blackboards/712-pract-ex-daes.png)

## 8 Outlook and Summary

In the last lecture, I will showcase how the methods of *Proper Orthogonal
Decomposition* (POD) and *Dynamical Mode Decomposition* (DMD) work for the 2D
*Burgers equation*. [see my blog post](https://www.janheiland.de/post/fenics-burger-pod-dmd/).

### POD for Burgers

[Whiteboard with the POD](blackboards/81-pod.png)

### Wrapup

Finally, we will wrap up the contents of the course.

[Whiteboard of the Summary](blackboards/82-wrapup.png)

### Studying abroad (maybe a Master in Magdeburg)

* [page with links to the Master programmes in English](https://www.ovgu.de/unimagdeburg/en/Study/Study+Programmes/Study+Programmes+in+English-p-48822.html)
* [Whiteboard with the notes](blackboards/83-study-abroad.png)

-->

# Little Chinese Dictionary

| Hello | 你好 |
--------|--------
| Matrix| 矩阵 |
| Vector| 向量 |
| Eigenvalue |特征值|
| Projection |投影|
| Subspace |子空间|
| Interpolation |插值|
| Model |模型|
| System |系统|
| Transfer function |传递函数|
| Stable |稳定|
| Truncation |截断|
