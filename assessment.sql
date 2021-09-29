show databases;





/*create a datase for assessment.*/
create database assessment;
use assessment;





/* create a user table in assessment database.*/
create table users(user_id int(11) not null auto_increment, u_name varchar(30) not null, u_email varchar(50) not null, status varchar(10) not null, primary key(user_id));

/*check the constraints for table.*/
desc users;
 
/* add Users in user table.*/
insert into users values(1, "Mayur Kasture", "mayur.kasture@weboniselab.com", "User");
insert into users values(2,	"Shivani Badgujar", "shivani.badgugar@weboniselab.com", "User");
insert into users values(3,	"Hrishikesh Raverkar", "hrishikesh@weboniselab.com", "Admin");
insert into users values(4,	"Saurav Kumar", "saurav.kumar@weboniselab.com", "User");
insert into users values(5,	"Sandip Wani", "sandip.wani@weboniselab.com", "User");

/* fetch all data from user table.*/
select * from users;







/* create a assessments table in assessment database.*/
create table assessments(assessment_id int(11) not null auto_increment, assess_name varchar(255) not null, assess_duration time not null, primary key(assessment_id));

/*check the constraints for assessments table.*/ 
desc assessments;

/* add Assessments in assessments table.*/
insert into assessments values(1, "Java", "00:30:00");
insert into assessments values(2, "Php", "00:30:00");
insert into assessments values(3, "Apti", "00:45:00");

/* fetch all data from assessments table.*/
select * from assessments;









/* create a questions table in assessment database.*/
create table questions(question_id int(11) not null auto_increment, assessment_id int(11) not null, question varchar(255) not null, option_type varchar(30) not null, primary key(question_id), foreign key(assessment_id) references assessments(assessment_id));

/*check the constraints for questions table.*/
desc questions;

/* add Questions in questions table.*/
insert into questions values(01, 1, "Every statement in Java language should end with a?", "Theory");
insert into questions values(02, 1, "A function in C language is similar to what in Java language?", "Theory");
insert into questions values(03, 1, "All methods and variables in Java language are kept inside a?", "Theory");
insert into questions values(04, 1, "What is the need to mention "static" before main method?", "Theory");
insert into questions values(05, 1, "In standalone Java applications, which method is mandatory?", "Theory");
insert into questions values(06, 1, "What is the use of Access modifier "pubic" in Java language?", "Theory");
insert into questions values(07, 1, "In Iterator, hasMoreElements() method of Enumeration has been changed to:", "Theory");
insert into questions values(08, 1, "TreeSet internally uses that one to store elements?", "Theory");
insert into questions values(09, 1, "What is the default return type of a method in Java language?", "Theory");
insert into questions values(10, 1, "Name of a Class, Variable, Method or an Interface in Java language is called?", "Theory");

insert into questions values(11, 2, "The term PHP is an acronym for PHP:_______________.", "Theory");
insert into questions values(12, 2, "PHP is a ____________ language?", "Theory");
insert into questions values(13, 2, "Who among this is the founder of php language?", "Theory");
insert into questions values(14, 2, "In which year php was created?", "Theory");
insert into questions values(15, 2, "PHP files have a default file extension of_______.", "Theory");
insert into questions values(16, 2, "Which of the following is the correct syntax of php?", "Theory");
insert into questions values(17, 2, "Which of the following is the latest version of php?", "Theory");
insert into questions values(18, 2, "Which of the following is the Release date of latest version (7.2) of php?", "Theory");
insert into questions values(19, 2, "Which of the below statements is equivalent to $sub -= $sub?", "Theory");
insert into questions values(20, 2, "Which statement will output $lfc on the screen?", "Theory");

