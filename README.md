# Probability and Statistics Project

## Overview

This project contains implementations of statistical analysis exercises focusing on Monte Carlo simulation methods and interactive Shiny applications for statistical visualization.


## Exercises

### Exercise 1: Monte Carlo Simulation

Implementation of Monte Carlo methods for estimating distributions and probabilities using various simulation techniques.

**Key objectives:**
- Generate random vectors following uniform distribution U(-1,1)
- Simulate acceptance-rejection methods
- Graphical illustration of simulation results using the five methods described
- Probability estimation using different approaches
- Comparative analysis of simulation methods

**Tasks:**
1. Implement acceptance-rejection method for random vector generation on specific intervals
2. Accept/reject based on probability conditions with N = 1000 independent samples
3. Calculate arithmetic mean and standard deviation for accepted points
4. Simulate using alternative methods and compare coordinate systems
5. Graphical simulation with N = 1000 points showing acceptance region (circular contour)

### Exercise 2: Shiny Application for Statistical Distributions

Interactive Shiny application demonstrating various statistical distributions and their properties.

**Implemented distributions:**
1. **Exponential Distribution**: X₁ ~ Exp(λ), λ > 0
   - Display: X̄(μ = 1/λ) ∈ R, μ > 0, Sk > 0 with fixed μ
   
2. **Geometric Distribution**: X₂ ~ G(p), p ∈ (0,1)
   - Display: X̄(μ = 1/p) ∈ N
   
3. **Beta Distribution**: X₃ ~ Beta(α,β), α > 0, β > 0
   - Display: parameters and distribution characteristics
   
4. **Binomial Distribution**: X₄ ~ B(n,p), n ∈ N, p ∈ (0,1)
   - Display: fixed n with varying p

**Features:**
- Interactive parameter controls
- Real-time distribution visualization
- Statistical measures display
- Comparative analysis tools

### Exercise 3: Advanced Statistical Analysis

Comprehensive statistical analysis exercises covering multiple perspectives:

**Part a)** Probability distribution analysis using logarithmic transformations
- Calculate P(ln q₁) for q₁ ∈ {0,1,2,...,j}
- Analyze intersection probabilities

**Part b)** Sectional analysis with logarithmic distributions
- Work with Var(Z|Z) calculations
- Multiple distribution sampling

**Part c)** Flight planning statistical analysis
- Evaluate probabilities for flight plans in n cities
- Calculate intersection probabilities
- Distribution analysis

**Part d)** Independence testing for samples
- Analyze dependent and independent distributions
- Q-test implementation
- Probability calculations

**Part e)** General grid format analysis
- Distribution across parallel lines
- Length calculations: E(L|L) = E(L₁+L₂+...+Lₖ)
- Implementation using Monte Carlo methods

**Part f)** Unit scaling and interpolation
- Scatter plot analysis for unit features
- Distribution characteristics
- Interval interpolation: E(L|L) = (L₁+L₂+...+Lₖ)/k

## Technologies Used

- **R**: Primary programming language
- **Shiny**: Interactive web applications
- **ggplot2**: Data visualization
- **Monte Carlo methods**: Simulation techniques
- **Statistical distributions**: Various probability distributions

## Installation

```bash
# Install required R packages
install.packages(c("shiny", "ggplot2", "stats"))

# Clone the repository
git clone [repository-url]
cd [project-directory]
```

## Usage

### Running Exercise 1 (Monte Carlo Simulations)
```r
# Navigate to exercise 1 directory
source("exercitiul_1/simulation.R")

# Run Monte Carlo simulation with N = 1000
run_monte_carlo(n = 1000)
```

### Running Exercise 2 (Shiny Application)
```r
# Launch the Shiny app
shiny::runApp("exercitiul_2")
```

### Running Exercise 3 (Statistical Analysis)
```r
# Run specific analysis parts
source("exercitiul_3/analysis.R")
```

## Key Concepts

- **Monte Carlo Simulation**: Numerical technique using random sampling for probability estimation
- **Acceptance-Rejection Method**: Algorithm for generating random samples from complex distributions
- **Statistical Distributions**: Various probability distributions and their properties
- **Interactive Visualization**: Real-time parameter adjustment and visual feedback
- **Comparative Analysis**: Evaluating different statistical methods and their effectiveness

## Results and Outputs

- Graphical representations of simulation results
- Statistical summaries (mean, variance, standard deviation)
- Interactive plots and distributions
- Probability estimates and confidence intervals
- Comparative analysis charts

## Academic Context

This project is part of a probability and statistics course, demonstrating practical applications of:
- Random variable generation
- Distribution theory
- Statistical inference
- Monte Carlo methods
- Interactive data visualization

## Authors

Vlad Ionescu - Computer Science Student

Antonio Grosu - Computer Science Student

## License

Academic project for educational purposes.

## References

- Monte Carlo Methods in Statistical Physics
- R Shiny Documentation
- Statistical Distribution Theory
- Probability and Random Processes
