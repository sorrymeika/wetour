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