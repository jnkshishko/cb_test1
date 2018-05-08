CREATE TABLE employee (
  id INT NOT NULL PRIMARY KEY,
  surname VARCHAR NOT NULL,
  name VARCHAR NOT NULL,
  patronymic VARCHAR NOT NULL,
  position VARCHAR NOT NULL,
  date DATE NOT NULL,
  time INT NOT NULL,
  cause VARCHAR NOT NULL
);

/*
 * Initial parameters
 */
-- INSERT INTO employee (id, surname, name, patronymic, position, date, time, cause) VALUES (1, 'Петров', 'Петр', 'Петрович', 'директор', '04.05.2018', 120, 'Попал в пробку');
-- INSERT INTO employee (id, surname, name, patronymic, position, date, time, cause) VALUES (2, 'Сидоров', 'Николай', 'Петрович', 'бухгалтер', '03.05.2018', 100, 'Проспал');
-- INSERT INTO employee (id, surname, name, patronymic, position, date, time, cause) VALUES (3, 'Иванов', 'Иван', 'Иванович', 'разработчик', '02.05.2018', 10, 'Попал в пробку');
-- INSERT INTO employee (id, surname, name, patronymic, position, date, time, cause) VALUES (4, 'Орлов', 'Максим', 'Николаевич', 'разработчик', '01.05.2018', 480, 'Заболел');
-- INSERT INTO employee (id, surname, name, patronymic, position, date, time, cause) VALUES (5, 'Соколов', 'Олег', 'Владимирович', 'разработчик', '05.05.2018', 120, 'Был в больнице');
