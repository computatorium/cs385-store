SET @sale_date = STR_TO_DATE('2026-04-30', '%Y-%m-%d');

SELECT COUNT(Sale_ID) FROM Sale WHERE Sale_Date = @sale_date;