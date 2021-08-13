SELECT * FROM review_id_table
LIMIT 5;

SELECT COUNT(*) FROM review_id_table;

SELECT * FROM products
LIMIT 5;

SELECT COUNT(*) FROM products;

SELECT * FROM customers
LIMIT 5;

SELECT COUNT(*) FROM customers;

SELECT * FROM vine_table
LIMIT 5;

SELECT COUNT(*) FROM vine_table;

SELECT COUNT(vine) FROM vine_table
WHERE vine = 'Y';

SELECT COUNT(vine) FROM vine_table
WHERE vine = 'N';

SELECT star_rating, helpful_votes FROM vine_table
WHERE vine = 'Y'
GROUP BY star_rating, helpful_votes
ORDER BY helpful_votes DESC
LIMIT 10;

SELECT star_rating, total_votes FROM vine_table
WHERE vine = 'Y'
GROUP BY star_rating, total_votes
ORDER BY total_votes DESC
LIMIT 10;

SELECT total_votes, COUNT(total_votes) FROM vine_table
GROUP BY total_votes
ORDER BY COUNT(total_votes) DESC
LIMIT 10;

SELECT helpful_votes, COUNT(helpful_votes) FROM vine_table
GROUP BY helpful_votes
ORDER BY COUNT(helpful_votes) DESC
LIMIT 10;

SELECT star_rating, COUNT(star_rating) FROM vine_table
GROUP BY star_rating
ORDER BY COUNT(star_rating) DESC
LIMIT 10;

SELECT COUNT(helpful_votes) FROM vine_table;
SELECT AVG(helpful_votes) FROM vine_table;
SELECT COUNT(total_votes) FROM vine_table;
SELECT AVG(total_votes) FROM vine_table;

SELECT COUNT(*) FROM vine_table
WHERE total_votes > 5 AND helpful_votes > 5 AND vine = 'Y';

SELECT COUNT(*) FROM vine_table
WHERE total_votes > 5 AND helpful_votes > 5 AND vine = 'N';

SELECT COUNT(*) FROM vine_table
WHERE total_votes < 3 AND helpful_votes < 5 AND vine = 'Y';

SELECT COUNT(*) FROM vine_table
WHERE total_votes < 3 AND helpful_votes < 5 AND vine = 'N';