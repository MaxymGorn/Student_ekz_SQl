
insert into Subjects(Name)
values (N'c#'),(N'c++'), (N'Python'), (N'PHP')
select * from  Subjects go

insert into Students(Name,Birthday)
values (N'Andrew','2020-01-01'),(N'Maxs','2020-01-02'), (N'Nick','2020-01-03'), (N'Donald','2020-01-04')
select *from  Students go


insert into Teachers (Name, Birthday)
values (N'Teacher-1','2000-10-01'),(N'Teacher-2','2000-07-02'), (N'Teacher-3','2000-06-03'), (N'Teacher-4','2000-02-04')
select *from  Teachers go


insert into Exams (Name, SubjectId, TeacherId)
values (N'Ex-1', 1,1),(N'Ex-2', 2,2),(N'Ex-3', 3,3),(N'Ex-4', 4,4)
select *from  Exams go

insert into Results (ExamId, StudentId, Grade)
values (1,1,10),(2,4,12),(3,2,4),(4,3,3)
select *from  Results go

