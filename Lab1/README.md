## Lab1
PART 1: ProjectDB Schema Creation (20 Points)
For the syntax of each command in psql, please consult the documentation of PostgreSQL here. ProjectDB consists of the following relations defined in the following schema:<br />

University (<br />
  UnivId: NUMERIC<br />
  UnivName: VARCHAR(40) )<br />

Department (<br />
DeptId: NUMERIC<br />
DeptName: VARCHAR(40) )<br />

Employee (<br />
EmpId: NUMERIC<br />
EmpName: VARCHAR(40)<br />
DeptId: NUMERIC REFERENCES Department(DeptId)<br /> 
HomeZipCode: NUMERIC
) <br />

Project (<br />
ProjId: NUMERIC<br />
ProjName: VARCHAR(40) )<br />

Graduate (<br />
EmpId: NUMERIC REFERENCES Employee(EmpId)<br /> 
UnivId: NUMERIC REFERENCES University(UnivId)<br /> 
GradYear: NUMERIC
) <br /> 

EmpProject (<br />
EmpId: NUMERIC REFERENCES Employee(EmpId)<br />
ProjId: NUMERIC REFERENCES Project(ProjId) ) <br />

ProjectManager (<br />
ProjId: NUMERIC REFERENCES Project(ProjId) MgrId: NUMERIC REFERENCES Employee(EmpId)
)
