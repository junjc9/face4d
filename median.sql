select c.cid,avg(r.score) as score
from (
select * ,(select count(1) from @score where cid=a.cid and (score<a.score or score=a.score and sid<=a.sid)) as Num
from @score a
) as r,(select cid,count(1) as cnt from @score group by cid) as c
where r.cid=c.cid
and (c.cnt % 2 = 0
and (r.num = c.cnt / 2
or r.num = c.cnt / 2 +1)
or c.cnt % 2 = 1
and r.num = (c.cnt+1) / 2
)
group by c.cid

create database interview;
use interview;
CREATE TABLE central (
  name varchar(255) ,
  income int
)

INSERT INTO central VALUES ('桑普森', '400000');
INSERT INTO central VALUES ('迈克', '30000');
INSERT INTO central VALUES ('怀特', '20000');
INSERT INTO central VALUES ('阿诺德', '20000');
INSERT INTO central VALUES ('史密斯', '20000');
INSERT INTO central VALUES ('哈德逊', '15000');
INSERT INTO central VALUES ('肯特', '10000');
INSERT INTO central VALUES ('贝克', '100');
INSERT INTO central VALUES ('斯科特', '1000');

INSERT into discrete VALUES ('阿诺德', '20000','42');
INSERT into discrete VALUES ('Addie', '10000','34');
INSERT into discrete VALUES ('Bill', '15000','25');
INSERT into discrete VALUES ('Bill', '2000','31');
INSERT into discrete VALUES ('Andrew', '60000','44');
INSERT into discrete VALUES ('Kobe', '2000','42');
INSERT into discrete VALUES ('Arnoid', '18000','32');


MariaDB [interview]> select * from central
    -> ;
+--------+--------+
| name   | income |
+--------+--------+
| 桑普森 | 400000 |
| 迈克   |  30000 |
| 怀特   |  20000 |
| 阿诺德 |  20000 |
| 史密斯 |  20000 |
| 哈德逊 |  15000 |
| 肯特   |  10000 |
| 贝克   |    100 |
| 斯科特 |   1000 |
+--------+--------+
9 rows in set (0.001 sec)

--M_o(Mode)
select income,count(*) M_o
from central
group by income
having M_o >= (
  select max(cnt) from (select count(*) cnt from central group by income) tmp
)

---M_e(Median)
select AVG(income) M_e
from (
select a.income from central a,central b
group by a.income
having sum(case when b.income >= a.income then 1 else 0 end) >= count(*)/2
and sum(case when b.income <= a.income then 1 else 0 end) >= count(*)/2
) tmp

SELECT name,income, avg(income),case when income>avg(income) then 2 when income < avg(income) then 1 ELSE 0 END dx 
FROM central b 

SELECT * FROM central
WHERE income > (SELECT AVG(income) FROM central)
-- union:行集合并
-- full join:列合并,两张表的数据会全部出来(不管满不满足条件)