CREATE TABLE records (
  date REAL,
  type TEXT,
  description TEXT,
  value INTEGER,
  acc_name TEXT,
  acc_no TEXT
);
CREATE VIEW direct_debits AS
  SELECT * FROM records WHERE type = 'D/D';
CREATE VIEW monthly_direct_debits AS
  SELECT strftime('%Y-%m', date) AS date, (-1 * sum(value)) AS value
    FROM direct_debits
   GROUP BY strftime('%Y-%m', date);
CREATE VIEW energy AS
  SELECT strftime('%Y-%m', date) AS date, (-1 * sum(value)) AS value
    FROM direct_debits
   WHERE description LIKE '%NPOWER%'
   GROUP BY strftime('%Y-%m', date);
CREATE VIEW phone_internet AS
  SELECT strftime('%Y-%m', date) AS date, (-1 * sum(value)) AS value
    FROM direct_debits
   WHERE description LIKE '%BT DIRECT%'
      OR description LIKE '%SUPANET%'
      OR description LIKE '%ORANGE%'
   GROUP BY strftime('%Y-%m', date);
CREATE VIEW credit_cards AS
  SELECT strftime('%Y-%m', date) AS date, (-1 * sum(value)) AS value
    FROM direct_debits
   WHERE description LIKE '%VISA%'
   GROUP BY strftime('%Y-%m', date);
CREATE VIEW expense_overview AS
  SELECT 'Energy' AS expense, date, value FROM energy
  UNION
  SELECT 'Phone/Internet' AS expense, date, value FROM phone_internet
  UNION
  SELECT 'Credit Card' AS expense, date, value FROM credit_cards;
CREATE VIEW jan AS
  SELECT 'jan', expense, value FROM expense_overview
   WHERE date LIKE '%-01';
CREATE VIEW nov AS
  SELECT 'nov', expense, value FROM expense_overview
   WHERE date LIKE '%-11';
CREATE VIEW summary AS
  SELECT * FROM jan JOIN nov ON (jan.expense = nov.expense);