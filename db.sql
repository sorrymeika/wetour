create table Admin(
AdminID int identity primary key,
AdminName varchar(100),
Password varchar(32)
)

insert into Admin (AdminName,Password) values ('admin','E10ADC3949BA59ABBE56E057F20F883E')


create table Destination(
ID int identity primary key,
Name varchar(400),
Content varchar(max),
MiddlePic varchar(255),
LargePic varchar(255)
)
alter table Destination add Favorite int
alter table Destination add IsRecommend bit

create table DestinationComment(
ID int identity primary key,
DestinationID int,
UserID int,
Content varchar(1000),
CommentTime datetime
)
alter table DestinationComment add Reply varchar(max)

create table Activity(
ID int identity primary key,
Name varchar(400),
SignUpQty int,
Pic varchar(255),
Address varchar(500),
Favorite int,
Content varchar(max),
StartTime datetime,
FinishTime datetime
)
alter table Activity add IsRecommend bit

create table ActivityComment(
ID int identity primary key,
ActivityID int,
UserID int,
Content varchar(1000),
CommentTime datetime
)
alter table ActivityComment add Reply varchar(max)

create table Users(
ID int identity primary key,
Mobile varchar(20),
Password varchar(32),
NickName varchar(20),
RegisterTime datetime,
LatestLoginTime datetime,
Auth varchar(200)
)
alter table Users add Avatars varchar(255)
alter table Users add Address varchar(500)
alter table Users add Gender bit

create table UserActivity(
ID int identity primary key,
ActivityID int,
UserID int,
JoinTime datetime
)


create table Article(
ID int identity primary key,
RelativeID int,
Title varchar(200),
SubTitle varchar(200),
Pic varchar(255),
Price decimal,
SpecialPrice decimal,
CategoryID int,
Content varchar(max),
Content1 varchar(4000),
Content2 varchar(4000),
Content3 varchar(4000),
Sort int
)
alter table Article add Pic1 varchar(255)
alter table Article add TeachingAge varchar(10)
alter table Article add PraiseRate varchar(10)
alter table Article add ContinueRate varchar(10)
alter table Article add [Type] int

select * from Article


create table Quan(
ID int identity primary key,
UserID int,
Content varchar(1000),
Pictures varchar(1000),
InsertTime datetime,
Up int,
Reply varchar(max)
)

--2015-8-11--
drop table Recommend
create table Recommend(
ID int identity primary key,
Name varchar(400),
Content varchar(max),
Pic varchar(255),
Favorite int,
AreaID int
)
create table RecommendComment(
ID int identity primary key,
RecommendID int,
UserID int,
Content varchar(1000),
CommentTime datetime,
Reply varchar(max)
)

alter table Destination add AreaID int
alter table Activity add AreaID int
alter table Quan add AreaID int

update Destination set AreaID=1
update Activity set AreaID=1
update Quan set AreaID=1

alter table Quan add Status int
alter table DestinationComment add Status int
alter table ActivityComment add Status int
alter table RecommendComment add Status int


alter table Users add Favorite varchar(max)


--2015/08/20
alter table Quan alter column Pictures varchar(max)
alter table DestinationComment add Pictures varchar(max)
alter table ActivityComment add Pictures varchar(max)
alter table RecommendComment add Pictures varchar(max)

alter table DestinationComment add Up int
alter table ActivityComment add Up int
alter table RecommendComment add Up int