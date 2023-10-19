-- 学生查询

-- 1查询所有学生的信息
SELECT * FROM t_student;

-- 2查询所有未成年学生的信息 
SELECT * FROM t_student WHERE Stu_Age < 18;

-- 3查询所有成年学生的信息
SELECT * FROM t_student WHERE Stu_Age >= 18;

-- 4查询所有30以上的学生信息含30
SELECT * FROM t_student WHERE Stu_Age >= 30;

-- 5查询所有20到25岁之间的学生信息
SELECT * FROM t_student WHERE Stu_Age BETWEEN 20 AND 25;

-- 6查询查询所有18岁以下或者30岁以上的学生的信息
SELECT * FROM t_student WHERE Stu_Age < 18 OR Stu_Age > 30;

-- 7查询2班的所有的学生信息
SELECT * FROM t_student WHERE Class_Name = 2;

-- 8查询所有不是2班的学生的信息 
SELECT * FROM t_student WHERE Class_Name <> 2;

-- 9查询所有学号是10040后的学生的信息
SELECT * FROM t_student WHERE Stu_ID > 10040;

-- 10查询所有学号在10010到10019之间的学生的信息
SELECT * FROM t_student WHERE Stu_ID BETWEEN 10010 AND 10019;

-- 11查询学号是10038的学生的信息
SELECT * FROM t_student WHERE Stu_ID = 10038;

-- 12查询李雷的信息
SELECT * FROM t_student WHERE Stu_Name = '李雷';

-- 13查询所有男生的信息
SELECT * FROM t_student WHERE Stu_Sex = '男';

-- 14查询编号是3号班的女生的信息
SELECT * FROM t_student WHERE Class_Name = 3 AND Stu_Sex = '女';

-- 15查询编号是1号班所有未成年的学生的信息
SELECT * FROM t_student WHERE Class_Name = 1 AND Stu_Age < 18;

-- 16查询编号是2号班所有成年的学生的信息
SELECT * FROM t_student WHERE Class_Name = 2 AND Stu_Age >= 18;

-- 17查询编号是3号班所有30岁以上的学生的信息
SELECT * FROM t_student WHERE Class_Name = 3 AND Stu_Age >= 30;

-- 18查询30岁以上的女生信息
SELECT * FROM t_student WHERE Stu_Age >= 30 AND Stu_Sex = '女';

-- 19查询未成年的女生的信息
SELECT * FROM t_student WHERE Stu_Age < 18 AND Stu_Sex = '女';

-- 20查询编号是2班未成年的男生的信息
SELECT * FROM t_student WHERE Class_Name = 2 AND Stu_Age < 18 AND Stu_Sex = '男';

-- 21查询所有学生的信息，按年龄从小到大排序 默认就是升序
SELECT * FROM t_student ORDER BY Stu_Age;

-- 22查询编号是2班的学生信息，按年龄从大到小排序
SELECT * FROM t_student WHERE Class_Name = 2 ORDER BY Stu_Age DESC;

-- 23查询编号是1班的学生信息，按学号从大到小排序
SELECT * FROM t_student WHERE Class_Name = 1 ORDER BY Stu_Age DESC;

-- 24查询名字中带'小' 的学生的信息
SELECT * FROM t_student WHERE Stu_Name LIKE '%小%';

-- 25查询所有姓陈的学生的信息
SELECT * FROM t_student WHERE Stu_Name LIKE '陈%';

-- 26查询所有姓张的学生的信息
SELECT * FROM t_student WHERE Stu_Name LIKE '张%';

-- 27查询所有1002x  号段的学生信息 （通配符）
SELECT * FROM t_student WHERE Stu_ID LIKE '1002_';

-- 28查询年龄在20到29学生信息（通配符）
SELECT * FROM t_student WHERE Stu_Age BETWEEN 20 AND 29;

-- 29查询年龄在10到19 以及 30到39的 学生信息（通配符）
SELECT * FROM t_student WHERE (Stu_Age BETWEEN 10 AND 19) OR (Stu_Age BETWEEN 30 AND 39);

-- 30查询所有学生的信息，看第二页（每页显示6条信息）
SELECT * FROM t_student ORDER BY Stu_ID LIMIT 6 OFFSET 6;


-- 员工查询

-- 1查询所有员工的信息，看第三页（每页显示3条）
SELECT * FROM t_staff LIMIT 3 OFFSET 6;

-- 2查询所有男员工的信息
SELECT * FROM t_staff WHERE Staff_Sex = '男';

-- 3查询1号部门女员工的信息
SELECT * FROM t_staff WHERE Department_Name = 1 AND Staff_Sex = '女';

-- 4查询工资破万的女员工的信息
SELECT * FROM t_staff WHERE Staff_Salary > 10000 AND Staff_Sex = '女';

-- 5查询年龄超过40岁的员工信息（含40）
SELECT * FROM t_staff WHERE Staff_Age >= 40;

-- 6查询30岁以下女员工的信息（含30）
SELECT * FROM t_staff WHERE Staff_Age <= 30 AND Staff_Sex = '女';

-- 7查询年龄在25到35之间的男员工的信息
SELECT * FROM t_staff WHERE Staff_Age BETWEEN 25 AND 35 AND Staff_Sex = '男';

-- 8查询3号部门工资不到3000的男员工的信息
SELECT * FROM t_staff WHERE Department_Name = 3 AND Staff_Salary < 3000 AND Staff_Sex = '男';

-- 9查询2号部门的员工的信息，按照工资从高到低排序
SELECT * FROM t_staff WHERE Department_Name = 2 ORDER BY Staff_Salary DESC;

-- 10查询1号部门姓王的员工信息
SELECT * FROM t_staff WHERE Department_Name = 1 AND Staff_Name LIKE '王%';

-- 英雄查询

-- 1查看所有的英雄信息，看第五页（每页显示4条）
SELECT * FROM t_hero LIMIT 4 OFFSET 16;

-- 2查看1号地区的女性英雄的信息
SELECT * FROM t_hero WHERE Region_ID = 1 AND Hero_Sex = '女';

-- 3查看3号地区的男性英雄的信息
SELECT * FROM t_hero WHERE Region_ID = 3 AND Hero_Sex = '男';

-- 4查询所有名字是两个字的英雄信息
SELECT * FROM t_hero WHERE LENGTH(Hero_Name) = 2*3;   -- 一个中文字符占3 bytes 

-- 5查询所有名字是四个字的女英雄信息
SELECT * FROM t_hero WHERE LENGTH(Hero_Name) = 4*3 AND Hero_Sex = '女';

-- 6查询所有女性英雄的信息按照价格从低到高排序
SELECT * FROM t_hero WHERE Hero_Sex = '女' ORDER BY Hero_Price ASC;

-- 7查询所有英雄的信息按照价格从高到低排序，看第2页（每页显示5条）
SELECT * FROM t_hero ORDER BY Hero_Price DESC LIMIT 5 OFFSET 5;

-- 8查询女英雄名字中带有'克'的英雄的信息
SELECT * FROM t_hero WHERE Hero_Sex = '女' AND Hero_Name LIKE '%克%';

-- 9查询价格是4800和3150的英雄的信息
SELECT * FROM t_hero WHERE Hero_Price IN (4800, 3150);

-- 10查询查询价格是450的男英雄的信息
SELECT * FROM t_hero WHERE Hero_Price = 450 AND Hero_Sex = '男';




