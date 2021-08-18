# HeidiSQL Dump 
#
# --------------------------------------------------------
# Host:                         127.0.0.1
# Database:                     db_project
# Server version:               5.0.51b-community-nt
# Server OS:                    Win32
# Target compatibility:         ANSI SQL
# HeidiSQL version:             4.0
# Date/time:                    2021-08-18 21:12:00
# --------------------------------------------------------

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ANSI,NO_BACKSLASH_ESCAPES';*/
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;*/


#
# Database structure for database 'db_project'
#

CREATE DATABASE /*!32312 IF NOT EXISTS*/ "db_project" /*!40100 DEFAULT CHARACTER SET latin1 */;

USE "db_project";


#
# Table structure for table 'tbl_addquestion'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_addquestion" (
  "addquestion_id" int(11) NOT NULL auto_increment,
  "quizdetails_id" int(10) unsigned default NULL,
  "semester_id" int(10) unsigned default NULL,
  "subject_id" int(50) default NULL,
  "addquestion_question" varchar(50) default NULL,
  PRIMARY KEY  ("addquestion_id"),
  UNIQUE KEY "addquestion_id" ("addquestion_id")
) AUTO_INCREMENT=5;



#
# Dumping data for table 'tbl_addquestion'
#

LOCK TABLES "tbl_addquestion" WRITE;
/*!40000 ALTER TABLE "tbl_addquestion" DISABLE KEYS;*/
REPLACE INTO "tbl_addquestion" ("addquestion_id", "quizdetails_id", "semester_id", "subject_id", "addquestion_question") VALUES
	(1,'6','1',1,'loop');
REPLACE INTO "tbl_addquestion" ("addquestion_id", "quizdetails_id", "semester_id", "subject_id", "addquestion_question") VALUES
	(2,'6','1',1,'java is not');
REPLACE INTO "tbl_addquestion" ("addquestion_id", "quizdetails_id", "semester_id", "subject_id", "addquestion_question") VALUES
	(3,'6','1',1,'aaaa');
REPLACE INTO "tbl_addquestion" ("addquestion_id", "quizdetails_id", "semester_id", "subject_id", "addquestion_question") VALUES
	(4,'6','1',1,'ques');
/*!40000 ALTER TABLE "tbl_addquestion" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_batch'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_batch" (
  "batch_id" int(11) NOT NULL auto_increment,
  "batch_name" varchar(50) default NULL,
  PRIMARY KEY  ("batch_id"),
  UNIQUE KEY "batch_id" ("batch_id")
) AUTO_INCREMENT=3;



#
# Dumping data for table 'tbl_batch'
#

LOCK TABLES "tbl_batch" WRITE;
/*!40000 ALTER TABLE "tbl_batch" DISABLE KEYS;*/
REPLACE INTO "tbl_batch" ("batch_id", "batch_name") VALUES
	(1,'2016 batch');
REPLACE INTO "tbl_batch" ("batch_id", "batch_name") VALUES
	(2,'2018batch');
/*!40000 ALTER TABLE "tbl_batch" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_complaints'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_complaints" (
  "complaints_id" int(11) NOT NULL auto_increment,
  "complainttype_id" int(10) unsigned default NULL,
  "complaints_content" varchar(50) default NULL,
  "complaints_date" varchar(50) default NULL,
  "complaints_replay" varchar(50) default '0',
  "complaints_replaydate" date default '0000-00-00',
  "complaints_status" int(50) default '0',
  "student_id" int(10) unsigned default NULL,
  PRIMARY KEY  ("complaints_id"),
  UNIQUE KEY "complaints_id" ("complaints_id")
) AUTO_INCREMENT=4;



#
# Dumping data for table 'tbl_complaints'
#

LOCK TABLES "tbl_complaints" WRITE;
/*!40000 ALTER TABLE "tbl_complaints" DISABLE KEYS;*/
REPLACE INTO "tbl_complaints" ("complaints_id", "complainttype_id", "complaints_content", "complaints_date", "complaints_replay", "complaints_replaydate", "complaints_status", "student_id") VALUES
	(1,'4','vv','2021-02-25','aaa','2021-02-25',1,'1');
