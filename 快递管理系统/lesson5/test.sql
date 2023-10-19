## 新增（除了名字外其余信息自编）
-- 新开设班级“武术班”
INSERT INTO t_Class ( Class_Id, Class_Name ) VALUES ( 5, '武术班' );

-- 新开设班级“异能行者班”
INSERT INTO t_Class ( Class_Id, Class_Name ) VALUES ( 6, '异能行者班' );

-- 武术班新增学员：甄子弹、吴京、托尼贾、王宝强
INSERT INTO t_student (Stu_ID,Stu_Name,Stu_Age,Stu_Sex,Class_Name) values (50001,'甄子弹',18,'男',5);
INSERT INTO t_student (Stu_ID,Stu_Name,Stu_Age,Stu_Sex,Class_Name) values (50002,'吴京',20,'男',5);
INSERT INTO t_student (Stu_ID,Stu_Name,Stu_Age,Stu_Sex,Class_Name) values (50003,'托尼贾',19,'男',5);
INSERT INTO t_student (Stu_ID,Stu_Name,Stu_Age,Stu_Sex,Class_Name) values (50004,'王宝强',20,'男',5);

-- 异能行者班新增学员：汪大东、雷婷、钟万均、花灵龙
INSERT INTO t_student (Stu_ID,Stu_Name,Stu_Age,Stu_Sex,Class_Name) values (60001,'汪大东',18,'男',6);
INSERT INTO t_student (Stu_ID,Stu_Name,Stu_Age,Stu_Sex,Class_Name) values (60002,'雷婷',20,'女',6);
INSERT INTO t_student (Stu_ID,Stu_Name,Stu_Age,Stu_Sex,Class_Name) values (60003,'钟万均',19,'男',6);
INSERT INTO t_student (Stu_ID,Stu_Name,Stu_Age,Stu_Sex,Class_Name) values (60004,'花灵龙',20,'女',6);

-- 新设立部门“采购部”
INSERT INTO t_department ( Department_ID, Department_Name) VALUES ( 4, '采购部' );

-- 新招聘采购部员工：张三疯、张信哲、钟无艳、周深、迪丽热妈
INSERT INTO t_staff (Staff_Num,Staff_Name,Staff_Age,Staff_Sex,Staff_Salary, Department_Name) values (401,'张三疯',35,'男',6500,4);
INSERT INTO t_staff (Staff_Num,Staff_Name,Staff_Age,Staff_Sex,Staff_Salary, Department_Name) values (402,'张信哲',35,'男',6300,4);
INSERT INTO t_staff (Staff_Num,Staff_Name,Staff_Age,Staff_Sex,Staff_Salary, Department_Name) values (403,'钟无艳',35,'男',6200,4);
INSERT INTO t_staff (Staff_Num,Staff_Name,Staff_Age,Staff_Sex,Staff_Salary, Department_Name) values (404,'周深',35,'男',7000,4);
INSERT INTO t_staff (Staff_Num,Staff_Name,Staff_Age,Staff_Sex,Staff_Salary, Department_Name) values (405,'迪丽热妈',35,'女',6500,4);

## 修改
-- 将“甄子弹”改为“甄子丹”
UPDATE t_student SET Stu_Name = '甄子丹' WHERE Stu_Name = '甄子弹';

-- 将“王宝强”转入“明星班”
UPDATE t_student SET Class_Name = 4 WHERE Stu_Name = '王宝强';

-- 将“迪丽热妈”改为“迪丽热巴”
UPDATE t_staff SET Staff_Name = '迪丽热巴' WHERE Staff_Name = '迪丽热妈';

-- 将“周深”性别改为女
UPDATE t_staff SET Staff_Sex = '女' WHERE Staff_Name = '周深';

-- 将“采购部”的员工的工资统一设置为3500元
UPDATE t_staff SET Staff_Salary = 3500 WHERE Department_Name = '4';

-- 将“采购部”的男员工的工资统一上调300元
UPDATE t_staff SET Staff_Salary = Staff_Salary + 300 WHERE Department_Name = '4' AND Staff_Sex = '男';

-- 将“采购部”的女员工的工资统一下调100元
UPDATE t_staff SET Staff_Salary = Staff_Salary - 100 WHERE Department_Name = '4' AND Staff_Sex = '女';


## 删除
-- 开除学生托尼贾
DELETE FROM t_student WHERE Stu_Name = '托尼贾';

-- 解雇员工张信哲
DELETE FROM t_staff WHERE Staff_Name = '张信哲';

-- 写出删库跑路的几种方式（本功能编写代码即可，无需运行）
DROP DATABASE database_name;
DROP TABLE table_name;
TRUNCATE TABLE table_name;