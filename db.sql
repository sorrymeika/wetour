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

create table Recommend(
ID int identity primary key,
RelativeID int,
Type int,
Sort int
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

create table Quan(
ID int identity primary key,
UserID int,
Content varchar(1000),
Pictures varchar(1000),
InsertTime datetime,
Up int,
Reply varchar(max)
)