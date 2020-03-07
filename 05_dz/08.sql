#3. Подсчитайте произведение чисел в столбце id таблицы users

SELECT ROUND(EXP(SUM(LOG(id)))) AS result FROM users;