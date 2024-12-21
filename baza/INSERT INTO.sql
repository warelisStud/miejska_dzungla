INSERT INTO Category (description, name, image)
VALUES 
    ('Rośliny doniczkowe do wnętrz', 'Rośliny doniczkowe', NULL),
    ('Rośliny ogrodowe', 'Rośliny ogrodowe', NULL),
    ('Akcesoria ogrodowe', 'Akcesoria ogrodowe', NULL),
    ('Rośliny tropikalne', 'Rośliny tropikalne', NULL),
    ('Rośliny balkonowe', 'Rośliny balkonowe', NULL);
INSERT INTO Customer (name, mobile_number, email_address, address) VALUES
('Marta Kwiatkowska', 789012345, 'marta.kwiatkowska@example.com', 'ul. Lipowa 8, Gdańsk'),
('Tomasz Wiśniewski', 654321098, 'tomasz.wisniewski@example.com', 'ul. Polna 12, Łódź'),
('Karolina Zielińska', 567890123, 'karolina.zielinska@example.com', 'ul. Krótka 5, Szczecin'),
('Robert Kamiński', 456789012, 'robert.kaminski@example.com', 'ul. Świerkowa 15, Katowice'),
('Ewelina Majewska', 345678901, 'ewelina.majewska@example.com', 'ul. Wiosenna 22, Białystok'),
('Andrzej Dąbrowski', 234567890, 'andrzej.dabrowski@example.com', 'ul. Jesionowa 7, Toruń'),
('Monika Wójcik', 123890456, 'monika.wojcik@example.com', 'ul. Chmielna 9, Lublin'),
('Krzysztof Piotrowski', 678901234, 'krzysztof.piotrowski@example.com', 'ul. Słoneczna 11, Olsztyn'),
('Agnieszka Kowalczyk', 890123456, 'agnieszka.kowalczyk@example.com', 'ul. Leśna 2, Rzeszów'),
('Paweł Lewandowski', 123456780, 'pawel.lewandowski@example.com', 'ul. Spacerowa 10, Kielce');

INSERT INTO User (password, name, mobile_number, email_address, is_active, address) VALUES
(X'abcdef1234567890abcdef1234567890abcdef1234567890abcdef1234567890', 'Admin', 123456789, 'admin@example.com', TRUE, 'ul. Główna 1'),
(X'1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef', 'Magdalena Kaczmarek', 234567890, 'magda@example.com', TRUE, 'ul. Poziomkowa 3'),
(X'abcdef1234567890abcdef1234567890abcdef1234567890abcdef1234567890', 'Piotr Nowak', 345678901, 'piotr@example.com', TRUE, 'ul. Nowa 5'),
(X'abcdef1234567890abcdef1234567890abcdef1234567890abcdef1234567890', 'Karolina Wójcik', 456789012, 'karolina@example.com', TRUE, 'ul. Słoneczna 8'),
(X'abcdef1234567890abcdef1234567890abcdef1234567890abcdef1234567890', 'Łukasz Nowicki', 567890123, 'lukasz@example.com', TRUE, 'ul. Pięciomorgowa 2');
INSERT INTO Product (name, description, model, price, stock_qty, image)
VALUES 
    ('Aloes', 'Roślina doniczkowa, idealna do wnętrz, łatwa w pielęgnacji', 'Aloe Vera', 29.99, 50, NULL),
    ('Fikus', 'Fikus Benjamina, roślina ozdobna do wnętrz', 'Ficus Benjamina', 49.99, 30, NULL),
    ('Róża ogrodowa', 'Róża ogrodowa, idealna do ogrodów i na balkon', 'Rosa', 39.99, 20, NULL),
    ('Doniczka ceramiczna', 'Doniczka ceramiczna, ładna i trwała', 'Ceramic pot', 19.99, 100, NULL),
    ('Nawóz do roślin', 'Organiczny nawóz do roślin doniczkowych', 'Organic Fertilizer', 14.99, 200, NULL),
    ('Lilia wodna', 'Roślina wodna do ogrodu', 'Water Lily', 25.99, 50, NULL),
    ('Kaktus', 'Mały kaktus do biura', 'Cactus', 15.99, 60, NULL),
    ('Hortensja', 'Roślina ogrodowa, piękne kwiaty', 'Hydrangea', 35.99, 80, NULL),
    ('Bananowiec', 'Roślina tropikalna, do wnętrz i ogrodów', 'Banana Tree', 59.99, 40, NULL),
    ('Pelargonia', 'Roślina balkonowa, kwitnąca na wiosnę', 'Geranium', 19.99, 150, NULL),
    ('Dracena', 'Roślina doniczkowa, znana z długich liści', 'Dracaena', 49.99, 70, NULL),
    ('Zielistka', 'Roślina doniczkowa, łatwa w hodowli, odporna na warunki domowe', 'Chlorophytum', 18.99, 90, NULL),
    ('Sansewieria', 'Roślina doniczkowa, odporna na suszę, idealna do biura', 'Sansevieria', 34.99, 50, NULL),
    ('Zamiokulkas', 'Roślina doniczkowa, tolerująca mało światła', 'Zamioculcas zamiifolia', 42.99, 60, NULL),
    ('Pilea', 'Pilea, roślina doniczkowa o okrągłych liściach', 'Pilea Peperomioides', 29.99, 40, NULL),
    ('Skrzydłokwiat', 'Roślina doniczkowa z białymi kwiatami', 'Spathiphyllum', 27.99, 75, NULL),
    ('Koleus', 'Roślina doniczkowa o kolorowych liściach', 'Coleus', 22.99, 50, NULL),
    ('Fiołek afrykański', 'Roślina doniczkowa o pięknych, kolorowych kwiatach', 'Saintpaulia', 19.99, 80, NULL),
    ('Epipremnum', 'Roślina doniczkowa o długich pędach, idealna do wnętrz', 'Pothos', 26.99, 120, NULL),
    ('Begonia', 'Roślina doniczkowa o ozdobnych liściach', 'Begonia', 32.99, 60, NULL),
    ('Episcia', 'Roślina doniczkowa o dekoracyjnych kwiatach', 'Episcia', 25.99, 50, NULL);
