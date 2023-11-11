DROP TABLE IF EXISTS vendors;
DROP TABLE IF EXISTS products;


CREATE TABLE vendors (
    id INT PRIMARY KEY,
    vendor_code VARCHAR(6) UNIQUE NOT NULL,
    vendor_name VARCHAR(255) NOT NULL,
    vendor_description TEXT,
    vendor_contact_email VARCHAR(255)
);

CREATE TABLE products (
    id INT PRIMARY KEY,
    product_code VARCHAR(6) UNIQUE NOT NULL,
    product_name VARCHAR(255) NOT NULL,
    product_description TEXT,
    vendor_id INT,
    FOREIGN KEY (vendor_id) REFERENCES vendors(vendor_id), 
    UNIQUE (product_name, vendor_id)
);