/*-----------------------------------------TASK 2------------------------------*/

/*Question 1*/
CREATE DATABASE College;

USE College;

CREATE TABLE department (
d_id INTEGER ,
dname VARCHAR(20),
staff VARCHAR(20),
jobtitle VARCHAR(20),
phonenumber VARCHAR(20) DEFAULT "+35311234589",
staffStartDate INTEGER,
staffDayOff INTEGER,
PRIMARY KEY (d_id)
);

CREATE TABLE course (
c_id INTEGER ,
cname VARCHAR(30),
type VARCHAR(25),
level INTEGER,
startDate DATE,
duration VARCHAR(20),
semester INTEGER,
deliveryMethod VARCHAR(20),
department_id INTEGER,
PRIMARY KEY (c_id),
FOREIGN KEY (department_id)
REFERENCES department(d_id)
);

CREATE TABLE module (
m_id INTEGER ,
mname VARCHAR(30),
course_id INTEGER,
PRIMARY KEY (m_id),
FOREIGN KEY (course_id)
REFERENCES course(c_id)
);

CREATE TABLE student (
s_id INTEGER ,
firstname VARCHAR(20),
lastname VARCHAR(20),
address VARCHAR(40),
phonenumber VARCHAR(20) DEFAULT "+35311234589",
email VARCHAR(40),
year INTEGER,
status VARCHAR(20),
feestatus VARCHAR(20),
feePaidDate INTEGER,
grade DOUBLE(2,1),
course_id INTEGER,
PRIMARY KEY (s_id),
FOREIGN KEY (course_id)
REFERENCES course(c_id)
);

CREATE TABLE includes (
course_id INTEGER,
module_id INTEGER,
FOREIGN KEY (course_id)
REFERENCES course(c_id),
FOREIGN KEY (module_id)
REFERENCES module(m_id)
);

CREATE TABLE takes (
module_id INTEGER,
student_id INTEGER,
FOREIGN KEY (module_id)
REFERENCES module(m_id),
FOREIGN KEY (student_id)
REFERENCES student(s_id)
);

SELECT * FROM department;

SELECT * FROM module;

/*Question 2*/
INSERT INTO `College`.`department`
(`d_id`,`dname`,`staff`,`jobtitle`,`phonenumber`,`staffStartDate`,`staffDayOff`, `openingtimes`)
VALUES
(1,"College Ofiice","Humfrid Leafe","President",4824186022,"2016-07-03",3,"8am to 5pm");

INSERT INTO `College`.`department`
(`d_id`,`dname`,`staff`,`jobtitle`,`phonenumber`,`staffStartDate`,`staffDayOff`, `openingtimes`)
VALUES
(2,"College Ofiice","Grove Pattemore","Dean",3491084675,"2016-10-11",5,"8am to 5pm");

INSERT INTO `College`.`department`
(`d_id`,`dname`,`staff`,`jobtitle`,`phonenumber`,`staffStartDate`,`staffDayOff`, `openingtimes`)
VALUES
(3,"College Ofiice","Frederic Paton","Lecturer",5712254640,"2018-08-13",10,"8am to 5pm");

INSERT INTO `College`.`department`
(`d_id`,`dname`,`staff`,`jobtitle`,`phonenumber`,`staffStartDate`,`staffDayOff`, `openingtimes`)
VALUES
(4,"College Ofiice","Port Duggan","Office",4567885369,"2016-10-02",2,"8am to 5pm");

INSERT INTO `College`.`department`
(`d_id`,`dname`,`staff`,`jobtitle`,`phonenumber`,`staffStartDate`,`staffDayOff`, `openingtimes`)
VALUES
(5,"College Ofiice","Bud Garrad","Office",5272484655,"2015-06-27",7,"8am to 5pm");

INSERT INTO `College`.`department`
(`d_id`,`dname`,`staff`,`jobtitle`,`phonenumber`,`staffStartDate`,`staffDayOff`, `openingtimes`)
VALUES
(6,"Human Resources","Kalie Matzl","Recruiter",1426580019,"2020-07-01",5,"8am to 5pm");

