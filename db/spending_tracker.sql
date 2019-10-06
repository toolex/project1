DROP TABLE transactions;
DROP TABLE tags;
DROP TABLE merchants;

CREATE TABLE tags(
  id SERIAL8,
  type VARCHAR(255)
);

CREATE TABLE merchants(
  id SERIAL8,
  name VARCHAR(255)
);

CREATE TABLE transactions(
  id SERIAL8,
  merchant_id INT8 REFERENCES merchants(id),
  tag_id INT8 REFERENCES tags(id),
  amount FLOAT8
);
