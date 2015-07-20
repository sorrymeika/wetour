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