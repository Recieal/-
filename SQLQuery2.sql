create table ProjectClass(
	ClassID int identity(1,1) not null,
	ClassName nvarchar(10) null,
	primary key clustered(ClassID asc)
);
create table Project(
	ProjectID int identity(1,1) not null,
	ProjectName nvarchar(50) null,
	TargetMoney decimal(12,2) null,
	SupportCount int null,
	Progress int null,
	ClassID int null,
	primary key clustered(ProjectID asc),
	constraint FK_Project_ToTable foreign key (ClassID) references ProjectClass(ClassID)
);
go
insert into ProjectClass(ClassName) values('公益')
insert into ProjectClass(ClassName) values('书籍')
insert into ProjectClass(ClassName) values('农业')
go
insert into Project(ProjectName,TargetMoney,SupportCount,Progress,ClassID) values('【众筹扶贫牵手陇南】',cast(2200000.00 
as decimal(12,2)),314,112,1)
insert into Project(ProjectName,TargetMoney,SupportCount,Progress,ClassID) values('【睿介寻子】',cast(300000.00 
as decimal(12,2)),1077,106,1)
insert into Project(ProjectName,TargetMoney,SupportCount,Progress,ClassID) values('【保住蓬篙，为了民族，为了后人】',
cast(650000.00 as decimal(12,2)),999,125,1)
insert into Project(ProjectName,TargetMoney,SupportCount,Progress,ClassID) values('《水灯之城》',cast(55000.00 
as decimal(12,2)),872,10,2)
insert into Project(ProjectName,TargetMoney,SupportCount,Progress,ClassID) values('《知行者说 1-公益新生代访谈录》',
cast(30000.00 as decimal(12,2)),105,95,2)