INSERT INTO `College`.`department`
(`d_id`,`dname`,`staff`,`jobtitle`,`phonenumber`,`staffStartDate`,`staffDayOff`, `openingtimes`)
VALUES
(7,"Human Resources","Lev Sheasby","Recruiting Manager",6149776927,"2016-10-14",7,"8am to 5pm");

INSERT INTO `College`.`department`
(`d_id`,`dname`,`staff`,`jobtitle`,`phonenumber`,`staffStartDate`,`staffDayOff`, `openingtimes`)
VALUES
(8,"Marketing","Benedikt Bourgourd","Marketing Assistant",9003692362,"2018-07-12",10,"8am to 5pm");

INSERT INTO `College`.`department`
(`d_id`,`dname`,`staff`,`jobtitle`,`phonenumber`,`staffStartDate`,`staffDayOff`, `openingtimes`)
VALUES
(9,"Accounting","Silvain Leavesley","Account Coordinator",8284275986,"2020-02-13",1,"8am to 5pm");

INSERT INTO `College`.`department`
(`d_id`,`dname`,`staff`,`jobtitle`,`phonenumber`,`staffStartDate`,`staffDayOff`, `openingtimes`)
VALUES
(10,"School of Business","Hayward Reekie","Lecturer",4058124965,"2019-02-13",6,"8am to 5pm");

INSERT INTO `College`.`department`
(`d_id`,`dname`,`staff`,`jobtitle`,`phonenumber`,`staffStartDate`,`staffDayOff`, `openingtimes`)
VALUES
(11,"School of Computing","Cynde Chasteau","Lecturer",5543930312,"2020-05-20",4,"8am to 5pm");

INSERT INTO `College`.`department`
(`d_id`,`dname`,`staff`,`jobtitle`,`phonenumber`,`staffStartDate`,`staffDayOff`, `openingtimes`)
VALUES
(12,"School of Finance","Kalie Matzl","Lecturer",1426580019,"2018-09-17",8,"8am to 5pm");

SELECT * FROM department;

INSERT INTO `College`.`course`
(`c_id`,`cname`,`type`,`level`,`startDate`,`duration`,`semester`,`deliveryMethod`,`department_id`)
VALUES
(1,"Business","PHD",6,"2015-01-20","1 year",6,"Presential", 10);

INSERT INTO `College`.`course`
(`c_id`,`cname`,`type`,`level`,`startDate`,`duration`,`semester`,`deliveryMethod`,`department_id`)
VALUES
(2,"Science Computing","Masters",5,"2016-09-25","5 years",1,"Presential", 11);

INSERT INTO `College`.`course`
(`c_id`,`cname`,`type`,`level`,`startDate`,`duration`,`semester`,`deliveryMethod`,`department_id`)
VALUES
(3,"Accounting","Bacharel",8,"2018-01-20","4 years",6,"Presential", 12);

INSERT INTO `College`.`course`
(`c_id`,`cname`,`type`,`level`,`startDate`,`duration`,`semester`,`deliveryMethod`,`department_id`)
VALUES
(4,"Business Management","Master",8,"2020-09-25","1 year",3,"Presential",10);

INSERT INTO `College`.`course`
(`c_id`,`cname`,`type`,`level`,`startDate`,`duration`,`semester`,`deliveryMethod`,`department_id`)
VALUES
(5,"Data Science","PHD",8,"2019-09-25","2 years",4,"Presential",11);

INSERT INTO `College`.`course`
(`c_id`,`cname`,`type`,`level`,`startDate`,`duration`,`semester`,`deliveryMethod`,`department_id`)
VALUES
(6,"Data Analytics","Bacharel",6,"2017-01-01","4 years",8,"Presential",11);

INSERT INTO `College`.`course`
(`c_id`,`cname`,`type`,`level`,`startDate`,`duration`,`semester`,`deliveryMethod`,`department_id`)
VALUES
(7,"Data Governance","PHD",8,"2019-01-01","2 years",4,"Presential",11);

