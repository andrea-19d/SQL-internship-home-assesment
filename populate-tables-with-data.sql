/* ============ Employees (10 înregistrări) ============ */
INSERT INTO CompanyDB.dbo.Employees ([Name], [Position], Department, Salary, HireDate)
VALUES
  ('Ana Popescu',        'Engineer',           'R&D',        75000.00, '2024-09-01'),
  ('Mihai Ionescu',      'Analyst',            'Finance',    52000.50, '2023-01-15'),
  ('Elena Lungu',        'QA Engineer',        'QA',         48000.00, '2022-06-10'),
  ('Andrei Matei',       'Product Manager',    'Product',    90000.00, '2021-03-01'),
  ('Ioana Dima',         'Designer',           'Design',     60000.00, '2023-11-20'),
  ('Vlad Stoica',        'DevOps Engineer',    'Platform',   88000.00, '2020-08-05'),
  ('Raluca Marin',       'Data Scientist',     'Data',      102000.00, '2022-02-14'),
  ('Cristian Pavel',     'Backend Developer',  'Engineering',82000.00, '2021-12-01'),
  ('Sorina Neagu',       'HR Specialist',      'HR',         45000.00, '2019-05-20'),
  ('George Popa',        'Support Engineer',   'Support',    46000.00, '2024-04-04');
GO

/* ============ Projects (10 înregistrări) ============ */
INSERT INTO dbo.Projects (StartDate, EndDate)
VALUES
  ('2024-01-01', '2024-03-31'),
  ('2024-04-01', '2024-09-30'),
  ('2023-10-01', '2024-02-28'),
  ('2022-05-15', '2022-12-15'),
  ('2021-01-10', NULL),            -- proiect în derulare
  ('2024-06-01', '2024-12-31'),
  ('2020-07-01', '2021-01-31'),
  ('2023-03-01', '2023-08-31'),
  ('2022-09-15', '2023-01-15'),
  ('2024-09-01', '2025-02-28');
GO

/* ============ EmployeeProjects (10 înregistrări) ============ */
/* Atenție: combinatiile (EmployeeID, ProjectID) trebuie să fie unice. 
   Inserțiile de mai jos presupun că Employees au ID 1..10 și Projects au ID 1..10. */
INSERT INTO dbo.EmployeeProjects (EmployeeID, ProjectID, [Role])
VALUES
  (1, 1,  'Developer'),
  (2, 1,  'Business Analyst'),
  (3, 1,  'QA Engineer'),
  (4, 2,  'Product Manager'),
  (5, 2,  'UI/UX Designer'),
  (8, 3,  'Backend Developer'),
  (6, 6,  'DevOps Engineer'),
  (7, 10, 'Data Scientist'),
  (9, 4,  'HR Partner'),
  (10, 8, 'Support Engineer');
GO
