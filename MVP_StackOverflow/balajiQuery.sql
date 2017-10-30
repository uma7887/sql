/******
create database 

/*table creation*/

create table userLoginDetail (
	userId int not null primary key identity(1, 1),
	email nvarchar(50) not null unique,
	password nvarchar(50) not null,
	isActive int not null
);

create table userDetail (
	userDetailId int not null primary key identity(1, 1),
	userId int foreign key references userLoginDetail(userId) not null unique,
	profilePicture nvarchar(30),
	name nvarchar(20),
	dateOfBirth date,
	gender nvarchar(6),
	phoneNumber int,
	schoolName nvarchar(30),
	collegeName nvarchar(30),
	workingStatus nvarchar(30),
	relationshipStatus nvarchar(8),
	country nvarchar(25),
	homeTown nvarchar(25),
	languageKnown nvarchar(50)
);

create table userPost (
	userPostId int not null primary key identity(1, 1),
	userId int foreign key references userLoginDetail(userId) not null,
	userPost nvarchar(MAX)
);

create table userLikePost (
	userLikePostId int not null primary key identity(1, 1),
	userPostId int foreign key references userPost(userPostId) not null,
	userId int not null /*foreign key references userLoginDetail(userId)*/
);

create table userSharePost (
	userSharePostId int not null primary key identity(1, 1),
	userPostId int not null foreign key references userpost(userPostId),
	userId int not null /*foreign key references userLoginDetail(userId)*/
);

creare table userFriendRequest (
	userFriendRequestId int not null primary key identity(1, 1),
	userIdSender int not null foreign key references userLoginDetail(userId),
	userIdReceiver int not null
);

creare table userFriendList (
	userFriendListId int not null primary key identity(1, 1),
	userId int not null foreign key references userLoginDetail(userId),
	userIdFriend int not null
);


/*insert operation*/
insert into userLoginDetail values ('balaji.jey', 'balajibaljai')

insert into userDetail (userId, profilePicture) values (1, 'baljai.jpg');

insert into userPost (userId, userPost) values (1, 'good morning');

insert into userPost (userId, userPost) values (1, 'Have a nice day');

insert into userLikePost (userPostId, userId) values (1, 1);

insert into userSharePost (userSharePostId, userId) values (1, 1);

insert into userFriendRequest (userId, userId) values (1, 2);

// after user 2 accepting friend request of user 1

delete from userFriendRequest where userIdReceiver = 2;

insert into userFriendList (userId, userIdFriendList) values (1, 2);

/**********************************\

/***** select ****/

/*****innner join two table*/
select profilePicture from userDetail 
inner join 
	userLoginDetail 
on 
	userDetail.userDetailid = userLoginDetail.userId 
	where 
		email = 'aaa';
*******/
		
/******		
select profilePicture from userDetail 
inner join 
	userLoginDetail 
	on 
		userDetail.userId = userLoginDetail.userId 
		where 
			email = 'bbb';
******/

select * from (( userLoginDetail
inner join 
	userDetail
	on 
		userLoginDetail.userId = userDetail.userId)
inner join 
	userPost
	on	
		userLoginDetail.userId = userPost.userId);


select * from (( userLoginDetail
inner join 
	userDetail
	on 
		userLoginDetail.userId = userDetail.userId)
inner join 
	userPost
	on	
		userLoginDetail.userId = userPost.userId)
	where 
		userpost.userPostId = 1;		
		
/*******
select profilePicture from userDetail 
inner join 
	userLoginDetail 
	on 
		userDetail.userId = userLoginDetail.userId 
		where 
			userDetail.userId = 3;
*******/

/*******
select * from userDetail 
inner join 
	userLoginDetail 
	on 
		userDetail.userId = userLoginDetail.userId 
		where 
			email = 'bbb';
*******/		

select * from userPost 
inner join 
	userLoginDetail 
	on 
		userPost.userId = userLoginDetail.userId
		where 
			userPost.userId = 1;
			
			
select userPost from userPost 
inner join 
	userLoginDetail 
	on 
		userPost.userId = userLoginDetail.userId
		where 
			userPost.userId = 1;

/* update */

update userDetail set name='balaji', homeTown ='madurai' where userid = 1;  


/*delete */

delete from userDetail where userId = 2 ; 








