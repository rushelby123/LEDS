# LEDS
Learning and estimation of dynamical systems assignment

# System Identification and Classification Project

## Overview
This project, developed by **Gabriele Ruscelli** for the **LEDS Exam on July 25, 2023**, consists of two main exercises:
1. **System Identification**: Estimating an unknown linear model from provided signals.
2. **Classification**: Creating a classifier to categorize data into distinct classes.

The project is implemented in MATLAB and includes detailed steps for model estimation, validation, and classification. Below is a breakdown of the two exercises and their respective components.

---

## Exercise 1: System Identification

### Objective
The goal of this exercise is to estimate an unknown linear model from provided signals. The signals could correspond to either an **ARX (AutoRegressive with eXogenous input)** model or a **FIR (Finite Impulse Response)** model. The task involves:
1. Identifying the model structure (ARX or FIR).
2. Estimating the model parameters using the **Least Squares (LS)** method.
3. Validating the model using statistical tests and cross-validation.

### Key Steps
1. **Data Collection**:
   - A training set and a validation set are generated using the `IdentifyThis` function.
   - Input (`u`) and output (`y`) signals are collected for both sets.

2. **Model Structure Analysis**:
   - **FIR Model**: A static model where the output at time `t` depends only on the input.
   - **ARX Model**: A dynamic model where the output at time `t` depends on both past outputs and inputs.
   - The autocorrelation of the input signal is analyzed to ensure it is suitable for estimation.

3. **Model Order Estimation**:
   - The **Minimum Description Length (MDL)** criterion is used to determine the optimal model order for both FIR and ARX models.
   - The model order is selected based on the MDL function's behavior.

4. **Model Estimation**:
   - The Least Squares method is applied to estimate the coefficients of the FIR and ARX models.
   - The estimated coefficients are displayed.

5. **Model Validation**:
   - Residuals are computed and analyzed to check if they resemble white noise.
   - Statistical tests (e.g., Anderson test, chi-square test) are performed to validate the model.
   - Cross-validation is used to assess the model's predictive performance.

6. **Conclusion**:
   - An F-test is used to compare the FIR and ARX models, concluding that the FIR model is more suitable for the given data.

---

## Exercise 2: Classification

### Objective
The goal of this exercise is to create a classifier that can categorize data into distinct classes based on a training set and then test its performance on a separate test set. The classifier is built using **Linear Discriminant Analysis (LDA)**.

### Key Steps
1. **Data Collection**:
   - A training set (`Utrain`, `Ytrain`) and a test set (`Utest`, `Ytest`) are generated using the `ClassifyThose` function.
   - The training set is divided into three classes (`C1`, `C2`, `C3`).

2. **Data Visualization**:
   - The training data is plotted to visualize the distribution of the three classes in 2D space.

3. **Linear Discriminant Analysis (LDA)**:
   - The mean and covariance matrices for each class are computed.
   - A common covariance matrix is calculated and used to define the decision boundaries.
   - The posterior probabilities for each class are estimated using the Gaussian distribution.

4. **Classification**:
   - The classifier assigns each data point in the test set to one of the three classes based on the highest posterior probability.
   - Misclassified points are counted and their percentage is calculated.

5. **Results**:
   - The classified test set is plotted along with the decision boundaries.
   - The number of misclassified points is displayed, showing that the classifier performs well with a low error rate.

---

## MATLAB Functions
The project uses several custom MATLAB functions, including:
- `IdentifyThis`: Generates the training and validation datasets for system identification.
- `LS`: Implements the Least Squares method for model estimation.
- `MDL`: Computes the Minimum Description Length criterion for model order selection.
- `Cost_function`: Evaluates the cost function for model validation.
- `Anderson_test`: Performs the Anderson whiteness test on residuals.
- `ClassifyThose`: Generates the training and test datasets for classification.
- Various plotting functions to visualize data and results.

---

## How to Use
1. Clone the repository and ensure all MATLAB files are in the same directory.
2. Open the `Surname_Name.mlx` file in MATLAB.
3. Run the code section by section to visualize the results and understand the process.
4. Modify parameters (e.g., model order, test set size) to explore different scenarios.

---

## Conclusion
This project demonstrates a comprehensive approach to system identification and classification using MATLAB. The system identification exercise successfully estimates and validates a FIR model, while the classification exercise builds an effective classifier using Linear Discriminant Analysis. The code is well-documented and can be easily extended for similar tasks.

For any questions or feedback, feel free to contact **Gabriele Ruscelli**.

---

**Note**: Ensure that the `Functions` folder is added to the MATLAB path for the code to run correctly.