REPLACE INTO "tbl_complaints" ("complaints_id", "complainttype_id", "complaints_content", "complaints_date", "complaints_replay", "complaints_replaydate", "complaints_status", "student_id") VALUES
	(3,'2','examstartingtime','2021-03-04','0','0000-00-00',1,'1');
/*!40000 ALTER TABLE "tbl_complaints" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_complainttype'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_complainttype" (
  "complainttype_id" int(11) NOT NULL auto_increment,
  "complainttype_name" varchar(50) default NULL,
  PRIMARY KEY  ("complainttype_id"),
  UNIQUE KEY "complainttype_id" ("complainttype_id")
) AUTO_INCREMENT=9;



#
# Dumping data for table 'tbl_complainttype'
#

LOCK TABLES "tbl_complainttype" WRITE;
/*!40000 ALTER TABLE "tbl_complainttype" DISABLE KEYS;*/
REPLACE INTO "tbl_complainttype" ("complainttype_id", "complainttype_name") VALUES
	(2,'time schedule');
REPLACE INTO "tbl_complainttype" ("complainttype_id", "complainttype_name") VALUES
	(4,'exam details');
REPLACE INTO "tbl_complainttype" ("complainttype_id", "complainttype_name") VALUES
	(8,'questions');
/*!40000 ALTER TABLE "tbl_complainttype" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_course'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_course" (
  "course_id" int(11) NOT NULL auto_increment,
  "coursecategory_id" int(10) unsigned default NULL,
  "course_name" varchar(50) default NULL,
  "course_duration" varchar(50) default NULL,
  "course_description" varchar(50) default NULL,
  PRIMARY KEY  ("course_id"),
  UNIQUE KEY "course_id" ("course_id")
) AUTO_INCREMENT=8;



#
# Dumping data for table 'tbl_course'
#

LOCK TABLES "tbl_course" WRITE;
/*!40000 ALTER TABLE "tbl_course" DISABLE KEYS;*/
REPLACE INTO "tbl_course" ("course_id", "coursecategory_id", "course_name", "course_duration", "course_description") VALUES
	(3,'1','BCOM','3','ss');
REPLACE INTO "tbl_course" ("course_id", "coursecategory_id", "course_name", "course_duration", "course_description") VALUES
	(7,'2','msc physics','4year','ccoljkljkl');
/*!40000 ALTER TABLE "tbl_course" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_coursecategory'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_coursecategory" (
  "coursecategory_id" int(10) unsigned NOT NULL auto_increment,
  "coursecategory_name" varchar(50) default NULL,
  PRIMARY KEY  ("coursecategory_id"),
  UNIQUE KEY "coursecategory_id" ("coursecategory_id")
) AUTO_INCREMENT=3;



#
# Dumping data for table 'tbl_coursecategory'
#

LOCK TABLES "tbl_coursecategory" WRITE;
/*!40000 ALTER TABLE "tbl_coursecategory" DISABLE KEYS;*/
REPLACE INTO "tbl_coursecategory" ("coursecategory_id", "coursecategory_name") VALUES
	('1','UG');
REPLACE INTO "tbl_coursecategory" ("coursecategory_id", "coursecategory_name") VALUES
	('2','PG');
/*!40000 ALTER TABLE "tbl_coursecategory" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_department'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_department" (
  "department_id" int(11) NOT NULL auto_increment,
  "department_name" varchar(50) default NULL,
  "course_id" int(10) unsigned default NULL,
  "department_username" varchar(50) default NULL,
  "department_password" varchar(50) default NULL,
  PRIMARY KEY  ("department_id"),
  UNIQUE KEY "department_id" ("department_id")
) AUTO_INCREMENT=4;



#
# Dumping data for table 'tbl_department'
#

LOCK TABLES "tbl_department" WRITE;
/*!40000 ALTER TABLE "tbl_department" DISABLE KEYS;*/
REPLACE INTO "tbl_department" ("department_id", "department_name", "course_id", "department_username", "department_password") VALUES
	(1,'computer','1','abeena','110');
