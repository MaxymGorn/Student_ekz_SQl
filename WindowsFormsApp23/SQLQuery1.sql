CREATE TABLE [Students] (
	Id bigint NOT NULL identity ,
	Name nvarchar NOT NULL,
	Birthday date NOT NULL,
  CONSTRAINT [PK_STUDENTS] PRIMARY KEY CLUSTERED
  (
  [Id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Teachers] (
	Id bigint NOT NULL identity ,
	Name nvarchar NOT NULL,
	Birthday date NOT NULL,
  CONSTRAINT [PK_TEACHERS] PRIMARY KEY CLUSTERED
  (
  [Id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Exams] (
	Id bigint NOT NULL identity ,
	Name nvarchar NOT NULL,
	SubjectId int NOT NULL,
	TeacherId int NOT NULL,
  CONSTRAINT [PK_EXAMS] PRIMARY KEY CLUSTERED
  (
  [Id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Subjects] (
	Id bigint NOT NULL identity ,
	Name nvarchar NOT NULL,
  CONSTRAINT [PK_SUBJECTS] PRIMARY KEY CLUSTERED
  (
  [Id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Results] (
	Id bigint NOT NULL identity ,
	StudentId int NOT NULL,
	Grade int not null,
	ExamId int NOT NULL,
  CONSTRAINT [PK_RESULTS] PRIMARY KEY CLUSTERED
  (
  [Id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO


ALTER TABLE [Exams] WITH CHECK ADD CONSTRAINT [Exams_fk0] FOREIGN KEY ([SubjectId]) REFERENCES [Subjects]([Id])
GO
ALTER TABLE [Exams] CHECK CONSTRAINT [Exams_fk0]
GO
ALTER TABLE [Exams] WITH CHECK ADD CONSTRAINT [Exams_fk1] FOREIGN KEY ([TeacherId]) REFERENCES [Teachers]([Id])
GO
ALTER TABLE [Exams] CHECK CONSTRAINT [Exams_fk1]
GO


ALTER TABLE [Results] WITH CHECK ADD CONSTRAINT [Results_fk0] FOREIGN KEY ([StudentId]) REFERENCES [Students]([Id])
GO
ALTER TABLE [Results] CHECK CONSTRAINT [Results_fk0]
GO
ALTER TABLE [Results] WITH CHECK ADD CONSTRAINT [Results_fk1] FOREIGN KEY ([ExamId]) REFERENCES [Exams]([Id])
GO
ALTER TABLE [Results] CHECK CONSTRAINT [Results_fk1]
GO
