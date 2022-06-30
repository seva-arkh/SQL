CREATE TABLE University(
  UnivID NUMERIC,
  UnivName VARCHAR(40),
  PRIMARY KEY(UnivID)
);

CREATE TABLE Department(
  DeptID NUMERIC,
  DeptName VARCHAR(40),
  PRIMARY KEY(DeptID)
);

CREATE TABLE Employee(
  EmpID NUMERIC,
  EmpName VARCHAR(40),
  DeptID NUMERIC,
  HomeZipCode NUMERIC,
  PRIMARY KEY(EmpID),
  FOREIGN KEY (DeptID) REFERENCES Department(DeptID)
);

CREATE TABLE Project(
  ProjID NUMERIC,
  ProjName VARCHAR(40),
  PRIMARY KEY(ProjID)
);

CREATE TABLE Graduate(
  EmpID NUMERIC,
  UnivID NUMERIC,
  GradYear NUMERIC,
  PRIMARY KEY(EmpID),
  FOREIGN KEY (EmpID) REFERENCES Employee(EmpID),
  FOREIGN KEY (UnivID) REFERENCES University(UnivID)
);

CREATE TABLE EmpProject(
  EmpID NUMERIC,
  ProjID NUMERIC,
  PRIMARY KEY(EmpID, ProjID),
  FOREIGN KEY (EmpID) REFERENCES Employee(EmpID),
  FOREIGN KEY (ProjID) REFERENCES Project(ProjID)
);

CREATE TABLE ProjectManager(
  ProjID NUMERIC,
  MgrID NUMERIC,
  PRIMARY KEY(ProjID, MgrID),
  FOREIGN KEY (ProjID) REFERENCES Project(ProjID),
  FOREIGN KEY (MgrID) REFERENCES Employee(EmpID)
);
