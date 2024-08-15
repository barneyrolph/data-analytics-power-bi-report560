--What's the total number of staff in the UK?

SELECT SUM("staff numbers")
FROM dim_stores
WHERE country_code = 'GB'