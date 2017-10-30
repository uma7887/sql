/*to create database*/

CREATE DATABASE Stack_Overflow;

/*to drop database*/

DROP DATABASE Stack_Overflow;


***********************************


/*to create parent table*/ 

CREATE TABLE dbo.LoginUserDetail(
    UserID int IDENTITY(1,1) PRIMARY KEY NOT NULL,  
    UserName varchar(225) NOT NULL,  
    UserEmailAddress varchar(225) NOT NULL UNIQUE,  
	UserPassword varchar(225) NOT NULL,  
    isActive tinyint DEFAULT((1)) NOT NULL);  

/*to create about user table*/ 	

CREATE TABLE dbo.AboutUser (
	AboutUserID int IDENTITY(1,1) PRIMARY KEY NOT NULL,  
    AboutUserLanguagesKnown varchar(225) NULL,  
    AboutUserDOB date NULL, 
	AboutUserIDFK int NOT NULL,
	CONSTRAINT FK_UserUserID
	  FOREIGN KEY (AboutUserIDFK)
	  REFERENCES LoginUserDetail (UserID)
	);
	
/*to create userquestion table*/ 

CREATE TABLE dbo.UserQuestion (
	QuestionID int IDENTITY(1,1) PRIMARY KEY NOT NULL,  
    Question varchar(450) UNIQUE NOT NULL, 
    QuestionLike int NULL,
	QuestionTime datetime NOT NULL,
	QuestionTechnology varchar(255) NULL,
	QuestionUserIDFK int NOT NULL,
	CONSTRAINT FK_QuestionUserID
	  FOREIGN KEY (QuestionUserIDFK)
	  REFERENCES LoginUserDetail (UserID)
	);

/*to create usersolution table*/

CREATE TABLE dbo.UserSolution (
	SolutionID int IDENTITY(1,1) PRIMARY KEY NOT NULL,  
    Solution varchar(450) NOT NULL, 
    SolutionLike int NULL,
	SolutionTime datetime NOT NULL,
	SolutioUserIDFK int NOT NULL,
	SolutionQuestionIDFK int NOT NULL
	CONSTRAINT FK_SolutionUserID
	  FOREIGN KEY (SolutioUserIDFK)
	  REFERENCES LoginUserDetail (UserID),
	CONSTRAINT FK_SolutionQuestionID
	  FOREIGN KEY (SolutionQuestionIDFK)
	  REFERENCES UserQuestion (QuestionID)
	  ON DELETE CASCADE
	
	);
	
/*To create JobPost*/
	
CREATE TABLE dbo.JobPost (
	PostID int PRIMARY KEY NOT NULL,  
    Post varchar(450) NOT NULL, 
	PostJobLocation varchar(450) NOT NULL, 
	PostExperience varchar(450) NOT NULL, 
	PostCompanyName varchar(450) NOT NULL, 
	PostTime datetime NOT NULL );
	
	
/*To create JobBlog*/
	
CREATE TABLE dbo.JobBlog (
	PostDescriptionID int PRIMARY KEY NOT NULL,  
	PostDescription varchar(450) NOT NULL, 
	JobDescription varchar(450) NOT NULL, 
	CompanyDescription varchar(450) NOT NULL, 
    WebsiteLink varchar(450) NOT NULL, 
	PostIDFK int NOT NULL,  
	CONSTRAINT FK_PostID
	  FOREIGN KEY (PostIDFK)
	  REFERENCES JobPost (PostID)
	);
	

	
	
	