INSERT INTO `College`.`course`
(`c_id`,`cname`,`type`,`level`,`startDate`,`duration`,`semester`,`deliveryMethod`,`department_id`)
VALUES
(8,"Cyber Security","Master",8,"2020-01-01","1 year",3,"Presential",11);

INSERT INTO `College`.`course`
(`c_id`,`cname`,`type`,`level`,`startDate`,`duration`,`semester`,`deliveryMethod`,`department_id`)
VALUES
(9,"International Finance Services","Bacharel",6,"2017-09-25","3 years",6,"Presential",12);

INSERT INTO `College`.`course`
(`c_id`,`cname`,`type`,`level`,`startDate`,`duration`,`semester`,`deliveryMethod`,`department_id`)
VALUES
(10,"Finance Services Analytics","PHD",8,"2020-01-01","1 year",3,"Presential",12);


SELECT * FROM course;
    
INSERT INTO `College`.`module`
(`m_id`,`mname`,`course_id`)
VALUES
(25,"Technologies for Business",1);

INSERT INTO `College`.`module`
(`m_id`,`mname`,`course_id`)
VALUES
(13,"Software Development",2);

INSERT INTO `College`.`module`
(`m_id`,`mname`,`course_id`)
VALUES
(34,"Financial Accounting 1",3);

INSERT INTO `College`.`module`
(`m_id`,`mname`,`course_id`)
VALUES
(55,"Business Management Practise",4);

INSERT INTO `College`.`module`
(`m_id`,`mname`,`course_id`)
VALUES
(43,"Introduction to Data Science",5);

INSERT INTO `College`.`module`
(`m_id`,`mname`,`course_id`)
VALUES
(22,"Database and Analytics Programming",6);

INSERT INTO `College`.`module`
(`m_id`,`mname`,`course_id`)
VALUES
(5,"Data Visualization",7);

INSERT INTO `College`.`module`
(`m_id`,`mname`,`course_id`)
VALUES
(24,"Security Fundamentals",8);

INSERT INTO `College`.`module`
(`m_id`,`mname`,`course_id`)
VALUES
(33,"Financial Markets and Institutions",9);

INSERT INTO `College`.`module`
(`m_id`,`mname`,`course_id`)
VALUES
(12,"Financial Markets I",10);


SELECT * FROM module;


INSERT INTO `College`.`student`
(`s_id`,`firstname`,`lastname`,`address`,`phonenumber`,`email`,`year`,`status`,`feestatus`,`feePaidDate`,`grade`,`course_id`)
VALUES
(1,"Maison","Blancowe","00475 Burrows Parkway","5092412040","mblancowe0@com.com",3,"Coursing","outstanding",3,4.5,1);

INSERT INTO `College`.`student`
(`s_id`,`firstname`,`lastname`,`address`,`phonenumber`,`email`,`year`,`status`,`feestatus`,`feePaidDate`,`grade`,`course_id`)
VALUES
(2,"Byrle","Dyott","4009 Doe Crossing Place","5356735163","bdyott1@spiegel.de",3,"Coursing","OK",0,1.9,1);

INSERT INTO `College`.`student`
(`s_id`,`firstname`,`lastname`,`address`,`phonenumber`,`email`,`year`,`status`,`feestatus`,`feePaidDate`,`grade`,`course_id`)
VALUES
(3,"Edithe","Lount","3 Express Trail","8456704613","elount2@lulu.com",4,"Coursing","outstanding",6,2.8,1);

INSERT INTO `College`.`student`
(`s_id`,`firstname`,`lastname`,`address`,`phonenumber`,`email`,`year`,`status`,`feestatus`,`feePaidDate`,`grade`,`course_id`)
VALUES
(4,"Brett","Spelman","36 Arapahoe Hill","5336603560","bspelman3@si.edu",4,"Coursing","OK",0,2.2,1);

INSERT INTO `College`.`student`
(`s_id`,`firstname`,`lastname`,`address`,`phonenumber`,`email`,`year`,`status`,`feestatus`,`feePaidDate`,`grade`,`course_id`)
VALUES
(5,"Guendolen","Bernth","304 Bultman Street","6999058804","gbernth4@flavors.me",2,"Coursing","outstanding",4,1.3,1);

