## Lab1
PART 1: ProjectDB Schema Creation (20 Points)
For the syntax of each command in psql, please consult the documentation of PostgreSQL here. ProjectDB consists of the following relations defined in the following schema:<br />

University (<br />
  UnivId: NUMERIC<br />
  UnivName: VARCHAR(40) )<br />

Department (<br />
DeptId: NUMERIC<br />
DeptName: VARCHAR(40) )<br />
Employee (
EmpId: NUMERIC
EmpName: VARCHAR(40)
DeptId: NUMERIC REFERENCES Department(DeptId) HomeZipCode: NUMERIC
) <br />Project (
ProjId: NUMERIC
ProjName: VARCHAR(40) )<br />
Graduate (
EmpId: NUMERIC REFERENCES Employee(EmpId) UnivId: NUMERIC REFERENCES University(UnivId) GradYear: NUMERIC
) <br /> EmpProject (
EmpId: NUMERIC REFERENCES Employee(EmpId)
ProjId: NUMERIC REFERENCES Project(ProjId) ) <br />
ProjectManager (
ProjId: NUMERIC REFERENCES Project(ProjId) MgrId: NUMERIC REFERENCES Employee(EmpId)
)
