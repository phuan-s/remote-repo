
-- �����༶��
create table t_Class(
		Class_ID int(50),
		Class_Name varchar(50)
		);  
		
-- ����ѧ����
create table t_Student(
		Stu_ID    int(50),
		Stu_Name  varchar(50),
		Stu_Age   int(50),
		Stu_Sex   varchar(50),
		Class_Name int(50)
		); 

-- �������ű�
create table t_Department(
		Department_ID   int(50),
		Department_Name varchar(50)
		); 

-- ����Ա����
create table t_Staff(
		 Staff_Num  int(50),
		 Staff_Name varchar(50),
		 Staff_Age  int(50),
		 Staff_Sex  varchar(50),
		 Staff_Salary int(50),
		 Department_Name int(50)
		);  

-- ����������
create table t_Region(
		Region_ID   int(50),
		Region_Name varchar(50)
		); 

-- ����Ӣ�۱� 
create table t_Hero(
		Hero_ID     int(50),
		Hero_Title  varchar(50),
		Hero_Name   varchar(50),
		Hero_Sex    varchar(50),
		Hero_Price  int(50),
		Hero_Region varchar(50)
		); 