import pandas as pd

df = pd.DataFrame(columns=["id", "brand", "price", "mileage"])

df.loc[len(df)] = [101, "Toyota", 20000, 15]
df.loc[len(df)] = [102, "Honda", 22000, 18]
df.loc[len(df)] = [103, "BMW", 35000, 12]

print(df)