INSERT INTO `College`.`student`
(`s_id`,`firstname`,`lastname`,`address`,`phonenumber`,`email`,`year`,`status`,`feestatus`,`feePaidDate`,`grade`,`course_id`)
VALUES
(6,"Dulcy","Lippiatt","38607 Huxley Parkway","1504604325","dlippiatt5@businesswire.com",3,"Coursing","OK",0,4.0,1);

INSERT INTO `College`.`student`
(`s_id`,`firstname`,`lastname`,`address`,`phonenumber`,`email`,`year`,`status`,`feestatus`,`feePaidDate`,`grade`,`course_id`)
VALUES
(7,"Mersey","Toderini","559 Holmberg Pass","4288681070","mtoderini6@admin.ch",1,"Coursing","outstanding",2,4.6,1);

INSERT INTO `College`.`student`
(`s_id`,`firstname`,`lastname`,`address`,`phonenumber`,`email`,`year`,`status`,`feestatus`,`feePaidDate`,`grade`,`course_id`)
VALUES
(8,"Iago","Wallice","8 Birchwood Terrace","7564095674","iwallice7@independent.co.uk",1,"Coursing","OK",0,1.9,1);

INSERT INTO `College`.`student`
(`s_id`,`firstname`,`lastname`,`address`,`phonenumber`,`email`,`year`,`status`,`feestatus`,`feePaidDate`,`grade`,`course_id`)
VALUES
(9,"Cal","Daid","5 Red Cloud Place","3579809977","cdaid8@cmu.edu",2,"Coursing","OK",0,3.8,1);

INSERT INTO `College`.`student`
(`s_id`,`firstname`,`lastname`,`address`,`phonenumber`,`email`,`year`,`status`,`feestatus`,`feePaidDate`,`grade`,`course_id`)
VALUES
(10,"Rustie","Fenwick","2 Saint Paul Point","3901813111","rfenwick9@weather.com",2,"Coursing","OK",0,3.5,1);

INSERT INTO `College`.`student`
(`s_id`,`firstname`,`lastname`,`address`,`phonenumber`,`email`,`year`,`status`,`feestatus`,`feePaidDate`,`grade`,`course_id`)
VALUES
(11,"Dixie","Laphorn","333 Red Cloud Court","1257394355","dlaphorna@ihg.com",3,"Coursing","outstanding",7,2.3,1);

INSERT INTO `College`.`student`
(`s_id`,`firstname`,`lastname`,`address`,`phonenumber`,`email`,`year`,`status`,`feestatus`,`feePaidDate`,`grade`,`course_id`)
VALUES
(12,"Moll","Rotlauf","66 Duke Junction","9983263346","mrotlaufb@omniture.com",3,"Coursing","outstanding",0,1.1,1);

INSERT INTO `College`.`student`
(`s_id`,`firstname`,`lastname`,`address`,`phonenumber`,`email`,`year`,`status`,`feestatus`,`feePaidDate`,`grade`,`course_id`)
VALUES
(13,"Leonie","Zollner","226 Debra Road","6859746369","lzollnerc@acquirethisname.com",4,"Coursing","OK",0,2,1);

INSERT INTO `College`.`student`
(`s_id`,`firstname`,`lastname`,`address`,`phonenumber`,`email`,`year`,`status`,`feestatus`,`feePaidDate`,`grade`,`course_id`)
VALUES
(14,"Ilario","Meany","23166 Delladonna Junction","9453738429","imeanyd@imdb.com",4,"Coursing","OK",0,1.8,1);

INSERT INTO `College`.`student`
(`s_id`,`firstname`,`lastname`,`address`,`phonenumber`,`email`,`year`,`status`,`feestatus`,`feePaidDate`,`grade`,`course_id`)
VALUES
(15,"Lianna","Cornuau","274 Farragut Pass","8341301791","lcornuaue@webs.com",4,"Coursing","OK",0,4.9,1);

