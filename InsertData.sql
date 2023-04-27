INSERT INTO Semester VALUES
(1,'2023-I','24-04-2023','25-08-2023'),
(2,'2023-II','15-09-2023','15-01-2024')
GO

INSERT INTO AcademicDepartment VALUES
(1,'Facultad de Ingenierias'),
(2,'Facultad de Ciencias'),
(3,'Facultad de Letras')
GO

INSERT INTO ProfessionalSchool VALUES
(1,'Ingenieria Informática',1),
(2,'Ingenieria Mecánica',1),
(3,'Ingenieria Civil',1)
GO

INSERT INTO Teacher VALUES
(1,'Waldo Ibarra'),
(2,'Arturo Rozas'),
(3,'Ivan Medrano')
GO

INSERT INTO Course VALUES
(1,'Algoritmica I',4),
(2,'Algorimixca II',4),
(3,'Deep Learning',4),
(4,'Redes Neuronales Artificiales',4)
GO

INSERT INTO TeacherCourse VALUES
(1,1,1),
(2,2,2),
(3,1,3),
(4,3,4)
GO

INSERT INTO Chapter VALUES
(1, 'parcial 1',1),
(2, 'parcial 2',1),
(3, 'parcial 3',1),
(4, 'parcial 1',2),
(5, 'parcial 2',2),
(6, 'parcial 1',3),
(7, 'parcial 2',3),
(8, 'parcial 3',3),
(9, 'parcial 1',4),
(10, 'parcial 2',4)
GO

INSERT INTO Exam VALUES
(1, '26-04-2023',null, 1),
(2, '26-04-2023',null, 2),
(3, '26-04-2023',null, 4),
(4, '26-04-2023',null, 5)
GO

INSERT INTO Questions VALUES
(1,'5+5',1),
(2,'5 al cuadrado',1),
(3,'3*2',1),
(4,'capital de francia',2),
(5,'capital de peru',2),
(6,'capital de EEUU',2)
GO

INSERT INTO Alternatives VALUES
(1, '10','11','12','9',1,'Alternative1'),
(2, '16','20','25','30',1,'Alternative3'),
(3, '4','6','8','12',1,'Alternative2')
GO

INSERT INTO Student VALUES
(1,'Aler Olivares'),
(2,'Fiorella Cerati'),
(3,'Tirsa Camero'),
(4,'Erick Flores')
GO


INSERT INTO Answer VALUES
(1,1,1,'Alternative2'),
(2,1,2,'Alternative2'),
(3,1,3,'Alternative2'),
(4,2,4,'Alternative2'),
(5,2,5,'Alternative2'),
(6,2,6,'Alternative2')
go

INSERT INTO Registration VALUES
(1, 1, 1, 1,1),
(2, 1, 2, 1,1),
(3, 2, 1, 1,1),
(4, 2, 2, 1,1),
(5, 3, 3, 1,1)
GO

INSERT INTO CourseRegistration VALUES
(1, 1, 1),
(2, 2,2)
GO





