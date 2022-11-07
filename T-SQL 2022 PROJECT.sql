drop table attandance;
drop table tutorial;
drop table course ;
drop table niveau;
drop table student;
drop table teacher;
drop table lang;
drop table payment;

-- Table: student
CREATE TABLE student (
    id_student integer  PRIMARY KEY,
    name char(20)  ,
    surname char(20)  ,
	phone char(20),
    date_of_birth date   

) ;

-- Table: lang
CREATE TABLE lang (
    id_lang integer  PRIMARY KEY,
    sign char(5)  ,
    name_of char(20)  
) ;

-- Table: niveau
CREATE TABLE niveau (
    id_niveau integer  PRIMARY KEY,
    name char(50)  
   
) ;

-- Table: course
CREATE TABLE course (
    id_course integer PRIMARY KEY ,
    lesson integer  ,
    desc_of char(200)  ,
    lang_id_lang integer  ,
    niveau_id_niveau integer ,
    price integer,
    FOREIGN KEY( niveau_id_niveau)  REFERENCES niveau(id_niveau),
    FOREIGN KEY (lang_id_lang) REFERENCES lang(id_lang)
) ;

-- Table: payment
CREATE TABLE payment (
    id_payment integer  PRIMARY KEY,
    payment_date date ,
    amount integer ,
	id_attandance integer
	FOREIGN KEY (id_ATTANDANCE) REFERENCES ATTANDANCE (id_ATTANDANCE)
) ;

-- Table: teacher
CREATE TABLE teacher (
    id_Teacher integer PRIMARY KEY,
    first_name char(20)  ,
    last_name char(20) ,
    phone char(20) 
) ;

-- Table: tutorial
CREATE TABLE tutorial (
    id_tutorial integer  PRIMARY KEY,
    name char(20)  ,
    start_date date  ,
    end_date date  ,
    teacher_id_Teacher integer  ,
    course_id_course integer ,
    FOREIGN KEY( teacher_id_Teacher)  REFERENCES teacher(id_teacher),
    FOREIGN KEY (course_id_course) REFERENCES course(id_course)
 
) ;

-- tables
CREATE TABLE attandance (
    id_attandance integer  PRIMARY KEY,
    student_id_student integer  ,
    tutorial_id_tutorial integer  ,
    FOREIGN KEY (student_id_student) REFERENCES student (id_student),
    FOREIGN KEY (tutorial_id_tutorial) REFERENCES TUTORIAL (ID_TUTORIAL),
) ;










 INSERT INTO STUDENT (ID_STUDENT, NAME ,SURNAME , PHONE,DATE_OF_BIRTH )
 VALUES (1,'GOKCE','ALTUNKANAT','05464350999','2000/09/27');
 
 INSERT INTO STUDENT (ID_STUDENT, NAME ,SURNAME , PHONE,DATE_OF_BIRTH )
 VALUES (2,'SEVVAL','BAZ','05337583924', '2000/04/15');
 
 INSERT INTO STUDENT (ID_STUDENT, NAME ,SURNAME , PHONE,DATE_OF_BIRTH )
 VALUES (3,'BEYZA','AKTAS','05855612933', '2000/05/10');
 
 INSERT INTO STUDENT (ID_STUDENT, NAME ,SURNAME , PHONE,DATE_OF_BIRTH )
 VALUES (5,'MELISA','AKKAYA','05670283461', '2000/02/10');
 
 INSERT INTO STUDENT (ID_STUDENT, NAME ,SURNAME , PHONE,DATE_OF_BIRTH )
 VALUES (6,'NURDAN','EKE','05438594229', '1969/05/22');
 
 INSERT INTO STUDENT (ID_STUDENT, NAME ,SURNAME , PHONE,DATE_OF_BIRTH )
 VALUES (7,'ERDEM','ALTUNKANAT','05444609199', '1974/06/30');
 
 INSERT INTO STUDENT (ID_STUDENT, NAME ,SURNAME , PHONE,DATE_OF_BIRTH )
 VALUES (8,'JACK','HARWOOD','05336694641', '2006/07/13');
 
 INSERT INTO STUDENT (ID_STUDENT, NAME ,SURNAME , PHONE,DATE_OF_BIRTH )
 VALUES (9,'AZRA','ELA','05336963200', '2003/06/13');
 
 INSERT INTO STUDENT (ID_STUDENT, NAME ,SURNAME , PHONE,DATE_OF_BIRTH )
 VALUES (10,'BATU','EKE','05498984549', '1999/03/28');
 
 INSERT INTO STUDENT (ID_STUDENT, NAME ,SURNAME , PHONE,DATE_OF_BIRTH )
 VALUES (202,'Ismail','PINARBASI','03498984549', '1998/03/27');
 
 INSERT INTO STUDENT (ID_STUDENT, NAME ,SURNAME , PHONE,DATE_OF_BIRTH )
 VALUES (203,'YILMAZ','EKE','05498984500', '1997/08/19');
 
 INSERT INTO STUDENT (ID_STUDENT, NAME ,SURNAME , PHONE,DATE_OF_BIRTH )
 VALUES (204,'BATU','EKER','05498984009','1997/09/13');
 
 INSERT INTO STUDENT (ID_STUDENT, NAME ,SURNAME , PHONE,DATE_OF_BIRTH )
 VALUES (205,'EMRE','ALDI','05498900549', '1993/07/02');
 
 INSERT INTO STUDENT (ID_STUDENT, NAME ,SURNAME , PHONE,DATE_OF_BIRTH )
 VALUES (206,'FIKRET','DEMIR','05490084549', '1994/04/17');