REPLACE INTO "tbl_department" ("department_id", "department_name", "course_id", "department_username", "department_password") VALUES
	(2,'economics','3','aaa','777');
REPLACE INTO "tbl_department" ("department_id", "department_name", "course_id", "department_username", "department_password") VALUES
	(3,'com application','5','anjaly','anjaly');
/*!40000 ALTER TABLE "tbl_department" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_district'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_district" (
  "district_id" int(10) unsigned NOT NULL auto_increment,
  "district_name" varchar(50) default NULL,
  PRIMARY KEY  ("district_id"),
  UNIQUE KEY "district_id" ("district_id")
) AUTO_INCREMENT=10;



#
# Dumping data for table 'tbl_district'
#

LOCK TABLES "tbl_district" WRITE;
/*!40000 ALTER TABLE "tbl_district" DISABLE KEYS;*/
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('3','alapuzha');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('5','malapuram');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('6','vayanad');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('7','ernaklm');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('8','trivandrum');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('9','kollam');
/*!40000 ALTER TABLE "tbl_district" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_examschedule'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_examschedule" (
  "exam_id" int(11) NOT NULL auto_increment,
  "quizdetails_id" int(10) unsigned default NULL,
  "exam_date" date default NULL,
  "exam_duration" varchar(50) default NULL,
  "exam_starttime" time default NULL,
  "exam_endtime" time default NULL,
  "exam_status" int(10) unsigned default '0',
  PRIMARY KEY  ("exam_id"),
  UNIQUE KEY "exam_id" ("exam_id")
) AUTO_INCREMENT=5;



#
# Dumping data for table 'tbl_examschedule'
#

LOCK TABLES "tbl_examschedule" WRITE;
/*!40000 ALTER TABLE "tbl_examschedule" DISABLE KEYS;*/
REPLACE INTO "tbl_examschedule" ("exam_id", "quizdetails_id", "exam_date", "exam_duration", "exam_starttime", "exam_endtime", "exam_status") VALUES
	(4,'6','2021-03-10','1','10:00:00','11:00:00','0');
/*!40000 ALTER TABLE "tbl_examschedule" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_exam_result'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_exam_result" (
  "result_id" int(11) NOT NULL auto_increment,
  "student_id" int(11) NOT NULL,
  "exam_id" int(11) NOT NULL,
  "obtained_mark" int(11) NOT NULL,
  "result_publish" int(11) NOT NULL default '0',
  PRIMARY KEY  ("result_id")
) AUTO_INCREMENT=105;



#
# Dumping data for table 'tbl_exam_result'
#

LOCK TABLES "tbl_exam_result" WRITE;
/*!40000 ALTER TABLE "tbl_exam_result" DISABLE KEYS;*/
REPLACE INTO "tbl_exam_result" ("result_id", "student_id", "exam_id", "obtained_mark", "result_publish") VALUES
	(104,1,4,2,0);
/*!40000 ALTER TABLE "tbl_exam_result" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_feedback'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_feedback" (
  "feedback_id" int(11) NOT NULL auto_increment,
  "feedback_date" varchar(50) default NULL,
  "feedback_content" varchar(50) default NULL,
  "student_id" int(11) default NULL,
  PRIMARY KEY  ("feedback_id"),
  UNIQUE KEY "feedback_id" ("feedback_id")
) AUTO_INCREMENT=4;



#
# Dumping data for table 'tbl_feedback'
#

LOCK TABLES "tbl_feedback" WRITE;
/*!40000 ALTER TABLE "tbl_feedback" DISABLE KEYS;*/
REPLACE INTO "tbl_feedback" ("feedback_id", "feedback_date", "feedback_content", "student_id") VALUES
	(1,'2021-02-25','vbv',1);
REPLACE INTO "tbl_feedback" ("feedback_id", "feedback_date", "feedback_content", "student_id") VALUES
	(2,'2021-02-25','ccvc',1);
REPLACE INTO "tbl_feedback" ("feedback_id", "feedback_date", "feedback_content", "student_id") VALUES
	(3,'2021-02-25','excellent',1);
