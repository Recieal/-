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
insert into ProjectClass(ClassName) values('����')
insert into ProjectClass(ClassName) values('�鼮')
insert into ProjectClass(ClassName) values('ũҵ')
go
insert into Project(ProjectName,TargetMoney,SupportCount,Progress,ClassID) values('���ڳ��ƶǣ��¤�ϡ�',cast(2200000.00 
as decimal(12,2)),314,112,1)
insert into Project(ProjectName,TargetMoney,SupportCount,Progress,ClassID) values('���Ѱ�ӡ�',cast(300000.00 
as decimal(12,2)),1077,106,1)
insert into Project(ProjectName,TargetMoney,SupportCount,Progress,ClassID) values('����ס��ݣ�Ϊ�����壬Ϊ�˺��ˡ�',
cast(650000.00 as decimal(12,2)),999,125,1)
insert into Project(ProjectName,TargetMoney,SupportCount,Progress,ClassID) values('��ˮ��֮�ǡ�',cast(55000.00 
as decimal(12,2)),872,10,2)
insert into Project(ProjectName,TargetMoney,SupportCount,Progress,ClassID) values('��֪����˵ 1-������������̸¼��',
cast(30000.00 as decimal(12,2)),105,95,2)