INSERT INTO TEACHER(ID_TEACHER , first_name, last_name, phone)
VALUES(11,'GOKHAN','OZER','05557467832');

INSERT INTO TEACHER(ID_TEACHER , first_name, last_name, phone)
VALUES(12,'BECKY','BELLIS','05626354771');

INSERT INTO TEACHER(ID_TEACHER , first_name, last_name, phone)
VALUES(13,'TINA','SMITH','05856473732');

INSERT INTO TEACHER(ID_TEACHER , first_name, last_name, phone)
VALUES(14,'AARON','MILLER','05557467832');

INSERT INTO TEACHER(ID_TEACHER , first_name, last_name, phone)
VALUES(15,'AYSEL','MARTINEZ','05448181832');




INSERT INTO lang(id_lang,sign,name_of)
values (44,'A1','elementary');

INSERT INTO lang(id_lang,sign,name_of)
values (45,'A2','pre-intermadiate');

INSERT INTO lang(id_lang,sign,name_of)
values (46,'B1','low-intermadiate');

INSERT INTO lang(id_lang,sign,name_of)
values (47,'B2','intermadiate');

INSERT INTO lang(id_lang,sign,name_of)
values (48,'C1','advance');



INSERT INTO niveau(ID_NIVEAU,name)
values (51,'english');

INSERT INTO niveau(ID_NIVEAU,name)
values (52,'german');


INSERT INTO course (id_course,lesson,desc_of,lang_id_lang,niveau_id_niveau,price)
values(53,1,'Learning the basics of german language ',44,52,2500);

INSERT INTO course (id_course,lesson,desc_of,lang_id_lang,niveau_id_niveau,price)
values(54,1,'Learning the beginning of english language ',45,51,3500);

INSERT INTO course (id_course,lesson,desc_of,lang_id_lang,niveau_id_niveau,price)
values(55,1,'Learning the pre-intermadiate of german language ',46,52,4000);

INSERT INTO course (id_course,lesson,desc_of,lang_id_lang,niveau_id_niveau,price)
values(56,1,'Learning the intermadiate of german language ',47,52,3800);

INSERT INTO course (id_course,lesson,desc_of,lang_id_lang,niveau_id_niveau,price)
values(57,1,'Learning the advance features in english language ',48,51,2750);

INSERT INTO course (id_course,lesson,desc_of,lang_id_lang,niveau_id_niveau,price)
values(58,1,'Learning the basics of english language ',44,51,3000);




INSERT INTO tutorial (id_tutorial,teacher_id_teacher,course_id_course,name,start_date,end_date)
values(131,11,53,'Elementary German','2021/01/01','2021/03/01');

