create table Subjects
(id int identity(1,1) primary key not null,
Name nvarchar(30) not null)

create table Teachers
(id int identity(1,1) primary key not null,
Lastname nvarchar(30) not null,
Firstname nvarchar(30) not null,
Birthdate date not null,
DepartmentId int)

create table TeachersSubjects
(TeacherId int not null,
foreign key (TeacherId) references Teachers(id),
SubjectId int not null,
foreign key (SubjectId) references Subjects(id))

create table Students
(id int identity(1,1) primary key not null,
Firstname nvarchar(30) not null,
Lastname nvarchar(30) not null,
Birthdate date not null,
Grants int,
Email nvarchar(30),
Groupid int not null,
foreign key (Groupid) references Groups(id))


create table Groups
(id int identity(1,1) primary key not null,
GroupName nvarchar(30) not null,
FacultyId int
)

create table Achivements
(id int identity(1,1) primary key not null,
Studentid int not null,
foreign key (Studentid) references Students(id),
Subjectid int not null,
foreign key (Subjectid) references Subjects(id),
Assesment int)
