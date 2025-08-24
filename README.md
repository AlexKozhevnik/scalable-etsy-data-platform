# Analytics Platform for an Etsy E-commerce Shop

## 🎯 Problem & Goal

For new e-commerce businesses, especially on platforms like Etsy, data is often siloed across multiple platforms: sales data lives on Etsy, traffic data in Google Analytics, and marketing performance data across various social media channels. This fragmentation makes it difficult for the shop owner to get a holistic view of the business and make informed, data-driven decisions.

The goal of this project is to build a scalable, end-to-end data platform to solve this problem. It aims to centralize all business data into a **Single Source of Truth (SSOT)** to achieve the following:

* **Enable Data-Driven Decisions:** Provide the owner with clear, reliable metrics on sales, marketing, and customer behavior.
* **Create a 360-View of the Business:** Combine data from different sources to understand the full customer journey, from ad impression to final sale.
* **Build a Scalable Foundation:** Establish a modern data architecture that can grow with the business, accommodating new data sources and more complex analytics in the future.

## 🛠️ Tech Stack

* **Data Ingestion:** Airbyte
* **Data Warehouse:** Google BigQuery
* **Data Transformation:** dbt
* **BI & Visualization:** Looker Studio
* **Cloud Platform:** Google Cloud Platform (GCP)
* **Version Control:** Git & GitHub

## 🏗️ Data Architecture

This project follows a modern ELT (Extract, Load, Transform) methodology. The data flows through three distinct layers within the data warehouse:

1.  **RAW Layer:** Airbyte extracts data from all sources (Etsy, GA4, Instagram) and loads it "as-is" into BigQuery datasets. This ensures that the raw, unaltered data is always available.

2.  **STAGING Layer:** dbt models connect to the raw data to perform initial cleaning and preparation. This includes:
    * Casting data types.
    * Renaming columns to a consistent format (`snake_case`).
    * Deduplicating records to ensure data integrity.

3.  **MARTS Layer:** dbt models join the cleaned-up staging tables to create business-centric data marts. These are aggregated, analysis-ready tables that directly answer business questions (e.g., a unified orders table enriched with marketing and traffic source data).

This layered approach ensures modularity, reusability, and maintainability of the data models.

## 📈 Project Roadmap

This project is currently in development.

- [x] **Setup GCP Infrastructure:** BigQuery instance created and configured.
- [x] **Implement Data Ingestion Pipelines (EL):** Airbyte connections for all key sources (Etsy, GA4, Instagram) are active and loading data into BigQuery.
- [x] **Build Staging Layer in dbt:** Core raw tables have corresponding staging models for cleaning and deduplication.
- [ ] **Build Marts Layer in dbt:** Develop final data marts by joining staging models to create business-level views (e.g., `fct_orders`, `dim_customers`).
- [ ] **Implement Data Quality Tests:** Add dbt tests to monitor the health and integrity of the data (e.g., uniqueness, not-null constraints).
- [ ] **Develop BI Dashboard in Looker Studio:** Create a dashboard to visualize key metrics and answer the business questions outlined in the project goal.

## 📬 Contact

This project was created by **Alexander Kozhevnikov**.

Feel free to connect with me on LinkedIn:

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/alexander-kozhevnikov)
