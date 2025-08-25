SELECT 
  Order_ID order_id,
  PARSE_DATE('%m/%d/%Y', Order_Date) order_date,
  PARSE_DATE('%m/%d/%Y', Funds_Available) funds_available_date,
  Order_Type order_type,
  LOWER(Status) status,
  CASE  WHEN LENGTH(Buyer) > LENGTH(Buyer_Name) THEN Buyer
        WHEN LENGTH(Buyer_Name) > LENGTH(Buyer) THEN Buyer_Name
        WHEN Buyer IS NOT NULL THEN Buyer
        ELSE Buyer_Name 
  END customer_full_name,
  Buyer_Username customer_username,
  CAST(Listing_Amount as FLOAT64) listing_price,
  CAST(Gross_Amount as FLOAT64) gross_amount,
  CAST(Fees as FLOAT64) etsy_fees,
  CAST(Net_Amount as FLOAT64) net_amount,
  CAST(Refund_Amount as FLOAT64) refund_amount,
  CAST(VAT_Amount as FLOAT64) vat_amount,
  Listing_Currency listing_currency,
  Gift_Card_Applied_ gift_card_applied
FROM {{source('etsy', 'etsy_paiments_EtsyDirectCheckoutPayments2025')}}