/*!40000 ALTER TABLE "tbl_feedback" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_option'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_option" (
  "option_id" int(11) NOT NULL auto_increment,
  "option1" varchar(50) default NULL,
  "option2" varchar(50) default NULL,
  "option3" varchar(50) default NULL,
  "option4" varchar(50) default NULL,
  "answer" varchar(50) default NULL,
  "addquestion_id" int(10) unsigned default NULL,
  PRIMARY KEY  ("option_id"),
  UNIQUE KEY "option_id" ("option_id")
) AUTO_INCREMENT=5;



#
# Dumping data for table 'tbl_option'
#

LOCK TABLES "tbl_option" WRITE;
/*!40000 ALTER TABLE "tbl_option" DISABLE KEYS;*/
REPLACE INTO "tbl_option" ("option_id", "option1", "option2", "option3", "option4", "answer", "addquestion_id") VALUES
	(1,'if','if else','nested','while','1','1');
REPLACE INTO "tbl_option" ("option_id", "option1", "option2", "option3", "option4", "answer", "addquestion_id") VALUES
	(2,'simple','power','energy','robust','3','2');
REPLACE INTO "tbl_option" ("option_id", "option1", "option2", "option3", "option4", "answer", "addquestion_id") VALUES
	(3,'gg','jjj','ttt','zzz','2','3');
REPLACE INTO "tbl_option" ("option_id", "option1", "option2", "option3", "option4", "answer", "addquestion_id") VALUES
	(4,'ww','qff','xc','fh','4','4');
/*!40000 ALTER TABLE "tbl_option" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_place'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_place" (
  "place_id" int(11) NOT NULL auto_increment,
  "place_name" varchar(50) default NULL,
  "district_id" int(10) unsigned default NULL,
  PRIMARY KEY  ("place_id"),
  UNIQUE KEY "place_id" ("place_id")
) AUTO_INCREMENT=10;



#
# Dumping data for table 'tbl_place'
#

LOCK TABLES "tbl_place" WRITE;
/*!40000 ALTER TABLE "tbl_place" DISABLE KEYS;*/
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	(1,'munnar','1');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	(2,'kottarakara','1');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	(3,'eddd','3');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	(7,'adimaly','3');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	(8,'adur','9');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id") VALUES
	(9,'kanyakumari','8');
/*!40000 ALTER TABLE "tbl_place" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_previousquizdetails'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_previousquizdetails" (
  "previousquizdetails_id" int(11) NOT NULL auto_increment,
  "quiztype_id" int(10) unsigned default NULL,
  "semester_id" int(10) unsigned default NULL,
  "department_id" int(10) unsigned default NULL,
  "subject_id" int(10) unsigned default NULL,
  "previousquizdetails_name" varchar(50) default NULL,
  "previousquizdetails_file" varchar(50) default NULL,
  "previousquizdetails_description" varchar(50) default NULL,
  "previousquizdetails_totalmark" varchar(50) default NULL,
  "previousquizdetails_totalhour" varchar(50) default NULL,
  PRIMARY KEY  ("previousquizdetails_id"),
  UNIQUE KEY "previousquizdetails_id" ("previousquizdetails_id")
) AUTO_INCREMENT=9;



#
# Dumping data for table 'tbl_previousquizdetails'
#

LOCK TABLES "tbl_previousquizdetails" WRITE;
/*!40000 ALTER TABLE "tbl_previousquizdetails" DISABLE KEYS;*/
REPLACE INTO "tbl_previousquizdetails" ("previousquizdetails_id", "quiztype_id", "semester_id", "department_id", "subject_id", "previousquizdetails_name", "previousquizdetails_file", "previousquizdetails_description", "previousquizdetails_totalmark", "previousquizdetails_totalhour") VALUES
	(1,'2','3','1','1','sss','file_1250.img','ee','100','3hour');