INSERT INTO tutorial (id_tutorial,teacher_id_teacher,course_id_course,name,start_date,end_date)
values(132,12,58,'Elementary English','2021/01/01','01/03/2021');

INSERT INTO tutorial (id_tutorial,teacher_id_teacher,course_id_course,name,start_date,end_date)
values(133,13,54,'Pre-Inter English','2021/03/01','2021/06/01');

INSERT INTO tutorial (id_tutorial,teacher_id_teacher,course_id_course,name,start_date,end_date)
values(134,14,55,'Low-Inter German','2021/01/15','2021/03/15');

INSERT INTO tutorial (id_tutorial,teacher_id_teacher,course_id_course,name,start_date,end_date)
values(135,15,56,'Intermadiate German','2021/01/15','2021/03/15');

INSERT INTO tutorial (id_tutorial,teacher_id_teacher,course_id_course,name,start_date,end_date)
values(136,11,57,'Advance English','2021/02/01','2021/04/01');

INSERT INTO ATTANDANCE(ID_ATTANDANCE,STUDENT_ID_STUDENT,TUTORIAL_ID_TUTORIAL)
VALUES(75,1,131);

INSERT INTO ATTANDANCE(ID_ATTANDANCE,STUDENT_ID_STUDENT,TUTORIAL_ID_TUTORIAL)
VALUES(76,2,132);

INSERT INTO ATTANDANCE(ID_ATTANDANCE,STUDENT_ID_STUDENT,TUTORIAL_ID_TUTORIAL)
VALUES(77,3,133);

INSERT INTO ATTANDANCE(ID_ATTANDANCE,STUDENT_ID_STUDENT,TUTORIAL_ID_TUTORIAL)
VALUES(78,5,134);

INSERT INTO ATTANDANCE(ID_ATTANDANCE,STUDENT_ID_STUDENT,TUTORIAL_ID_TUTORIAL)
VALUES(79,6,135);

INSERT INTO ATTANDANCE(ID_ATTANDANCE,STUDENT_ID_STUDENT,TUTORIAL_ID_TUTORIAL)
VALUES(80,7,136);

INSERT INTO ATTANDANCE(ID_ATTANDANCE,STUDENT_ID_STUDENT,TUTORIAL_ID_TUTORIAL)
VALUES(81,8,133);

INSERT INTO ATTANDANCE(ID_ATTANDANCE,STUDENT_ID_STUDENT,TUTORIAL_ID_TUTORIAL)
VALUES(82,9,134);

INSERT INTO ATTANDANCE(ID_ATTANDANCE,STUDENT_ID_STUDENT,TUTORIAL_ID_TUTORIAL)
VALUES(83,10,135);

INSERT INTO ATTANDANCE(ID_ATTANDANCE,STUDENT_ID_STUDENT,TUTORIAL_ID_TUTORIAL)
VALUES(84,202,131);

INSERT INTO ATTANDANCE(ID_ATTANDANCE,STUDENT_ID_STUDENT,TUTORIAL_ID_TUTORIAL)
VALUES(85,203,132);

INSERT INTO ATTANDANCE(ID_ATTANDANCE,STUDENT_ID_STUDENT,TUTORIAL_ID_TUTORIAL)
VALUES(86,204,136);

INSERT INTO ATTANDANCE(ID_ATTANDANCE,STUDENT_ID_STUDENT,TUTORIAL_ID_TUTORIAL)
VALUES(87,205,132);

INSERT INTO ATTANDANCE(ID_ATTANDANCE,STUDENT_ID_STUDENT,TUTORIAL_ID_TUTORIAL)
VALUES(88,206,134);


select* from attandance ;



INSERT INTO PAYMENT (ID_PAYMENT,PAYMENT_DATE,AMOUNT,ID_ATTANDANCE)
VALUES(1000,'2020/12/20',2500,75);

INSERT INTO PAYMENT (ID_PAYMENT,PAYMENT_DATE,AMOUNT,ID_ATTANDANCE)
VALUES(1001,'2021/02/20',3500,76);