INSERT INTO `College`.`student`
(`s_id`,`firstname`,`lastname`,`address`,`phonenumber`,`email`,`year`,`status`,`feestatus`,`feePaidDate`,`grade`,`course_id`)
VALUES
(16,"Doralin","Antonnikov","738 Esch Drive","3479789148","dantonnikovf@gmpg.org",4,"Coursing","OK",0,2.9,1);

INSERT INTO `College`.`student`
(`s_id`,`firstname`,`lastname`,`address`,`phonenumber`,`email`,`year`,`status`,`feestatus`,`feePaidDate`,`grade`,`course_id`)
VALUES
(17,"Belvia","Perrett","23 Fieldstone Plaza","9136824536","bperrettg@chron.com",2,"Coursing","outstanding",3,4.4,1);

INSERT INTO `College`.`student`
(`s_id`,`firstname`,`lastname`,`address`,`phonenumber`,`email`,`year`,`status`,`feestatus`,`feePaidDate`,`grade`,`course_id`)
VALUES
(18,"Friedrich","Stanyer","024 Susan Court","2622514621","fstanyerh@pbs.org",1,"Coursing","outstanding",0,3.2,1);

INSERT INTO `College`.`student`
(`s_id`,`firstname`,`lastname`,`address`,`phonenumber`,`email`,`year`,`status`,`feestatus`,`feePaidDate`,`grade`,`course_id`)
VALUES
(19,"Malvin","Sabattier","82 Killdeer Point","7657530341","msabattieri@wikispaces.com",4,"Coursing","OK",0,3.9,1);

INSERT INTO `College`.`student`
(`s_id`,`firstname`,`lastname`,`address`,`phonenumber`,`email`,`year`,`status`,`feestatus`,`feePaidDate`,`grade`,`course_id`)
VALUES
(20,"Kenyon","Rout","04230 Northfield Trail","5282248178","kroutj@seattletimes.com",2,"Coursing","outstanding",8,3,1);

INSERT INTO `College`.`student`
(`s_id`,`firstname`,`lastname`,`address`,`phonenumber`,`email`,`year`,`status`,`feestatus`,`feePaidDate`,`grade`,`course_id`)
VALUES
(21,"Elbertina","Daburn","5 Arkansas Court","7037258439","edaburnk@time.com",4,"Coursing","OK",0,3,1);

INSERT INTO `College`.`student`
(`s_id`,`firstname`,`lastname`,`address`,`phonenumber`,`email`,`year`,`status`,`feestatus`,`feePaidDate`,`grade`,`course_id`)
VALUES
(22,"Yolanthe","Worley","9794 Hoard Road","1657365528","yworleyl@yahoo.co.jp",4,"Coursing","OK",0,2,2);

INSERT INTO `College`.`student`
(`s_id`,`firstname`,`lastname`,`address`,`phonenumber`,`email`,`year`,`status`,`feestatus`,`feePaidDate`,`grade`,`course_id`)
VALUES
(23,"Rowen","Feaveer","314 Hollow Ridge Court","3665595659","rfeaveerm@senate.gov",3,"Coursing","outstanding",5,4.4,2);

INSERT INTO `College`.`student`
(`s_id`,`firstname`,`lastname`,`address`,`phonenumber`,`email`,`year`,`status`,`feestatus`,`feePaidDate`,`grade`,`course_id`)
VALUES
(24,"Grantley","Moulin","5386 3rd Lane","9174274849","gmoulinn@scribd.com",2,"Coursing","OK",0,3.2,2);

INSERT INTO `College`.`student`
(`s_id`,`firstname`,`lastname`,`address`,`phonenumber`,`email`,`year`,`status`,`feestatus`,`feePaidDate`,`grade`,`course_id`)
VALUES
(25,"Laurella","Scruby","152 Farmco Crossing","3488332629","lscrubyo@kickstarter.com",2,"Coursing","OK",0,2.6,2);

INSERT INTO `College`.`student`
(`s_id`,`firstname`,`lastname`,`address`,`phonenumber`,`email`,`year`,`status`,`feestatus`,`feePaidDate`,`grade`,`course_id`)
VALUES
(26,"Donall","Windus","27 Gina Place","1086723216","dwindusp@nba.com",4,"Coursing","outstanding",6,4.8,2);