REPLACE INTO "tbl_previousquizdetails" ("previousquizdetails_id", "quiztype_id", "semester_id", "department_id", "subject_id", "previousquizdetails_name", "previousquizdetails_file", "previousquizdetails_description", "previousquizdetails_totalmark", "previousquizdetails_totalhour") VALUES
	(3,'2','2','1','1','issue','file_1016.img','fgfgf','200','2hour');
REPLACE INTO "tbl_previousquizdetails" ("previousquizdetails_id", "quiztype_id", "semester_id", "department_id", "subject_id", "previousquizdetails_name", "previousquizdetails_file", "previousquizdetails_description", "previousquizdetails_totalmark", "previousquizdetails_totalhour") VALUES
	(8,'3','4','1','1','issue','file_1825.img','aaa','100','1hour');
/*!40000 ALTER TABLE "tbl_previousquizdetails" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_quizapply'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_quizapply" (
  "quizapply_id" int(11) NOT NULL auto_increment,
  "quizapply_date" varchar(50) default NULL,
  "quizdetails_id" int(10) unsigned default NULL,
  "student_id" int(10) unsigned default NULL,
  "quizapply_status" int(10) unsigned default '0',
  "quizattend_status" tinyint(3) unsigned default '0',
  "exam_id" tinyint(3) unsigned default '0',
  PRIMARY KEY  ("quizapply_id"),
  UNIQUE KEY "quizapply_id" ("quizapply_id")
) AUTO_INCREMENT=2;



#
# Dumping data for table 'tbl_quizapply'
#

LOCK TABLES "tbl_quizapply" WRITE;
/*!40000 ALTER TABLE "tbl_quizapply" DISABLE KEYS;*/
REPLACE INTO "tbl_quizapply" ("quizapply_id", "quizapply_date", "quizdetails_id", "student_id", "quizapply_status", "quizattend_status", "exam_id") VALUES
	(1,'2021-03-04','6','1','1',1,4);
/*!40000 ALTER TABLE "tbl_quizapply" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_quizdetails'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_quizdetails" (
  "quizdetails_id" int(11) NOT NULL auto_increment,
  "quiztype_id" int(10) unsigned default NULL,
  "quizdetails_no_of_questions" varchar(50) default NULL,
  "quizdetails_totalmark" varchar(50) default NULL,
  "quizdetails_cutoff" varchar(50) default NULL,
  "quizdetails_totalhours" varchar(50) default NULL,
  "quizdetails_instructions" varchar(50) default NULL,
  PRIMARY KEY  ("quizdetails_id"),
  UNIQUE KEY "quizdetails_id" ("quizdetails_id")
) AUTO_INCREMENT=7;



#
# Dumping data for table 'tbl_quizdetails'
#

LOCK TABLES "tbl_quizdetails" WRITE;
/*!40000 ALTER TABLE "tbl_quizdetails" DISABLE KEYS;*/
REPLACE INTO "tbl_quizdetails" ("quizdetails_id", "quiztype_id", "quizdetails_no_of_questions", "quizdetails_totalmark", "quizdetails_cutoff", "quizdetails_totalhours", "quizdetails_instructions") VALUES
	(6,'2','10','100','50','1hour','dddd');
/*!40000 ALTER TABLE "tbl_quizdetails" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_quiztype'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_quiztype" (
  "quiztype_id" int(11) NOT NULL auto_increment,
  "quiztype_name" varchar(50) default NULL,
  PRIMARY KEY  ("quiztype_id"),
  UNIQUE KEY "quiztype_id" ("quiztype_id")
) AUTO_INCREMENT=4;



#
# Dumping data for table 'tbl_quiztype'
#

LOCK TABLES "tbl_quiztype" WRITE;
/*!40000 ALTER TABLE "tbl_quiztype" DISABLE KEYS;*/
REPLACE INTO "tbl_quiztype" ("quiztype_id", "quiztype_name") VALUES
	(2,'general');
REPLACE INTO "tbl_quiztype" ("quiztype_id", "quiztype_name") VALUES
	(3,'computerbased');
