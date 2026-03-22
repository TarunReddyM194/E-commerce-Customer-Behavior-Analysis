import pandas as pd

# Load datasets
orders = pd.read_csv("../dataset/olist_orders_dataset.csv")
order_items = pd.read_csv("../dataset/olist_order_items_dataset.csv")
products = pd.read_csv("../dataset/olist_products_dataset.csv")

# Merge datasets
df = orders.merge(order_items, on="order_id")
df = df.merge(products, on="product_id")

# Top categories by revenue
top_categories = df.groupby("product_category_name")["price"].sum().sort_values(ascending=False).head(10)

print("Top Categories by Revenue:")
print(top_categories)

# Monthly orders trend
orders["order_purchase_timestamp"] = pd.to_datetime(orders["order_purchase_timestamp"])

orders["month"] = orders["order_purchase_timestamp"].dt.to_period("M")

monthly_orders = orders.groupby("month")["order_id"].count()

print("\nMonthly Orders Trend:")
print(monthly_orders)