INSERT INTO `College`.`student`
(`s_id`,`firstname`,`lastname`,`address`,`phonenumber`,`email`,`year`,`status`,`feestatus`,`feePaidDate`,`grade`,`course_id`)
VALUES
(27,"Tierney","Clarabut","7 Memorial Junction","9877245400","tclarabutq@prlog.org",4,"Coursing","OK",0,3.6,3);

INSERT INTO `College`.`student`
(`s_id`,`firstname`,`lastname`,`address`,`phonenumber`,`email`,`year`,`status`,`feestatus`,`feePaidDate`,`grade`,`course_id`)
VALUES
(28,"Carlyn","MacNeil","93 Amoth Road","6314706547","cmacneilr@ifeng.com",2,"Coursing","outstanding",9,4.6,3);

INSERT INTO `College`.`student`
(`s_id`,`firstname`,`lastname`,`address`,`phonenumber`,`email`,`year`,`status`,`feestatus`,`feePaidDate`,`grade`,`course_id`)
VALUES
(29,"Homer","Enion","983 Victoria Avenue","6897980038","henions@msu.edu",2,"Coursing","OK",0,3.4,3);

INSERT INTO `College`.`student`
(`s_id`,`firstname`,`lastname`,`address`,`phonenumber`,`email`,`year`,`status`,`feestatus`,`feePaidDate`,`grade`,`course_id`)
VALUES
(30,"Godwin","Eminson","316 Portage Crossing","6104616213","geminsont@51.la",3,"Coursing","outstanding",1,2.3,3);

INSERT INTO `College`.`student`
(`s_id`,`firstname`,`lastname`,`address`,`phonenumber`,`email`,`year`,`status`,`feestatus`,`feePaidDate`,`grade`,`course_id`)
VALUES
(31,"Myrtia","Lawn","066 Lakeland Street","8376999693","mlawn1@sciencedaily.com",4,"Coursing","OK",0,3.4,4);

INSERT INTO `College`.`student`
(`s_id`,`firstname`,`lastname`,`address`,`phonenumber`,`email`,`year`,`status`,`feestatus`,`feePaidDate`,`grade`,`course_id`)
VALUES
(32,"Laraine","Maleby","4171 Norway Maple Alley","9856303743","lmaleby0@technorati.com",2,"Coursing","OK",7,4.5,5);

INSERT INTO `College`.`student`
(`s_id`,`firstname`,`lastname`,`address`,`phonenumber`,`email`,`year`,`status`,`feestatus`,`feePaidDate`,`grade`,`course_id`)
VALUES
(33,"Benjamen","Stitwell","34507 Toban Road","5764735972","bstitwell2@dagondesign.com",3,"Coursing","OK",0,1.1,6);

INSERT INTO `College`.`student`
(`s_id`,`firstname`,`lastname`,`address`,`phonenumber`,`email`,`year`,`status`,`feestatus`,`feePaidDate`,`grade`,`course_id`)
VALUES
(34,"Tanney","Roscrigg","67181 Bowman Junction","3414331103","troscrigg5@hud.gov",1,"Coursing","outstanding",1,3.2,7);

INSERT INTO `College`.`student`
(`s_id`,`firstname`,`lastname`,`address`,`phonenumber`,`email`,`year`,`status`,`feestatus`,`feePaidDate`,`grade`,`course_id`)
VALUES
(35,"Kaitlyn","Windle","4 Calypso Road","7291540827","kwindle6@nyu.edu",4,"Coursing","OK",0,2.2,8);

INSERT INTO `College`.`student`
(`s_id`,`firstname`,`lastname`,`address`,`phonenumber`,`email`,`year`,`status`,`feestatus`,`feePaidDate`,`grade`,`course_id`)
VALUES
(36,"Arther","Budgeon","195 Caliangt Plaza","9426847118","abudgeon4@mozilla.org",1,"Coursing","OK",5,3.6,9);

INSERT INTO `College`.`student`
(`s_id`,`firstname`,`lastname`,`address`,`phonenumber`,`email`,`year`,`status`,`feestatus`,`feePaidDate`,`grade`,`course_id`)
VALUES
(37,"Eward","Castri","4 Bowman Trail","8563706833","ecastri3@bizjournals.com",2,"Coursing","outstanding",4,2.7,10);

