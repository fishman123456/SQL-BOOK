--select LastName + ' ' + FirstName as TName, BirchDate, Name as Subject
--from TeachersSubjects As TS left join Subjects As S
--on S.id = TS.SubjectID right join Teachers as T
--on T.id = TS.TeacherID
--order by TName

Select LastName + ' ' + FirstName AS FullName, Name, Assesment
From Achievents As A left join Students As S
on s.Id = A.Studentid left join Subjects as Su
on Su.id = a.Subjectid
order by FullName