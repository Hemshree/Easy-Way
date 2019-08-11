import matplotlib.pyplot as plt
from sklearn import linear_model
import pandas as pd
import numpy as np

df = pd.read_csv('arrivaltime.csv')
print(df.head())
print(df.shape)
reg=linear_model.LinearRegression()
train=pd.to_datetime(df['arrival_time'])
reg.fit()
reg.predict()
