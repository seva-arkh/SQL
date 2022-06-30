CREATE TABLE Student(
  Sid NUMERIC,
  Name VARCHAR(40),
  Gpa NUMERIC,
  PRIMARY KEY(Sid)
);

CREATE TABLE Course(
  Cid NUMERIC,
  Name VARCHAR(40),
  Department VARCHAR(40),
  PRIMARY KEY(Cid)
);

CREATE TABLE Registers(
  Sid NUMERIC,
  Cid NUMERIC,
  Semester NUMERIC,
  PRIMARY KEY(Sid, Cid, Semester),
  FOREIGN KEY (Sid) REFERENCES Student(Sid),
  FOREIGN KEY (Cid) REFERENCES Course(Cid)
);
