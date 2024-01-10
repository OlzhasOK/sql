
-- Создать таблицы учитывая нормальные форма: студенты, преподы, группы
-- Связи: группы и студенты - 1кМ, преподы и группы - 1км

-- CREATE DATABASE homework_base;

-- CREATE TABLE teachers (
--     teacher_id SERIAL PRIMARY KEY,
--     name VARCHAR(255) NOT NULL,
--     subject VARCHAR(255) NOT NULL
-- );

-- CREATE TABLE groups (
--     group_id SERIAL PRIMARY KEY,
--     group_name VARCHAR(255) NOT NULL,
--     teacher_id INT REFERENCES teachers(teacher_id) ON DELETE CASCADE
-- );

-- CREATE TABLE students (
--     student_id SERIAL PRIMARY KEY,
--     name VARCHAR(255) NOT NULL,
--     group_id INT REFERENCES groups(group_id) ON DELETE CASCADE
-- );

-- INSERT INTO teachers (name, subject) VALUES
--     ('Гульнара Досханаевна', 'Геодезия'),
--     ('Марина Петровна', 'Картография'),
--     ('Ляззат Алпысбаевна', 'Фотограмметрия');

-- INSERT INTO groups (group_name, teacher_id) VALUES
--     ('Группа 22-14', 1),
--     ('Группа 21-12', 2),
--     ('Группа 23-13', 3);

-- INSERT INTO students (name, group_id) VALUES
--     ('Олжабай Олжас', 1),
--     ('Раисов Жаслан', 1),
--     ('Жусубаева Ажара', 2),
--     ('Сабарбек Ерасыл', 2),
--     ('Соколов Данил', 3),
--     ('Тлеубердин Диас', 3);


-- SELECT * FROM teachers;

-- SELECT * FROM groups;

-- SELECT * FROM students;



-- - Выбрать любую предметную область и создать минимум 4 таблицы со всеми видами связи:  1, 2 и 3 нормальные формы.
-- Таблица 
-- CREATE TABLE authors (
--     author_id SERIAL PRIMARY KEY,
--     author_name VARCHAR(255) NOT NULL
-- );

-- CREATE TABLE publishers (
--     publisher_id SERIAL PRIMARY KEY,
--     publisher_name VARCHAR(255) NOT NULL
-- );

-- CREATE TABLE books (
--     book_id SERIAL PRIMARY KEY,
--     title VARCHAR(255) NOT NULL,
--     author_id INT REFERENCES authors(author_id) ON DELETE CASCADE,
--     publisher_id INT REFERENCES publishers(publisher_id) ON DELETE CASCADE,
--     publication_year INT,
--     CONSTRAINT check_publication_year CHECK (publication_year >= 0)
-- );

-- CREATE TABLE readers (
--     reader_id SERIAL PRIMARY KEY,
--     reader_name VARCHAR(255) NOT NULL
-- );

-- CREATE TABLE book_loans (
--     loan_id SERIAL PRIMARY KEY,
--     book_id INT REFERENCES books(book_id) ON DELETE CASCADE,
--     reader_id INT REFERENCES readers(reader_id) ON DELETE CASCADE,
--     loan_date DATE NOT NULL,
--     return_date DATE,
--     CONSTRAINT check_loan_dates CHECK (loan_date <= return_date)
-- );

-- INSERT INTO authors (author_name) VALUES
--     ('Мухтар Ауэзов'),
--     ('Александр Пушкин'),
--     ('Лев Толстой'),
--     ('Чарльз Буковски');
-- INSERT INTO publishers (publisher_name) VALUES
--     ('Атамекен'),
--     ('Издательсво Городское'),
--     ('Мироновское'),
--     ('Americano');
-- INSERT INTO books (title, author_id, publisher_id, publication_year) VALUES
--     ('Путь Абая', 1, 1, 1942),
--     ('Капитанская дочка', 2, 2, 1836),
--     ('Война и мир', 3, 3, 1867),
--     ('Женщины', 4, 1, 1978);
-- INSERT INTO readers (reader_name) VALUES
--     ('Иван Иванов' ),
--     ('Анна Сидорова'),
--     ('Петр Петров'),
--     ('Ольга Николаева');
-- INSERT INTO book_loans (book_id, reader_id, loan_date, return_date) VALUES
--     (1, 1, '2023-01-15', '2023-02-01'),
--     (2, 2, '2023-02-10', '2023-03-01'),
--     (3, 3, '2023-03-20', '2023-04-05'),
--     (4, 4, '2023-04-01', '2023-04-20');


-- SELECT * FROM publishers;

-- SELECT * FROM authors;

-- SELECT * FROM book_loans;

-- SELECT * FROM books;

-- SELECT * FROM readers;




