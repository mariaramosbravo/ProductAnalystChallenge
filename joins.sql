-- loans_withdrawn
SELECT *
FROM "loans"
WHERE loans.loan_status IN ('active', 'repaid')

-- loan_transactions
SELECT loans.id AS loan_id, loans.amount AS loan_amount, loans.user_id,
       users.created AS user_created, transactions.transaction_fee, transactions.t_type
FROM "loans"
INNER JOIN "users" ON loans.user_id = users.id
INNER JOIN "transactions" ON transactions.loan_id = loans.id
WHERE loans.loan_status IN ('active', 'repaid') AND
      transactions.t_type = 'disbursement'
ORDER BY users.created DESC

