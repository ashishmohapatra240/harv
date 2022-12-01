from math import *
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd

# gaussian function
def f(mu, sigma2, x):
    
    coefficient = 1.0 / sqrt(2.0 * pi *sigma2)
    exponential = exp(-0.5 * (x-mu) ** 2 / sigma2)
    return coefficient * exponential

# the update function
def update(mean1, var1, mean2, var2):
  
    # Calculate the new parameters
    new_mean = (var2*mean1 + var1*mean2)/(var2+var1)
    new_var = 1/(1/var2 + 1/var1)

    return [new_mean, new_var]


# the motion update/predict function
def predict(mean1, var1, mean2, var2):
    
    # Calculate the new parameters
    new_mean = mean1 + mean2
    new_var = var1 + var2
    
    return [new_mean, new_var]
df = pd.read_csv(r'C:\Users\harsh\Downloads\kalman\moisture - Sheet1.csv')
pf = pd.read_csv(r'C:\Users\harsh\Downloads\kalman\temperature - Sheet1.csv')
measurements = list(map(int,df.columns.values))
motions = list(map(int,pf.columns.values))
print(measurements)
print(motions)
# initial parameters
measurement_sig = 4.
motion_sig = 2.
mu = 0.
sig = 10000.



for n in range(len(measurements)):
    # measurement update, with uncertainty
    mu, sig = update(mu, sig, measurements[n], measurement_sig)
    print(mu, sig, measurements[n], measurement_sig)
    print('Update: [{}, {}]'.format(mu, sig))
    # motion update, with uncertainty
    mu, sig = predict(mu, sig, motions[n], motion_sig)
    print('Predict: [{}, {}]'.format(mu, sig))

    
# print the final, resultant mu, sig
print('\n')
print('Final result: [{}, {}]'.format(mu, sig))

mu = mu
sigma2 = sig

# define a range of x values
x_axis = np.arange(-20, 20, 0.1)

# create a corresponding list of gaussian values
g = []
for x in x_axis:
    g.append(f(mu, sigma2, x))

# plot the result 
plt.plot(x_axis, g)

mu = 0
sigma2 = 10000

# define a range of x values
x_axis = np.arange(-20, 20, 0.1)

# create a corresponding list of gaussian values
g = []
for x in x_axis:
    g.append(f(mu, sigma2, x))

# plot the result 
plt.plot(x_axis, g)