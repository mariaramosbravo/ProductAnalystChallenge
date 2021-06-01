SELECT to_char(date_trunc('month', loans.created), 'YYYY-MM') AS date,
       count(*) AS number_loans,
        sum(amount) AS all_loans_amount,
        avg(amount) AS avg_amount,
        min(amount) AS min_amount,
        max(amount) AS max_amount
FROM "loans"
GROUP BY date_trunc('month', loans.created)
ORDER BY date_trunc('month', loans.created) DESC