CREATE TABLE if not exists public.PERSONS (
  name TEXT NOT NULL,
  surname TEXT NOT NULL,
  age INTEGER NOT NULL,
  phone_number TEXT,
  city_of_living TEXT NOT NULL,
  PRIMARY KEY (name, surname, age)
);

CREATE TABLE if not exists public.CUSTOMERS
(
    id           SERIAL PRIMARY KEY,
    name         TEXT    NOT NULL,
    surname      TEXT    NOT NULL,
    age          INTEGER NOT NULL,
    phone_number TEXT
);
INSERT INTO public.CUSTOMERS(name, surname, age, phone_number)
VALUES ('Alex', 'Terner', 30, '89777777777');
INSERT INTO public.CUSTOMERS(name, surname, age, phone_number)
VALUES ('Petya', 'Ivanov', 25, '89888888888');
INSERT INTO public.CUSTOMERS(name, surname, age, phone_number)
VALUES ('Alexey', 'Petrov', 33, '89666666666');
INSERT INTO public.CUSTOMERS(name, surname, age, phone_number)
VALUES ('Misha', 'Sidorov', 28, '89775555555');
INSERT INTO public.CUSTOMERS(name, surname, age, phone_number)
VALUES ('Sergey', 'Bodrov', 35, '89332211444');

CREATE TABLE if not exists public.ORDERS
(
    id           SERIAL PRIMARY KEY,
    date         DATE,
    customer_id  INTEGER NOT NULL,
    product_name TEXT    NOT NULL,
    amount       INTEGER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES public.Customers (Id)
    );
INSERT INTO public.ORDERS(date, customer_id, product_name, amount)
VALUES ('2024-08-31', 1, 'Potato', 5);
INSERT INTO public.ORDERS(date, customer_id, product_name, amount)
VALUES ('2024-08-30', 2, 'Eggs', 10);
INSERT INTO public.ORDERS(date, customer_id, product_name, amount)
VALUES ('2024-08-29', 1, 'Bread', 7);
INSERT INTO public.ORDERS(date, customer_id, product_name, amount)
VALUES ('2024-08-31', 4, 'Mushrooms', 12);
INSERT INTO public.ORDERS(date, customer_id, product_name, amount)
VALUES ('2024-08-30', 3, 'Tomato', 3);
INSERT INTO public.ORDERS(date, customer_id, product_name, amount)
VALUES ('2024-08-29', 5, 'Milk', 5);