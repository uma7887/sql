/*inserting into LoginUserDetail*/

insert into dbo.LoginUserDetail (UserName, UserEmailAddress, UserPassword) values ('Hema', 'hema.5@gmail.com', 'hemahema' );

insert into dbo.LoginUserDetail (UserName, UserEmailAddress, UserPassword) values ('Uma', 'uma.5@gmail.com', 'umahema' );

/*inserting into AboutUser*/

insert into dbo.AboutUser (AboutUserLanguagesKnown, AboutUserDOB,AboutUserIDFK) values ('SQL','1996/10/1',1);

insert into dbo.AboutUser (AboutUserLanguagesKnown, AboutUserDOB,AboutUserIDFK) values ('Java','1996/05/1',2);

/*inserting into UserQuestion*/
insert into dbo.UserQuestion (Question, QuestionLike, QuestionTime,QuestionTechnology,QuestionUserIDFK) values ('insert query example', 3, '1998-01-03 00:00:00.000','sql',1);

insert into dbo.UserQuestion (Question, QuestionLike, QuestionTime,QuestionTechnology,QuestionUserIDFK) values ('select query example', 10, '2017-01-03 00:00:00.000','sql',1);
/*inserting into UserSolution*/
insert into dbo.UserSolution (Solution,SolutionLike,SolutionTime,SolutioUserIDFK,SolutionQuestionIDFK) values ('java is a programming languange', '1', '1998-01-02 00:00:00.000', '2', '1');

insert into dbo.UserSolution (Solution,SolutionLike,SolutionTime,SolutioUserIDFK,SolutionQuestionIDFK) values ('java is  most popular programming language ', '1', '1998-01-02 00:00:00.000', '2', '2');

/*inserting into JobPost*/

insert into dbo.JobPost (PostID,Post,PostJobLocation,PostExperience,PostCompanyName,PostTime) values (1,'Job for java developers ', 'chennai', '1', 'Ofs' ,'1998-01-02 00:00:00.000' );

/*inserting into JobBlog*/

insert into dbo.JobBlog (PostDescriptionID,PostDescription,JobDescription,CompanyDescription,WebsiteLink,PostIDFK) values (1,'Job for java developers ', 'job at chennai', 'great place to work and learn', 'www.ofs.com' ,'1' );

