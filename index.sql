-- Active: 1747576279510@@127.0.0.1@5432@ayajke

SELECT * FROM mobile;

-- Insert Value
insert into mobile (name) VALUES ('NOKIA'), ('Iphone'), ('XAUMI')

-- add a column
ALTER TABLE mobile ADD COLUMN price INTEGER DEFAULT 0;

-- delate column
ALTER TABLE mobile DROP COLUMN price;

-- rename column
ALTER TABLE mobile RENAME COLUMN name to mobile_name;

-- change type of column
ALTER TABLE mobile ALTER COLUMN mobile_name TYPE VARCHAR(50);

-- change constraint of column
ALTER TABLE mobile ALTER COLUMN price SET NOT NULL;

-- delate constraint of column
ALTER TABLE mobile ALTER COLUMN price DROP NOT NULL;


-- Add Constraint
ALTER TABLE mobile ADD CONSTRAINT unique_mobile_price UNIQUE (price);