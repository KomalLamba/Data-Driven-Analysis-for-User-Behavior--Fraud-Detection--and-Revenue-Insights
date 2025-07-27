WITH TransactionWithMovingAvg AS (
  SELECT
    adv_id,
    created_at,
    value_in_paise,
    AVG(value_in_paise) OVER (
      PARTITION BY adv_id
      ORDER BY
        created_at ROWS BETWEEN 3 PRECEDING
        AND 1 PRECEDING
    ) AS avg_of_previous_3
  FROM
    greedy.transactions 
)
SELECT
  adv_id,
  created_at,
  value_in_paise,
  avg_of_previous_3
FROM
  TransactionWithMovingAvg
WHERE
value_in_paise >= 2 * avg_of_previous_3 
  AND avg_of_previous_3 IS NOT NULL;