INSERT INTO PAYMENT (ID_PAYMENT,PAYMENT_DATE,AMOUNT,ID_ATTANDANCE)
VALUES(1002,'2021/01/10',3500,77);

INSERT INTO PAYMENT (ID_PAYMENT,PAYMENT_DATE,AMOUNT,ID_ATTANDANCE)
VALUES(1003,'2021/12/01',4000,78);

INSERT INTO PAYMENT (ID_PAYMENT,PAYMENT_DATE,AMOUNT,ID_ATTANDANCE)
VALUES(1004,'2021/02/01',3800,79);

INSERT INTO PAYMENT (ID_PAYMENT,PAYMENT_DATE,AMOUNT,ID_ATTANDANCE)
VALUES(1005,'2021/02/11',2750,80);

INSERT INTO PAYMENT (ID_PAYMENT,PAYMENT_DATE,AMOUNT,ID_ATTANDANCE)
VALUES(1006,'2021/11/28',3500,81);

INSERT INTO PAYMENT (ID_PAYMENT,PAYMENT_DATE,AMOUNT,ID_ATTANDANCE)
VALUES(1009,'2020/12/03',4000,82);

INSERT INTO PAYMENT (ID_PAYMENT,PAYMENT_DATE,AMOUNT,ID_ATTANDANCE)
VALUES(1008,'2020/12/20',3800,83);

INSERT INTO PAYMENT (ID_PAYMENT,PAYMENT_DATE,AMOUNT,ID_ATTANDANCE)
VALUES(1009,'2021/02/01',2500,84);

INSERT INTO PAYMENT (ID_PAYMENT,PAYMENT_DATE,AMOUNT,ID_ATTANDANCE)
VALUES(1010,'2021/01/15',3000,85);

INSERT INTO PAYMENT (ID_PAYMENT,PAYMENT_DATE,AMOUNT,ID_ATTANDANCE)
VALUES(1011,'2021/01/03',2750,86);

INSERT INTO PAYMENT (ID_PAYMENT,PAYMENT_DATE,AMOUNT,ID_ATTANDANCE)
VALUES(1012,'2020/12/03',3000,87);

INSERT INTO PAYMENT (ID_PAYMENT,PAYMENT_DATE,AMOUNT,ID_ATTANDANCE)
VALUES(1013,'2021/12/14',4000,88);

-- result set--create procedure that shows all course description which has price lower than 3000-- works 

    drop procedure course_data;

    CREATE PROCEDURE course_data
    AS
    begin
    DECLARE 
        @desc_of varCHAR(200), 
        @price   int
    DECLARE cursor_1 CURSOR
    FOR SELECT 
            desc_of, 
            price
        FROM 
            course where price < 3000;
    OPEN cursor_1;
    WHILE @@FETCH_STATUS = 0
        BEGIN
		FETCH NEXT FROM cursor_1 INTO 
                @desc_of, 
                @price;
           PRINT Cast(@desc_of as  varchar(200)) + Cast(@price as varchar(11));
           
        END;
    CLOSE cursor_1;
    DEALLOCATE cursor_1;
    END;

	execute course_data;

--output--Define procedure  riseprice which increase course prices between 2000-3000---works
drop procedure riseprice;

CREATE PROCEDURE RISEPRICE
 @i varchar(100)  output
AS
BEGIN
DECLARE @IDP INT;
DECLARE C1 CURSOR LOCAL FOR
SELECT ID_COURSE
FROM COURSE
WHERE PRICE BETWEEN '2000' AND '3000';
SET NOCOUNT ON;
OPEN C1;
WHILE 1=1 BEGIN
FETCH C1 INTO @IDP;
IF @@FETCH_STATUS <> 0 BREAK ;
UPDATE COURSE SET PRICE = PRICE*1.1 WHERE PRICE BETWEEN  '2000' AND '3000' AND  ID_COURSE = @IDP;
END;
CLOSE C1;
DEALLOCATE C1;

SELECT @i = 'Prices of courses which is between 2000 and 3000 are increased by 10% ';
END;

Declare @m varchar(100);
Execute riseprice @m OUTPUT;
Print @m;

