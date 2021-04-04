from IPython import get_ipython
get_ipython().system('pip install space-bandits'

import numpy as np
import pandas as pd
from google.colab import files
import math
import matplotlib.pyplot as plt
from space_bandits import LinearBandits 

df = pd.read_csv('input.csv')
df.info()
num_actions = 3 #max number of action that can be taken [0-2]
num_features = 3 #total input values that is context
model = LinearBandits(num_actions, num_features) 

#Split the dataset into two, df_train and df_test

for i in range(len(df_train)):
    context = df_train['c1', 'c2', 'c3'] 
    action =  int(df_train['Action'])
    reward =  int(df_train['Reward']
    model.update(context, action, reward)

print(model.action(df_test['c1', 'c2', 'c3']))
print(model.expected_values(df_test['c1', 'c2', 'c3']))



