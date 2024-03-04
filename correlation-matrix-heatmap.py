# Heatmap 
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt
import numpy as np
sns.set_theme(style="white")
# Load only specific columns from your CSV data into a Pandas DataFrame
df = pd.read_csv('dw_csv.csv', usecols=['CT_SLEEPSCORE', 'CT_FASTINGHOURS', 'CT_STRESS', 'CT_INTENSITYMINUTES'])
# Compute the correlation matrix
corr = df.corr()
# Generate a mask for the upper triangle
mask = np.triu(np.ones_like(corr, dtype=bool))
# Set up the matplotlib figure
f, ax = plt.subplots(figsize=(11, 9))
# Generate a custom diverging colormap
cmap = sns.diverging_palette(230, 20, as_cmap=True)
# Draw the heatmap with the mask and correct aspect ratio
sns.heatmap(corr, mask=mask, cmap=cmap, vmax=.3, center=0,
square=True, linewidths=.5, cbar_kws={"shrink": .5}, annot=True, fmt=".2f")
# Show the plot