select* from course;


--return procedure -- finds how many courses on feb --works
drop procedure COURSE_STARTS_ON_FEB;

CREATE procedure COURSE_STARTS_ON_FEB
AS
BEGIN
Declare a1 Cursor Local FOR
SELECT NAME from tutorial where start_date between '01-FEB-21' and '28-FEB-21' ;
DECLARE @Y  VARCHAR(30);
DECLARE @x VARCHAR(11);
DECLARE @courseCount integer;
 
SET NOCOUNT ON;
select @x = COUNT(name) from tutorial;

    open a1 ;
    while 1=1 begin fetch a1 into @y;
        if @@fetch_status <> 0 break  ;
    print @Y;
    end ;
    close a1;

	Select @courseCount = COUNT(id_tutorial) 
	from tutorial where start_date between '01-FEB-21' and '28-FEB-21';

	return @courseCount;
end;
Declare @ret_feb INT;
Execute @ret_feb =COURSE_STARTS_ON_FEB;
print @ret_feb;




---TRIGGER 1-- works -- when we insert student it shows details of student if we inserted with the same name 
 drop trigger show_sameName_students;
CREATE TRIGGER show_sameName_students on Student for insert as
Declare @s_bd date;
Declare @s_id INT;
Declare @s_count INT;
Declare @new_name varchar(15);
Select @new_name = name from inserted;

Declare cur CURSOR LOCAL FOR
select id_student from Student where name = @new_name;

begin
select @s_count = COUNT(id_student) from Student
where name = @new_name;
PRINT 'There are ' + CAST(@s_count as varchar) + ' students with this name.';
IF @s_count > 0
	open cur;
	while 1=1 begin
	fetch cur into @s_id;
	If @@FETCH_STATUS <> 0 BREAK ;

	Select @s_bd = date_of_birth from Student where id_student = @s_id;

	PRINT 'Student ID: ' + CAST(@s_id as varchar) + ' Name: ' + @new_name + ' Date of birth: ' + CAST(@s_bd as varchar);
	End;
	Close cur;
END;



INSERT INTO STUDENT (ID_STUDENT, NAME ,SURNAME , PHONE,DATE_OF_BIRTH )
 VALUES (50,'GOKCE','ALTUN','05536728499', '27-DEC-2001');
 
 INSERT INTO STUDENT (ID_STUDENT, NAME ,SURNAME , PHONE,DATE_OF_BIRTH )
 VALUES (5222,'GOKCE','KAAT','12364350900', '10-OCT-1999');

--trigger 2 -- after insert print all lessosn from course  which is exist-- works 
drop trigger tr3;

CREATE TRIGGER  TR3 ON course FOR INSERT as 
BEGIN
declare @kategoriadi varchar(100)
DECLARE H CURSOR FOR SELECT desc_of   FROM course
open h 
fetch next from h  into @kategoriadi
while @@FETCH_STATUS=0
begin 

print @kategoriadi
fetch next from h into @kategoriadi
END;
CLOSE H;
DEALLOCATE H;
end;


INSERT INTO course (id_course,lesson,desc_of,lang_id_lang,niveau_id_niveau,price)
values(890,1,'Learning the basics of german language ',44,52,2500);

-- TRIGGER 3 --create a trigger shows before insert new years payments and mutliply by 1.5 -----
drop trigger trig2;

create trigger trig2 on Payment for insert as
declare pm CURSOR LOCAL FOR
select payment_date from Payment;

declare @h DATE;
declare @new_paymentdate date;
declare @new_id INT;
select @new_paymentdate = payment_date from inserted;
select @new_id = id_payment from inserted;

begin
open pm;
while 1=1 begin
fetch pm into @h;
If @@FETCH_STATUS <> 0 BREAK ;
if @new_paymentdate >= '2022-JAN-01'
	Update Payment
	Set amount = amount*1.5
	where id_payment = @new_id;
End;
close pm;
END;

INSERT INTO PAYMENT (ID_PAYMENT,PAYMENT_DATE,AMOUNT,id_attandance)
VALUES(084,'2022-DEC-11',4000,88);


