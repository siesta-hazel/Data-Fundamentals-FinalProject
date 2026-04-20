import pandas as pd

# Load dataset
df = pd.read_csv("sales_data.csv")

# Display first rows
print("First Rows")
print(df.head())

# Dataset info
print("Dataset Info")
print(df.info())

# Summary stats
print("Summary stats")
print(df.describe())

# Create total_sales column
print("Total sales column done")
df['total_sales'] = df['quantity'] * df['price']

# Total revenue
total_revenue = df['total_sales'].sum()
print("Total Revenue:", total_revenue)

# Most sold product
top_product = df.groupby('product')['quantity'].sum().idxmax()
print("Top Product:", top_product)

# Sales by city
print("Sales By City")
city_sales = df.groupby('city')['total_sales'].sum()
print(city_sales)

# Summary statistics
print("Uummary Statistics")
print(df.describe())

