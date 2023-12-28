CREATE TABLE book (
    book_id SERIAL PRIMARY KEY,
    author VARCHAR(255) NOT NULL,
    title VARCHAR(255) NOT NULL,
    page_count INT
);

-- Заполнение таблицы book 
INSERT INTO book (author, title, page_count)
VALUES
    ('Джамбул Джабаев', 'Ленинградцы, дети мои!', 200),
    ('Абай Кунанбаев', 'Қара сөздер', 130),
    ('Олжас Сулейменов', 'Тамарок', 220),
    ('Габит Мусрепов', 'Қырау', 180),
    ('Мұқтар Әуезов', 'Абай жолы', 300);
	('Лев Толстой', 'Война и мир', 300);
SELECT * FROM book WHERE page_count <= 250;
SELECT * FROM book WHERE author = 'Абай Кунанбаев' AND page_count <= 150;
SELECT COUNT(*) FROM book WHERE author = 'Лев Толстой';


CREATE TABLE publisher (
    publisher_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    city VARCHAR(255)
);
-- Заполнение таблицы publisher
INSERT INTO publisher (name, city)
VALUES
    ('Самрук', 'Астана'),
    ('Россия-2', 'Омск'),
    ('Круассанылюбим', 'Париж'),
    ('Молодежное', 'Алмата'),
    ('Коммерсы', 'Москва'),
    ('Нефтянник', 'Актау'),
    ('Максимов', 'Санкт-Петербург'),
    ('Алтын Кагаз', 'Петропавловск'),
    ('Улкен коз', 'Усть-Каменогорск'),
    ('Северное', 'Костанай');
SELECT * FROM publisher;
SELECT DISTINCT city FROM publisher;