insert into questions values(21, 3, "Find out which of the figures (1), (2), (3) and (4) can be formed from the pieces given in figure (X).
<img src='https://www.indiabix.com/_files/images/non-verbal-reasoning/image-analysis/2.png'>", "Image");
insert into questions values(22, 3, "A person crosses a 600 m long street in 5 minutes. What is his speed in km per hour?", "Theory");
insert into questions values(23, 3, "An aeroplane covers a certain distance at a speed of 240 kmph in 5 hours. To cover the same distance in 1 hours, it must travel at a speed of:", "Theory");
insert into questions values(24, 3, "Find out which of the figures (1), (2), (3) and (4) can be formed from the pieces given in figure (X).
<img src='https://www.indiabix.com/_files/images/non-verbal-reasoning/image-analysis/11.png'>", "Image");
insert into questions values(25, 3, "A car covers its journey at the speed of 80km/hr in 10hours. If the same distance is to be covered in 4 hours, by how much the speed of car will have to increase?", "Theory");
insert into questions values(26, 3, "A person walking at 4 Kmph reaches his office 8 minutes late. If he walks at 6 Kmph, he reaches there 8 minutes earlier. How far is the office from his house?", "Theory");
insert into questions values(27, 3, "Find out which of the figures (1), (2), (3) and (4) can be formed from the pieces given in figure (X).
<img src='https://www.indiabix.com/_files/images/non-verbal-reasoning/image-analysis/12.png'>", "Image");
insert into questions values(28, 3, "An express train travelled at an average speed of 100 km/hr, stopping for 3 minutes after every 75 km. How long did it take to reach its destination 600 km from the starting point?", "Theory");
insert into questions values(29, 3, "The average of runs of a cricket player of 10 innings was 32. How many runs must he make in his next innings so as to increase his average of runs by 4?", "Theory");
insert into questions values(30, 3, "Find out which of the figures (1), (2), (3) and (4) can be formed from the pieces given in figure (X).
<img src='https://www.indiabix.com/_files/images/non-verbal-reasoning/image-analysis/3.png'>", "Image");

/* fetch all data from questions table.*/
select * from questions;








/* create a options table in assessment database.*/
create table options(option_id int(11) not null auto_increment, question_id int(11) not null, correct_option int(11) not null, given_option varchar(255) not null, primary key(option_id), foreign key(question_id) references questions(question_id));

/*check the constraints for options table.*/
desc options;

/* add Options in options table.*/
insert into options values(01, 01, 0, "Dot");
insert into options values(02, 01, 0, "Comma");
insert into options values(03, 01, 1, "Semicolon");
insert into options values(04, 01, 0, "Colon");

insert into options values(05, 02, 1, "Method");
insert into options values(06, 02, 0, "Member");
insert into options values(07, 02, 0, "Variable");
insert into options values(08, 02, 0, "None of the above");

insert into options values(09, 03, 0, "File");
insert into options values(10, 03, 1, "Class or Interface");
insert into options values(11, 03, 0, "static method");
insert into options values(12, 03, 0, "main");

insert into options values(13, 04, 0, "To call main method without creating an object of class");
insert into options values(14, 04, 0, "To make main method as class method common to all instances");
insert into options values(15, 04, 1, "Both A and B");
insert into options values(16, 04, 0, "None of the above");

insert into options values(17, 05, 1, "main method");
insert into options values(18, 05, 0, "show method");
insert into options values(19, 05, 0, "display method");
insert into options values(20, 05, 0, "print method");

insert into options values(21, 06, 0, "To hide the main method from misuse");
insert into options values(22, 06, 1, "To call the main method outside of Class or Package by JVM");
insert into options values(23, 06, 0, "To protect main method");
insert into options values(24, 06, 0, "None of the above");

insert into options values(25, 07, 1, "hasNext()");
insert into options values(26, 07, 0, "isNext()");
insert into options values(27, 07, 0, "hasNextElement()");
insert into options values(28, 07, 0, "name remains same");

insert into options values(29, 08, 1, "TreeMap");
insert into options values(30, 08, 0, "LinkedHashMap");
insert into options values(31, 08, 0, "HashMap");
insert into options values(32, 08, 0, "None of the above");

insert into options values(33, 09, 0, "void");
insert into options values(34, 09, 0, "int");
insert into options values(35, 09, 0, "short");
insert into options values(36, 09, 1, "None of the above");

insert into options values(37, 10, 0, "Argument");
insert into options values(38, 10, 0, "Value");
insert into options values(39, 10, 1, "Identifier");
insert into options values(40, 10, 0, "None of the above");

insert into options values(41, 11, 1, "Hypertext Preprocessor");
insert into options values(42, 11, 0, "Hypertext multiprocessor");
insert into options values(43, 11, 0, "Hypertext markup Preprocessor");
insert into options values(44, 11, 0, "Hypertune Preprocessor");

insert into options values(45, 12, 0, "user-side scripting");
insert into options values(46, 12, 0, "client-side scripting");
insert into options values(47, 12, 1, "server-side scripting");
insert into options values(48, 12, 0, "Both B and C");

insert into options values(49, 13, 0, "Tim Berners-Lee");
insert into options values(50, 13, 0, "Brendan Eich");
insert into options values(51, 13, 0, "Guido van Rossum");
insert into options values(52, 13, 1, "Rasmus Lerdorf");

insert into options values(53, 14, 0, "1993");
insert into options values(54, 14, 1, "1994");
insert into options values(55, 14, 0, "1995");
insert into options values(56, 14, 0, "1996");

insert into options values(57, 15, 0, ".html");
insert into options values(58, 15, 0, ".xml");
insert into options values(59, 15, 1, ".php");
insert into options values(60, 15, 0, ".hphp");

insert into options values(61, 16, 0, "<?php >");
insert into options values(62, 16, 0, "<php >");
insert into options values(63, 16, 0, "?php ?");
insert into options values(64, 16, 1, "<?php ?>");

insert into options values(65, 17, 0, "7.1");
insert into options values(66, 17, 1, "7.2");
insert into options values(67, 17, 0, "7.3");
insert into options values(68, 17, 0, "7.4");

insert into options values(69, 18, 0, "27 November 2017.");
insert into options values(70, 18, 0, "28 November 2017.");
insert into options values(71, 18, 0, "29 November 2017.");
insert into options values(72, 18, 1, "30 November 2017.");

insert into options values(73, 19, 0, "$sub = $sub");
insert into options values(74, 19, 1, "$sub = $sub -$sub");
insert into options values(75, 19, 0, "$sub = $sub - 1");
insert into options values(76, 19, 0, "$sub = $sub - $sub - 1");

insert into options values(77, 20, 1, "echo '$lfc';");
insert into options values(78, 20, 0, "echo '$$lfc';");
insert into options values(79, 20, 0, "echo '/$lfc';");
insert into options values(80, 20, 0, "echo '$lfc;';");

insert into options values(81, 21, 1, "1");
insert into options values(82, 21, 0, "2");
insert into options values(83, 21, 0, "3");
insert into options values(84, 21, 0, "4");

insert into options values(85, 22, 0, "3.6");
insert into options values(86, 22, 1, "7.2");
insert into options values(87, 22, 0, "8.4");
insert into options values(88, 22, 0, "1.0");

insert into options values(89, 23, 0, "300 kmp");
insert into options values(90, 23, 0, "360 kmph");
insert into options values(91, 23, 0, "600 kmph");
insert into options values(92, 23, 1, "720 kmph");

insert into options values(93, 24, 0, "1");
insert into options values(94, 24, 0, "2");
insert into options values(95, 24, 1, "3");
insert into options values(96, 24, 0, "4");

insert into options values(97, 25, 0, "40km/hr");
insert into options values(98, 25, 0, "60km/hr");
insert into options values(99, 25, 0, "90km/hr");
insert into options values(100, 25, 1, "120km/hr");

insert into options values(101, 26, 1, "3 1/5 Km");
insert into options values(102, 26, 0, "2 1/5 Km");
insert into options values(103, 26, 0, "4 1/5 Km");
insert into options values(104, 26, 0, "5 1/5 Km");

insert into options values(105, 27, 0, "1");
insert into options values(106, 27, 1, "2");
insert into options values(107, 27, 0, "3");
insert into options values(108, 27, 0, "4");

insert into options values(109, 28, 0, "6 hrs 27 min");
insert into options values(110, 28, 0, "6 hrs 24 min");
insert into options values(111, 28, 1, "6 hrs 21 min");
insert into options values(112, 28, 0, "6 hrs 30 min");

insert into options values(113, 29, 1, "76");
insert into options values(114, 29, 0, "79");
insert into options values(115, 29, 0, "85");
insert into options values(116, 29, 0, "87");

insert into options values(117, 30, 0, "1");
insert into options values(118, 30, 1, "2");
insert into options values(119, 30, 0, "3");
insert into options values(120, 30, 0, "4");

/* fetch all data from options table.*/
select * from options;








/* create a assign_assessments table in assessment database.*/
create table assign_assessments(assign_id int(11) not null auto_increment, assessment_id int(11) not null, user_id int(11) not null, assign_date datetime not null, start_time time not null, end_time time not null, status tinyint not null, primary key(assign_id), foreign key(assessment_id) references assessments(assessment_id), foreign key(user_id) references users(user_id));

/*check the constraints for assign_assessments table.*/
desc assign_assessments;

/* add a asessment for user in assign_assessments table.*/
insert into assign_assessments values(1, 1, 1, "2021-9-15 12:00:00", "12:00:00", "12:30:00", 1);
insert into assign_assessments values(2, 1, 2, "2021-9-15 12:00:00", "12:00:00", "12:30:00", 1);
insert into assign_assessments values(3, 2, 4, "2021-9-15 12:00:00", "00:00:00", "00:00:00", 0);
insert into assign_assessments values(4, 2, 5, "2021-9-15 12:00:00", "12:00:00", "12:30:00", 1);
insert into assign_assessments values(5, 3, 1, "2021-9-16 01:00:00", "00:00:00", "00:00:00", 0);
insert into assign_assessments values(6, 3, 2, "2021-9-16 01:00:00", "01:00:00", "01:45:00", 1);
insert into assign_assessments values(7, 3, 4, "2021-9-16 01:00:00", "00:00:00", "00:00:00", 0);
insert into assign_assessments values(8, 3, 5, "2021-9-16 01:00:00", "00:00:00", "00:00:00", 0);

/* fetch all data from assign_assessments table.*/
select * from assign_assessments;



/* create a attend_assessments table in assessment database.*/
create table attend_assessments(attend_id int(11) not null auto_increment, assign_id int(11) not null, question_id int(11) not null, user_answer int(11) not null, correct_answer int(11) not null, marks int(11) not null, primary key(attend_id), foreign key(assign_id) references assign_assessments(assign_id), foreign key(question_id) references questions(question_id));

/*check the constraints for attend_assessments table.*/
desc attend_assessments;

/* add Attend_assessments in attend_assessments table.
mayur attend java assessment.*/ 
insert into attend_assessments values(01, 1, 01, 3, 3, 1);
insert into attend_assessments values(02, 1, 02, 1, 1, 1);
insert into attend_assessments values(03, 1, 03, 3, 2, 0);
insert into attend_assessments values(04, 1, 04, 1, 3, 0);
insert into attend_assessments values(05, 1, 05, 1, 1, 1);
insert into attend_assessments values(06, 1, 06, 2, 2, 1);
insert into attend_assessments values(07, 1, 07, 2, 1, 0);
insert into attend_assessments values(08, 1, 08, 1, 1, 1);
insert into attend_assessments values(09, 1, 09, 4, 4, 1);
insert into attend_assessments values(10, 1, 10, 3, 3, 1);

insert into attend_assessments values(11, 2, 01, 1, 3, 1);
insert into attend_assessments values(12, 2, 02, 3, 1, 0);
insert into attend_assessments values(13, 2, 03, 4, 2, 1);
insert into attend_assessments values(14, 2, 04, 3, 3, 1);
insert into attend_assessments values(15, 2, 05, 3, 1, 1);
insert into attend_assessments values(16, 2, 06, 3, 2, 0);
insert into attend_assessments values(17, 2, 07, 1, 1, 1);
insert into attend_assessments values(18, 2, 08, 2, 1, 0);
insert into attend_assessments values(19, 2, 09, 4, 4, 1);
insert into attend_assessments values(20, 2, 10, 3, 3, 1);

insert into attend_assessments values(21, 4, 11, 3, 3, 1);
insert into attend_assessments values(22, 4, 12, 2, 1, 0);
insert into attend_assessments values(23, 4, 13, 4, 4, 1);
insert into attend_assessments values(24, 4, 14, 2, 2, 1);
insert into attend_assessments values(25, 4, 15, 1, 3, 0);
insert into attend_assessments values(26, 4, 16, 4, 4, 1);
insert into attend_assessments values(27, 4, 17, 2, 2, 0);
insert into attend_assessments values(28, 4, 18, 4, 4, 1);
insert into attend_assessments values(29, 4, 19, 3, 2, 1);
insert into attend_assessments values(30, 4, 20, 1, 1, 1);

insert into attend_assessments values(31, 6, 21, 1, 1, 1);
insert into attend_assessments values(32, 6, 22, 3, 2, 0);
insert into attend_assessments values(33, 6, 23, 4, 4, 1);
insert into attend_assessments values(34, 6, 24, 3, 3, 1);
insert into attend_assessments values(35, 6, 25, 1, 4, 0);
insert into attend_assessments values(36, 6, 26, 1, 1, 1);
insert into attend_assessments values(37, 6, 27, 1, 2, 0);
insert into attend_assessments values(38, 6, 28, 3, 3, 1);
insert into attend_assessments values(39, 6, 29, 3, 1, 0);
insert into attend_assessments values(40, 6, 30, 2, 2, 1);

/* fetch all data from attend_assessments table.*/
select * from attend_assessments;







/* create a view for score of each user.*/
create view user_score as select distinct(u.user_id),u.u_name,u.u_email, assess_name, count(1) 
    -> as "Score" from users u join assign_assessments aa
    -> on(u.user_id=aa.user_id) join attend_assessments att
    -> on(aa.assign_id=att.assign_id) join assign_assessments ass 
    -> on (ass.assign_id=att.assign_id) join assessments 
    -> on (assessments.assessment_id=ass.assessment_id)
    -> where marks=1
    -> group by u.user_id,u_name,u_email, assess_name;

/* fetch view data*/    
select * from user_score;
