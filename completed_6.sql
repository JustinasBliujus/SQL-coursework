-- Create the Customer table
CREATE TABLE Customer (
  customer_id    NUMBER PRIMARY KEY,
  customer_name  VARCHAR2(100),
  order_number   NUMBER
);

-- Create the Reservation table
CREATE TABLE ReservationTable (
  table_id           NUMBER PRIMARY KEY,
  reservation_number NUMBER,
  is_reserved        VARCHAR2(1)
);

-- Create the Order table
CREATE TABLE OrderTable (
  order_id       NUMBER PRIMARY KEY,
  customer_id    NUMBER,
  waiter_id      NUMBER,
  order_date     DATE,
  total_amount   NUMBER,
  order_items    VARCHAR2(100),
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
  FOREIGN KEY (waiter_id) REFERENCES Staff(staff_id)
);

-- Create the Staff table
CREATE TABLE Staff (
  staff_id      NUMBER PRIMARY KEY,
  first_name    VARCHAR2(100),
  last_name     VARCHAR2(100),
  address       VARCHAR2(200),
  salary        NUMBER
);

-- Create the Meal table
CREATE TABLE Meal (
  meal_id       NUMBER PRIMARY KEY,
  meal_name     VARCHAR2(100),
  description   VARCHAR2(200),
  meal_components VARCHAR2(200),
  price         NUMBER
);
-- Insert 5 rows into the Customer table
INSERT INTO Customer (customer_id, customer_name, order_number)
VALUES (1, 'John Doe', 12345);

INSERT INTO Customer (customer_id, customer_name, order_number)
VALUES (2, 'Jane Smith', 67890);

INSERT INTO Customer (customer_id, customer_name, order_number)
VALUES (3, 'Alice Johnson', 13579);

INSERT INTO Customer (customer_id, customer_name, order_number)
VALUES (4, 'Bob Williams', 24680);

INSERT INTO Customer (customer_id, customer_name, order_number)
VALUES (5, 'Sarah Davis', 97531);

-- Insert 5 rows into the ReservationTable table
INSERT INTO ReservationTable (table_id, reservation_number, is_reserved)
VALUES (1, 1001, 'Y');

INSERT INTO ReservationTable (table_id, reservation_number, is_reserved)
VALUES (2, 1002, 'N');

INSERT INTO ReservationTable (table_id, reservation_number, is_reserved)
VALUES (3, 1003, 'Y');

INSERT INTO ReservationTable (table_id, reservation_number, is_reserved)
VALUES (4, 1004, 'N');

INSERT INTO ReservationTable (table_id, reservation_number, is_reserved)
VALUES (5, 1005, 'Y');

-- Insert 5 rows into the OrderTable table
INSERT INTO OrderTable (order_id, customer_id, waiter_id, order_date, total_amount, order_items)
VALUES (1, 1, 100, TO_DATE('2023-05-29', 'YYYY-MM-DD'), 50.99, 'Pizza, Salad');

INSERT INTO OrderTable (order_id, customer_id, waiter_id, order_date, total_amount, order_items)
VALUES (2, 2, 101, TO_DATE('2023-05-30', 'YYYY-MM-DD'), 35.50, 'Steak, Fries');

INSERT INTO OrderTable (order_id, customer_id, waiter_id, order_date, total_amount, order_items)
VALUES (3, 3, 102, TO_DATE('2023-06-01', 'YYYY-MM-DD'), 20.75, 'Burger, Soda');

INSERT INTO OrderTable (order_id, customer_id, waiter_id, order_date, total_amount, order_items)
VALUES (4, 4, 103, TO_DATE('2023-06-02', 'YYYY-MM-DD'), 15.25, 'Chicken Wings');

INSERT INTO OrderTable (order_id, customer_id, waiter_id, order_date, total_amount, order_items)
VALUES (5, 5, 104, TO_DATE('2023-06-03', 'YYYY-MM-DD'), 42.80, 'Pasta, Garlic Bread');

-- Insert 5 rows into the Staff table
INSERT INTO Staff (staff_id, first_name, last_name, address, salary)
VALUES (100, 'Jane', 'Smith', '123 Main St', 5000.00);

INSERT INTO Staff (staff_id, first_name, last_name, address, salary)
VALUES (101, 'John', 'Johnson', '456 Elm St', 5500.00);

INSERT INTO Staff (staff_id, first_name, last_name, address, salary)
VALUES (102, 'Mary', 'Williams', '789 Oak St', 6000.00);

INSERT INTO Staff (staff_id, first_name, last_name, address, salary)
VALUES (103, 'Michael', 'Brown', '321 Pine St', 5500.00);

INSERT INTO Staff (staff_id, first_name, last_name, address, salary)
VALUES (104, 'Sarah', 'Davis', '567 Maple St', 5200.00);

-- Insert 5 rows into the Meal table
INSERT INTO Meal (meal_id, meal_name, description, meal_components, price)
VALUES (1, 'Cheeseburger', 'Classic cheeseburger', 'Bun, Beef patty, Cheese, Lettuce, Tomato', 9.99);

INSERT INTO Meal (meal_id, meal_name, description, meal_components, price)
VALUES (2, 'Margherita Pizza', 'Traditional Italian pizza with tomato sauce and mozzarella cheese', 'Dough, Tomato sauce, Mozzarella cheese', 12.99);

INSERT INTO Meal (meal_id, meal_name, description, meal_components, price)
VALUES (3, 'Chicken Alfredo', 'Grilled chicken with creamy Alfredo sauce served with pasta', 'Grilled chicken, Alfredo sauce, Pasta', 15.99);

INSERT INTO Meal (meal_id, meal_name, description, meal_components, price)
VALUES (4, 'Caesar Salad', 'Romaine lettuce with Caesar dressing, croutons, and Parmesan cheese', 'Romaine lettuce, Caesar dressing, Croutons, Parmesan cheese', 8.99);

INSERT INTO Meal (meal_id, meal_name, description, meal_components, price)
VALUES (5, 'Chocolate Brownie Sundae', 'Warm chocolate brownie topped with vanilla ice cream and chocolate sauce', 'Chocolate brownie, Vanilla ice cream, Chocolate sauce', 6.99);

