# Used-Cars-Price-Analysis
End-to-end used car price analysis using Python, SQL, and Power BI with business insights.

This project analyzes used car listings collected through web scraping to identify the key factors affecting car prices and uncover actionable market insights.

The analysis includes data collection, cleaning, exploratory data analysis (EDA), SQL-based querying, and interactive dashboard visualization.


Business Objective :

Identify factors influencing used car prices

Analyze price variation by brand, fuel type, transmission, and year

Study depreciation trends

Provide insights for dealers and buyers


Tech Stack :

Python

Selenium (Web Scraping)

BeautifulSoup (HTML Parsing)

Pandas & NumPy (Data Processing)

Matplotlib & Seaborn (Visualization)

SQL (Data querying & aggregation)

Power BI (Interactive dashboard)


Web Scraping (Data Collection) using steps:

Selenium for dynamic website interaction

BeautifulSoup for extracting structured information

Extracted Fields:

Car name

Brand

Year of Manufacture

KMS Driven

Fuel Type

Transmission

EMI

Price

Car Age

Location

Note : Due to size limitations in GitHub outputs of webscraping file were removed and size was reduced.


Data Cleaning Steps :

Checked for duplicates (No duplicates were found)

checked for missing values (No null values were found)

Standardized column names

Converted price,emi and km_driven to numeric format

Added new column

Detected outliers using IQR method


Exploratory Data Analysis :

1.City wise Cars Distribution

2.Average Cars by city

3.Fuel type Distribution

4.KMS Driven vs Average Price

5.Brand wise Distribution

6.Transmission type vs Average price

7.Car age vs Average price


SQL Analysis :

Analysed various factors like :

Total Cars , Avg Price , Highest Car Price , Lowest Car Price , Total Brands , Newest Model Year , Oldest Model Year , Total Brand Listings , Average Price by Brand ,

City wise cars count , car age vs car price , KMS Driven vs Price , Transmission type vs Pricing , Fuel type demand and pricing , EMI Affordability , Best value cars 


Power BI Dashboards : 

The interactive dashboards include :

1.Overall Cars24 Analysis Reports

2.Car price variation by Brand

3.Best Cars with Good quality and Less price


Key Insights :

Car price is strongly influenced by vehicle age and kilometers driven .

Brand reputation plays a major role in price retention . 

Automatic transmission cars are priced higher compared to manual cars, reflecting increasing urban demand. 

Outliers in pricing are often linked to luxury brands, very low mileage, or rare model variants. 


Business Impact :

This analysis helps:

Used car dealers optimize pricing strategies

Buyers understand fair market value

Analysts track resale trends

Platforms improve pricing recommendations


