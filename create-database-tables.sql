-- (opțional) curățare dacă există deja
IF OBJECT_ID('dbo.EmployeeProjects','U') IS NOT NULL DROP TABLE dbo.EmployeeProjects;
IF OBJECT_ID('dbo.Projects','U')         IS NOT NULL DROP TABLE dbo.Projects;
IF OBJECT_ID('dbo.Employees','U')        IS NOT NULL DROP TABLE dbo.Employees;
GO

-- Employees
CREATE TABLE dbo.Employees (
    EmployeeID  INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [Name]      VARCHAR(100)      NOT NULL,
    [Position]  VARCHAR(50)       NULL,
    Department  VARCHAR(50)       NULL,
    Salary      DECIMAL(10,2)     NOT NULL,
    HireDate    DATE              NULL
);
GO

-- Projects
CREATE TABLE dbo.Projects (
    ProjectID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    StartDate DATE              NULL,
    EndDate   DATE              NULL,
    CONSTRAINT CK_Projects_Dates
        CHECK (EndDate IS NULL OR StartDate IS NULL OR EndDate >= StartDate)
);
GO

-- Junction: EmployeeProjects
CREATE TABLE dbo.EmployeeProjects (
    EmployeeID INT          NOT NULL,
    ProjectID  INT          NOT NULL,
    [Role]     VARCHAR(50)  NULL,
    CONSTRAINT PK_EmployeeProjects PRIMARY KEY (EmployeeID, ProjectID),
    CONSTRAINT FK_EmpProj_Employees FOREIGN KEY (EmployeeID) REFERENCES dbo.Employees(EmployeeID),
    CONSTRAINT FK_EmpProj_Projects  FOREIGN KEY (ProjectID)  REFERENCES dbo.Projects(ProjectID)
);
GO
