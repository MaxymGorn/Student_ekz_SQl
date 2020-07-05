create view Report1 as
	select 
	s.Name as N'Name student',
	sub.Name as N'Subject name',
	ex.Name as N'Exam name',
	r.Grade as N'Grade'

	from
	Students s inner join Results r on s.Id=r.StudentId
	inner join Exams ex on ex.Id=r.Id
	inner join Subjects sub on sub.Id=ex.SubjectId
go
