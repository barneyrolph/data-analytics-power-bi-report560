# Data Analytics Power BI Report
-----------
This repo documents a data analysis PowerBI project I have worked on to practise my skills.

Here are the steps I followed to create a mock report using some sales data:

- Imported data from several sources including: a csv fiel, a zip folder of csv files which I merged into one table, Azure Blob Storage, an SQL database.
- Removed data either because it was unneeded, duplicated or sensitive.
- Applied consistent formatting to all tables.
- Created a date table, adding coloumns for:
  - Day of the week
  - Months number
  - Months name
  - Quarter
  - Year
  - Start of year
  - Start of quarter
  - Start of month
  - Start of week
- Built a star schema with the necessary relationships for the model.
- Created a measures table with measures for:
  - Total orders
  - Total revenue
  - Total profit
  - Total customers
  - Total quantity (of items sold)
  - Profit YTD
  - Revenue YTD
- Created date and geography hierarchies for future granular analysis.
- Created four report pages: executive summary, customer detail, product detail and stores map.
- Built the customer detail page including:
  - Headline cards
  - Summary charts of the total orders by different categories
  - Line graph of total customers against time
  - A top 20 customers table
  - Cards displaying the details of the top customer
  - A data slicer to filter everything by year

![Alt text](/screenshots/customer_detail_page.png?raw=true "Customer Detail Page")
 
- Built the executive summary report page
  - Headline cards
  - Revenue trending line chart
  - Donut charts for revenue by country and store type
  - Bar chart of orders by catergory
  - KPI visuals for revenue, profit and orders

![Alt text](/screenshots/executive_summary_page.png?raw=true "Executive Summary Page")
 
- Created a product detail page
  - Gauge visuals for orders, revenue and profit
  - Area chart for revenue by product category
  - Top products table
  - Scatter graph of orders by profitability
  - Slicer toolbar
 
![Alt text](/screenshots/product_detail_page.png?raw=true "Product Detail Page")

![Alt text](/screenshots/slicer_toolbar.png?raw=true "Slicer Toolbar")


- Created a stores map page
  - Added a map visual showing stores and a country slicer
  - Added a stores drillthrough page allowing for further visualisation of specif stores when selected
  - Added a profit target gauge tooltip that displays when hovering over a store on the map
 
  
![Alt text](/screenshots/stores_map_page.png?raw=true "Stores Map Page")


![Alt text](/screenshots/store_drillthrough.png?raw=true "Store Drillthrough")


![Alt text](/screenshots/tooltip.png?raw=true "Tooltip")