SELECT * FROM student;

/*-----------------------------------------TASK 3------------------------------*/

/*Question 1*/
UPDATE student SET year=2 WHERE year=1;

/*Question 2*/
UPDATE student SET status="Completed" WHERE year=4;

/*Question 3*/
DELETE FROM student WHERE feestatus = "outstanding" AND feePaidDate > 6;

/*Question 4*/
SELECT firstname, lastname, grade FROM student ORDER BY grade desc;

/*Question 5*/
INSERT INTO `College`.`department`
(`d_id`,`dname`,`staff`,`jobtitle`,`phonenumber`,`staffStartDate`,`staffDayOff`)
VALUES
(13,"School of Engineer","Kalie Matzl","Lecturer",1426580019,"2017-09-17",9);

INSERT INTO `College`.`course`
(`c_id`,`cname`,`type`,`level`,`startDate`,`duration`,`semester`,`deliveryMethod`,`department_id`)
VALUES
(11,"Mechanic Engineer","Master",8,"2020-09-01","1 year",3,"Presential",13);

INSERT INTO `College`.`module`
(`m_id`,`mname`,`course_id`)
VALUES
(54,"Introduction to Engineer",11);

INSERT INTO `College`.`student`
(`s_id`,`firstname`,`lastname`,`address`,`phonenumber`,`email`,`year`,`status`,`feestatus`,`feePaidDate`,`grade`,`course_id`)
VALUES
(38,"Kevin","Murray","7 Bowman Road","8563706833","kmurray@bizjournals.com",3,"Coursing","outstanding",4,3.7,11);

/*Question 6*/
DELETE FROM department LIMIT 1;

SET FOREIGN_KEY_CHECKS=0;

DELETE FROM course LIMIT 1;

DELETE FROM module LIMIT 1;

DELETE FROM student LIMIT 1;

SET FOREIGN_KEY_CHECKS=1;

/*Question 7*/
SELECT staffDayOff FROM department ORDER BY staffDayOff asc;

/*Question 8*/
SELECT course.c_id,course.cname, count(student.course_id) AS cnt
FROM course 
INNER JOIN student
ON student.course_id =  course.c_id
WHERE course.cname = "Business";

/*Question 9*/
UPDATE department SET jobtitle="Administrator" WHERE jobtitle="Office";

/*Question 10*/
UPDATE course SET type="Doctorial" WHERE type="PHD";

/*Question 11*/
UPDATE course SET deliveryMethod="Online" WHERE deliveryMethod="Presential";

/*Question 12*/
UPDATE department SET openingtimes="Closed to visitors";

/*Question 13*/
SET FOREIGN_KEY_CHECKS=0;
DELETE FROM course; 
SET FOREIGN_KEY_CHECKS=1;

/*Question 14*/
SET FOREIGN_KEY_CHECKS=0;
DELETE FROM course WHERE level <= 6;
SET FOREIGN_KEY_CHECKS=1;

/*Question 15*/
UPDATE department SET phonenumber="017654321" WHERE dname="College Office"; 

/*Question 16*/
UPDATE department SET staff="Michael Dean" WHERE jobtitle="Dean";

/*Question 17*/
SELECT staffstartDate, staff FROM department WHERE staffStartDate < 2017; 

/*Question 18*/
SELECT course.c_id,course.cname, course.semester, count(student.course_id) AS count
FROM course 
INNER JOIN student
ON student.course_id =  course.c_id
WHERE course.semester > 3
GROUP BY course.cname
having count > 20;

/*Question 19*/
SELECT count(*) FROM student WHERE address like "%Road%" or "%Rd%";

/*Question 20*/
CREATE VIEW COURSEINFO AS SELECT course.c_id, course.cname, course.type, module.mname,
student.s_id, student.firstname, student.lastname, student.grade, student.course_id
FROM course
JOIN student
ON student.course_id = course.c_id
JOIN module
ON module.course_id = course.c_id;