/*!40000 ALTER TABLE "tbl_quiztype" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_semester'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_semester" (
  "semester_id" int(11) NOT NULL auto_increment,
  "semester_name" varchar(50) default NULL,
  PRIMARY KEY  ("semester_id"),
  UNIQUE KEY "semester_id" ("semester_id")
) AUTO_INCREMENT=5;



#
# Dumping data for table 'tbl_semester'
#

LOCK TABLES "tbl_semester" WRITE;
/*!40000 ALTER TABLE "tbl_semester" DISABLE KEYS;*/
REPLACE INTO "tbl_semester" ("semester_id", "semester_name") VALUES
	(1,'1st sem');
REPLACE INTO "tbl_semester" ("semester_id", "semester_name") VALUES
	(2,'2nd sem');
REPLACE INTO "tbl_semester" ("semester_id", "semester_name") VALUES
	(3,'3rd sem');
REPLACE INTO "tbl_semester" ("semester_id", "semester_name") VALUES
	(4,'4thsem');
/*!40000 ALTER TABLE "tbl_semester" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_student'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_student" (
  "student_id" int(11) NOT NULL auto_increment,
  "student_regNo" varchar(50) default NULL,
  "student_name" varchar(50) default NULL,
  "student_contact" varchar(50) default NULL,
  "student_email" varchar(50) default NULL,
  "student_address" varchar(50) default NULL,
  "student_photo" varchar(50) default NULL,
  "place_id" int(10) unsigned default NULL,
  "department_id" int(10) unsigned default NULL,
  "batch_id" int(10) unsigned default NULL,
  "semester_id" int(10) unsigned default NULL,
  "student_username" varchar(50) default NULL,
  "student_password" varchar(50) default NULL,
  "student_status" int(50) default '0',
  PRIMARY KEY  ("student_id"),
  UNIQUE KEY "student_id" ("student_id")
) AUTO_INCREMENT=6;



#
# Dumping data for table 'tbl_student'
#

# No data found.



#
# Table structure for table 'tbl_student_answer'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_student_answer" (
  "answer_id" int(11) NOT NULL auto_increment,
  "student_id" int(11) NOT NULL,
  "exam_id" int(11) NOT NULL,
  "addquestion_id" int(11) NOT NULL,
  "answer_option" varchar(50) NOT NULL,
  PRIMARY KEY  ("answer_id")
) AUTO_INCREMENT=22;



#
# Dumping data for table 'tbl_student_answer'
#

# No data found.



#
# Table structure for table 'tbl_subject'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_subject" (
  "subject_id" int(11) NOT NULL auto_increment,
  "subject_name" varchar(50) default NULL,
  "semester_id" int(10) unsigned default NULL,
  "department_id" int(10) unsigned default NULL,
  PRIMARY KEY  ("subject_id"),
  UNIQUE KEY "subject_id" ("subject_id")
) AUTO_INCREMENT=3;



#
# Dumping data for table 'tbl_subject'
#

LOCK TABLES "tbl_subject" WRITE;
/*!40000 ALTER TABLE "tbl_subject" DISABLE KEYS;*/
REPLACE INTO "tbl_subject" ("subject_id", "subject_name", "semester_id", "department_id") VALUES
	(1,'java','1','1');
REPLACE INTO "tbl_subject" ("subject_id", "subject_name", "semester_id", "department_id") VALUES
	(2,'network','1','1');
/*!40000 ALTER TABLE "tbl_subject" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_userregistration'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_userregistration" (
  "user_id" int(11) NOT NULL auto_increment,
  "user_name" varchar(50) default NULL,
  "user_address" varchar(50) default NULL,
  "place_id" int(10) unsigned default NULL,
  "user_email" varchar(50) default NULL,
  "user_contact" varchar(50) default NULL,
  "user_uname" varchar(50) default NULL,
  "user_password" varchar(50) default NULL,
  "user_gender" varchar(50) default NULL,
  "user_photo" varchar(50) default NULL,
  PRIMARY KEY  ("user_id"),
  UNIQUE KEY "user_id" ("user_id")
) AUTO_INCREMENT=10;



#
# Dumping data for table 'tbl_userregistration'
#

# No data found.

/*!40101 SET SQL_MODE=@OLD_SQL_MODE;*/
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;*/