INSERT INTO Product_category (product_id, category_id)
VALUES 
    (1, 1),  -- Aloes -> Rośliny doniczkowe
    (2, 1),  -- Fikus -> Rośliny doniczkowe
    (3, 2),  -- Róża ogrodowa -> Rośliny ogrodowe
    (4, 3),  -- Doniczka ceramiczna -> Akcesoria ogrodowe
    (5, 3),  -- Nawóz do roślin -> Akcesoria ogrodowe
    (6, 2),  -- Lilia wodna -> Rośliny ogrodowe
    (7, 1),  -- Kaktus -> Rośliny doniczkowe
    (8, 2),  -- Hortensja -> Rośliny ogrodowe
    (9, 1),  -- Bananowiec -> Rośliny tropikalne
    (10, 2); -- Pelargonia -> Rośliny balkonowe
INSERT INTO `Order` (user_id, customer_id, total_amount, status, shipping_address)
VALUES 
    (1, 1, 150.00, 'Pending', 'Poznań, ul. Zielona 5'),
    (2, 2, 120.00, 'Shipped', 'Gdańsk, ul. Kwiatowa 8'),
    (3, 3, 300.00, 'Delivered', 'Warszawa, ul. Wiosny 4'),
    (4, 4, 450.00, 'Pending', 'Kraków, ul. Różana 12'),
    (5, 5, 250.00, 'Shipped', 'Wrocław, ul. Wiosenna 3');
INSERT INTO Order_product (order_id, product_id, quantity)
VALUES 
    (1, 1, 2),  -- Zamówienie 1: 2x Aloes
    (1, 4, 1),  -- Zamówienie 1: 1x Doniczka ceramiczna
    (2, 3, 3),  -- Zamówienie 2: 3x Róża ogrodowa
    (2, 5, 2),  -- Zamówienie 2: 2x Nawóz do roślin
    (3, 6, 1),  -- Zamówienie 3: 1x Lilia wodna
    (3, 7, 2),  -- Zamówienie 3: 2x Kaktus
    (4, 8, 1),  -- Zamówienie 4: 1x Hortensja
    (4, 9, 1),  -- Zamówienie 4: 1x Bananowiec
    (5, 10, 5); -- Zamówienie 5: 5x Pelargonia
INSERT INTO Transaction (transaction_id, customer_id, order_id, payment_type, status, date_time, amount)
VALUES 
    (1, 1, 1, 'Karta kredytowa', 'Completed', NOW(), 150.00),
    (2, 2, 2, 'Przelew bankowy', 'Completed', NOW(), 120.00),
    (3, 3, 3, 'Karta kredytowa', 'Completed', NOW(), 300.00),
    (4, 4, 4, 'Przelew bankowy', 'Completed', NOW(), 450.00),
    (5, 5, 5, 'Karta kredytowa', 'Completed', NOW(), 250.00);
