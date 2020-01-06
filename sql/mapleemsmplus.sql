/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : mapleemsmplus

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2020-01-03 18:30:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for edu_class
-- ----------------------------
DROP TABLE IF EXISTS `edu_class`;
CREATE TABLE `edu_class` (
  `class_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '班级ID',
  `class_name` varchar(32) NOT NULL COMMENT '班级名',
  `class_Date` date NOT NULL COMMENT '开班时间',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `class_Major` bigint(20) NOT NULL COMMENT '班级专业id',
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='班级信息表';

-- ----------------------------
-- Records of edu_class
-- ----------------------------

-- ----------------------------
-- Table structure for edu_classroom
-- ----------------------------
DROP TABLE IF EXISTS `edu_classroom`;
CREATE TABLE `edu_classroom` (
  `Classroom_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '教室ID',
  `Classroom_address` varchar(255) NOT NULL COMMENT '教室地址',
  `Classroom_capacity` int(255) NOT NULL DEFAULT '0' COMMENT '教室容量 单位人',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  PRIMARY KEY (`Classroom_id`,`Classroom_capacity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='教室表';

-- ----------------------------
-- Records of edu_classroom
-- ----------------------------

-- ----------------------------
-- Table structure for edu_class_course
-- ----------------------------
DROP TABLE IF EXISTS `edu_class_course`;
CREATE TABLE `edu_class_course` (
  `class_course_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '班级课程ID',
  `class_course_class_id` bigint(20) NOT NULL COMMENT '班级ID',
  `class_course_teacherid` bigint(20) NOT NULL COMMENT '任课教师id',
  `class_course_course_id` bigint(20) NOT NULL COMMENT '课程ID',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者（只能由系统用户设置）',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '修改者',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  PRIMARY KEY (`class_course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='班级课程表';

-- ----------------------------
-- Records of edu_class_course
-- ----------------------------

-- ----------------------------
-- Table structure for edu_class_teacher
-- ----------------------------
DROP TABLE IF EXISTS `edu_class_teacher`;
CREATE TABLE `edu_class_teacher` (
  `class_teacher_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '班级教师ID',
  `class_teacher_class_id` bigint(20) NOT NULL COMMENT '班级ID',
  `class_teacher_teacher_id` bigint(20) NOT NULL COMMENT '教师ID',
  `create_by` varchar(64) NOT NULL COMMENT '创建者（只能由系统用户设置）',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  PRIMARY KEY (`class_teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='班级教师表';

-- ----------------------------
-- Records of edu_class_teacher
-- ----------------------------

-- ----------------------------
-- Table structure for edu_course
-- ----------------------------
DROP TABLE IF EXISTS `edu_course`;
CREATE TABLE `edu_course` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程ID',
  `course_name` varchar(32) NOT NULL COMMENT '课程名',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者（只能由系统用户设置）',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updata_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `updata_time` datetime DEFAULT NULL COMMENT '更新时间',
  `course_typeid` int(11) NOT NULL COMMENT '课程类型ID',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='课程表';

-- ----------------------------
-- Records of edu_course
-- ----------------------------

-- ----------------------------
-- Table structure for edu_course_type
-- ----------------------------
DROP TABLE IF EXISTS `edu_course_type`;
CREATE TABLE `edu_course_type` (
  `course_type_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程类型ID',
  `course_type_name` varchar(32) NOT NULL COMMENT '课程类型名',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者（只能由系统用户设置）',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '修改者',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  PRIMARY KEY (`course_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='课程类型表';

-- ----------------------------
-- Records of edu_course_type
-- ----------------------------

-- ----------------------------
-- Table structure for edu_major
-- ----------------------------
DROP TABLE IF EXISTS `edu_major`;
CREATE TABLE `edu_major` (
  `Major_studiedId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '专业id',
  `Major_studiedName` varchar(50) NOT NULL COMMENT '专业名',
  `describe` varchar(500) DEFAULT NULL COMMENT '专业描述',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updata_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `updata_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  PRIMARY KEY (`Major_studiedId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='专业表';

-- ----------------------------
-- Records of edu_major
-- ----------------------------

-- ----------------------------
-- Table structure for edu_score
-- ----------------------------
DROP TABLE IF EXISTS `edu_score`;
CREATE TABLE `edu_score` (
  `score_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '课程分数ID',
  `score_studentid` bigint(11) NOT NULL COMMENT '学生id',
  `class_course_course_id` int(11) NOT NULL COMMENT '班级课程ID',
  `score` double(30,1) NOT NULL COMMENT '分数',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updata_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `updata_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `describe` varchar(255) DEFAULT NULL COMMENT '考试描述（比如期末测评 等等）',
  PRIMARY KEY (`score_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='课程分数表';

-- ----------------------------
-- Records of edu_score
-- ----------------------------

-- ----------------------------
-- Table structure for edu_student
-- ----------------------------
DROP TABLE IF EXISTS `edu_student`;
CREATE TABLE `edu_student` (
  `student_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '学生信息ID',
  `student_no` varchar(11) NOT NULL COMMENT '学号（格式：年号+开班时间+报名序号）',
  `student_name` varchar(32) NOT NULL COMMENT '学生名（学生真实姓名）',
  `sys_user_id` bigint(20) NOT NULL COMMENT '用户id',
  `student_class` bigint(11) NOT NULL COMMENT '所属班级ID',
  `status` char(1) NOT NULL DEFAULT '0' COMMENT '状态（0.在籍1:毕业 2:休学 3:退学）',
  `student_Majorstudiedid` bigint(20) NOT NULL COMMENT '所学专业id',
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生信息表';

-- ----------------------------
-- Records of edu_student
-- ----------------------------

-- ----------------------------
-- Table structure for edu_teacher
-- ----------------------------
DROP TABLE IF EXISTS `edu_teacher`;
CREATE TABLE `edu_teacher` (
  `teacher_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '教师信息ID',
  `teacher_name` varchar(32) NOT NULL COMMENT '用户名（老师真实姓名）',
  `sys_user_id` bigint(20) NOT NULL COMMENT '用户id',
  `Education` char(1) DEFAULT NULL COMMENT '学历（0.高中1.大专.2.本科3.研究生）',
  `academic_title` char(1) DEFAULT NULL COMMENT '职称（0.一级教师，1.二级教师，2.三级教师）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0.在职 1.离职）',
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='教师信息表';

-- ----------------------------
-- Records of edu_teacher
-- ----------------------------

-- ----------------------------
-- Table structure for edu_timetable
-- ----------------------------
DROP TABLE IF EXISTS `edu_timetable`;
CREATE TABLE `edu_timetable` (
  `Timetable_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '课表id',
  `Timetable_starttime` datetime NOT NULL COMMENT '时间区段：开始时间',
  `Timetable_Endtime` datetime NOT NULL COMMENT '时间区段：结束时间',
  `Timetable_detailsid` varchar(255) NOT NULL COMMENT '课表详情id',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  PRIMARY KEY (`Timetable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='课表';

-- ----------------------------
-- Records of edu_timetable
-- ----------------------------

-- ----------------------------
-- Table structure for edu_timetable_details
-- ----------------------------
DROP TABLE IF EXISTS `edu_timetable_details`;
CREATE TABLE `edu_timetable_details` (
  `details_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '课表详情id',
  PRIMARY KEY (`details_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='课表详细表';

-- ----------------------------
-- Records of edu_timetable_details
-- ----------------------------

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES ('17', 'edu_class', '班级信息表', 'EduClass', 'crud', 'com.htxk.edusystem', 'edusystem', 'class', '班级信息', 'maple', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-01-03 17:09:35', '', '2020-01-03 17:52:58', '');
INSERT INTO `gen_table` VALUES ('18', 'edu_class_course', '班级课程表', 'EduClassCourse', 'crud', 'com.htxk.edusystem', 'edusystem', 'ClassCourse', '班级课程', 'maple', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-01-03 17:09:35', '', '2020-01-03 17:47:19', '');
INSERT INTO `gen_table` VALUES ('19', 'edu_class_teacher', '班级教师表', 'EduClassTeacher', 'crud', 'com.htxk.edusystem', 'edusystem', 'ClassTeacher', '班级教师', 'maple', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-01-03 17:09:35', '', '2020-01-03 17:47:55', '');
INSERT INTO `gen_table` VALUES ('20', 'edu_classroom', '教室表', 'EduClassroom', 'crud', 'com.htxk.edusystem', 'edusystem', 'classroom', '教室', 'maple', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-01-03 17:09:35', '', '2020-01-03 17:49:17', '');
INSERT INTO `gen_table` VALUES ('21', 'edu_course', '课程表', 'EduCourse', 'crud', 'com.htxk.edusystem', 'edusystem', 'course', '课程', 'maple', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-01-03 17:09:35', '', '2020-01-03 17:50:41', '');
INSERT INTO `gen_table` VALUES ('22', 'edu_course_type', '课程类型表', 'EduCourseType', 'crud', 'com.htxk.edusystem', 'edusystem', 'CourseType', '课程类型', 'maple', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-01-03 17:09:36', '', '2020-01-03 17:28:58', '');
INSERT INTO `gen_table` VALUES ('23', 'edu_major', '专业表', 'EduMajor', 'crud', 'com.htxk.edusystem', 'edusystem', 'major', '专业', 'maple', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-01-03 17:09:36', '', '2020-01-03 17:28:12', '');
INSERT INTO `gen_table` VALUES ('24', 'edu_score', '课程分数表', 'EduScore', 'crud', 'com.htxk.edusystem', 'edusystem', 'score', '课程分数', 'maple', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-01-03 17:09:36', '', '2020-01-03 17:32:13', '');
INSERT INTO `gen_table` VALUES ('25', 'edu_student', '学生信息表', 'EduStudent', 'crud', 'com.htxk.edusystem', 'edusystem', 'student', '学生信息', 'maple', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-01-03 17:09:36', '', '2020-01-03 17:39:06', '');
INSERT INTO `gen_table` VALUES ('26', 'edu_teacher', '教师信息表', 'EduTeacher', 'crud', 'com.htxk.edusystem', 'edusystem', 'teacher', '教师信息', 'maple', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-01-03 17:09:36', '', '2020-01-03 17:38:49', '');

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES ('107', '17', 'class_id', '班级ID', 'bigint(11)', 'Long', 'classId', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2020-01-03 17:09:35', null, '2020-01-03 17:52:58');
INSERT INTO `gen_table_column` VALUES ('108', '17', 'class_name', '班级名', 'varchar(32)', 'String', 'className', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2020-01-03 17:09:35', null, '2020-01-03 17:52:58');
INSERT INTO `gen_table_column` VALUES ('109', '17', 'class_Date', '开班时间', 'date', 'Date', 'classDate', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', '3', 'admin', '2020-01-03 17:09:35', null, '2020-01-03 17:52:58');
INSERT INTO `gen_table_column` VALUES ('110', '17', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', null, null, null, null, null, 'EQ', 'input', '', '4', 'admin', '2020-01-03 17:09:35', null, '2020-01-03 17:52:58');
INSERT INTO `gen_table_column` VALUES ('111', '17', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, null, null, null, null, 'EQ', 'datetime', '', '5', 'admin', '2020-01-03 17:09:35', null, '2020-01-03 17:52:58');
INSERT INTO `gen_table_column` VALUES ('112', '17', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', null, null, null, null, null, 'EQ', 'input', '', '6', 'admin', '2020-01-03 17:09:35', null, '2020-01-03 17:52:58');
INSERT INTO `gen_table_column` VALUES ('113', '17', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', null, null, null, null, null, 'EQ', 'datetime', '', '7', 'admin', '2020-01-03 17:09:35', null, '2020-01-03 17:52:58');
INSERT INTO `gen_table_column` VALUES ('114', '17', 'del_flag', '删除标志（0代表存在 2代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', '1', null, null, null, null, 'EQ', 'input', '', '8', 'admin', '2020-01-03 17:09:35', null, '2020-01-03 17:52:58');
INSERT INTO `gen_table_column` VALUES ('115', '17', 'class_Major', '班级专业', 'bigint(20)', 'Long', 'classMajor', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', '9', 'admin', '2020-01-03 17:09:35', null, '2020-01-03 17:52:58');
INSERT INTO `gen_table_column` VALUES ('116', '18', 'class_course_id', '班级课程ID', 'bigint(20)', 'Long', 'classCourseId', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2020-01-03 17:09:35', null, '2020-01-03 17:47:19');
INSERT INTO `gen_table_column` VALUES ('117', '18', 'class_course_class_id', '班级名', 'bigint(20)', 'Long', 'classCourseClassId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', '2', 'admin', '2020-01-03 17:09:35', null, '2020-01-03 17:47:19');
INSERT INTO `gen_table_column` VALUES ('118', '18', 'class_course_teacherid', '任课教师', 'bigint(20)', 'Long', 'classCourseTeacherid', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', '3', 'admin', '2020-01-03 17:09:35', null, '2020-01-03 17:47:19');
INSERT INTO `gen_table_column` VALUES ('119', '18', 'class_course_course_id', '课程名', 'bigint(20)', 'Long', 'classCourseCourseId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', '4', 'admin', '2020-01-03 17:09:35', null, '2020-01-03 17:47:19');
INSERT INTO `gen_table_column` VALUES ('120', '18', 'create_by', '创建者（只能由系统用户设置）', 'varchar(64)', 'String', 'createBy', '0', '0', null, null, null, null, null, 'EQ', 'input', '', '5', 'admin', '2020-01-03 17:09:35', null, '2020-01-03 17:47:19');
INSERT INTO `gen_table_column` VALUES ('121', '18', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, null, null, '1', null, 'EQ', 'datetime', '', '6', 'admin', '2020-01-03 17:09:35', null, '2020-01-03 17:47:19');
INSERT INTO `gen_table_column` VALUES ('122', '18', 'update_by', '修改者', 'varchar(64)', 'String', 'updateBy', '0', '0', null, null, null, null, null, 'EQ', 'input', '', '7', 'admin', '2020-01-03 17:09:35', null, '2020-01-03 17:47:19');
INSERT INTO `gen_table_column` VALUES ('123', '18', 'update_time', '修改时间', 'datetime', 'Date', 'updateTime', '0', '0', null, null, null, null, null, 'EQ', 'datetime', '', '8', 'admin', '2020-01-03 17:09:35', null, '2020-01-03 17:47:19');
INSERT INTO `gen_table_column` VALUES ('124', '18', 'del_flag', '删除标志（0代表存在 2代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', '1', null, null, null, null, 'EQ', 'input', '', '9', 'admin', '2020-01-03 17:09:35', null, '2020-01-03 17:47:19');
INSERT INTO `gen_table_column` VALUES ('125', '19', 'class_teacher_id', '班级教师ID', 'bigint(20)', 'Long', 'classTeacherId', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2020-01-03 17:09:35', null, '2020-01-03 17:47:55');
INSERT INTO `gen_table_column` VALUES ('126', '19', 'class_teacher_class_id', '班级名', 'bigint(20)', 'Long', 'classTeacherClassId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', '2', 'admin', '2020-01-03 17:09:35', null, '2020-01-03 17:47:55');
INSERT INTO `gen_table_column` VALUES ('127', '19', 'class_teacher_teacher_id', '教师名', 'bigint(20)', 'Long', 'classTeacherTeacherId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', '3', 'admin', '2020-01-03 17:09:35', null, '2020-01-03 17:47:55');
INSERT INTO `gen_table_column` VALUES ('128', '19', 'create_by', '创建者（只能由系统用户设置）', 'varchar(64)', 'String', 'createBy', '0', '0', '1', null, null, null, null, 'EQ', 'input', '', '4', 'admin', '2020-01-03 17:09:35', null, '2020-01-03 17:47:55');
INSERT INTO `gen_table_column` VALUES ('129', '19', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, null, null, '1', null, 'EQ', 'datetime', '', '5', 'admin', '2020-01-03 17:09:35', null, '2020-01-03 17:47:55');
INSERT INTO `gen_table_column` VALUES ('130', '19', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', null, null, null, null, null, 'EQ', 'input', '', '6', 'admin', '2020-01-03 17:09:35', null, '2020-01-03 17:47:55');
INSERT INTO `gen_table_column` VALUES ('131', '19', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', null, null, null, null, null, 'EQ', 'datetime', '', '7', 'admin', '2020-01-03 17:09:35', null, '2020-01-03 17:47:55');
INSERT INTO `gen_table_column` VALUES ('132', '19', 'del_flag', '删除标志（0代表存在 2代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', null, null, null, null, null, 'EQ', 'input', '', '8', 'admin', '2020-01-03 17:09:35', null, '2020-01-03 17:47:55');
INSERT INTO `gen_table_column` VALUES ('133', '20', 'Classroom_id', '教室ID', 'bigint(20)', 'Long', 'classroomId', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2020-01-03 17:09:35', null, '2020-01-03 17:49:17');
INSERT INTO `gen_table_column` VALUES ('134', '20', 'Classroom_address', '教室地址', 'varchar(255)', 'String', 'classroomAddress', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2020-01-03 17:09:35', null, '2020-01-03 17:49:17');
INSERT INTO `gen_table_column` VALUES ('135', '20', 'Classroom_capacity', '教室容量 单位人', 'int(255)', 'Long', 'classroomCapacity', '1', '0', null, '1', '1', '1', '1', 'GTE', 'input', '', '3', 'admin', '2020-01-03 17:09:35', null, '2020-01-03 17:49:17');
INSERT INTO `gen_table_column` VALUES ('136', '20', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', null, null, null, null, null, 'EQ', 'input', '', '4', 'admin', '2020-01-03 17:09:35', null, '2020-01-03 17:49:17');
INSERT INTO `gen_table_column` VALUES ('137', '20', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, null, null, '1', null, 'EQ', 'datetime', '', '5', 'admin', '2020-01-03 17:09:35', null, '2020-01-03 17:49:17');
INSERT INTO `gen_table_column` VALUES ('138', '20', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', null, null, null, null, null, 'EQ', 'input', '', '6', 'admin', '2020-01-03 17:09:35', null, '2020-01-03 17:49:17');
INSERT INTO `gen_table_column` VALUES ('139', '20', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', null, null, null, null, null, 'EQ', 'datetime', '', '7', 'admin', '2020-01-03 17:09:35', null, '2020-01-03 17:49:17');
INSERT INTO `gen_table_column` VALUES ('140', '20', 'del_flag', '删除标志（0代表存在 2代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', '1', null, null, null, null, 'EQ', 'input', '', '8', 'admin', '2020-01-03 17:09:35', null, '2020-01-03 17:49:17');
INSERT INTO `gen_table_column` VALUES ('141', '21', 'course_id', '课程ID', 'int(11)', 'Long', 'courseId', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2020-01-03 17:09:35', null, '2020-01-03 17:50:41');
INSERT INTO `gen_table_column` VALUES ('142', '21', 'course_name', '课程名', 'varchar(32)', 'String', 'courseName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2020-01-03 17:09:35', null, '2020-01-03 17:50:41');
INSERT INTO `gen_table_column` VALUES ('143', '21', 'create_by', '创建者（只能由系统用户设置）', 'varchar(64)', 'String', 'createBy', '0', '0', null, null, null, '1', null, 'EQ', 'input', '', '3', 'admin', '2020-01-03 17:09:35', null, '2020-01-03 17:50:41');
INSERT INTO `gen_table_column` VALUES ('144', '21', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, null, null, '1', '1', 'EQ', 'datetime', '', '4', 'admin', '2020-01-03 17:09:36', null, '2020-01-03 17:50:41');
INSERT INTO `gen_table_column` VALUES ('145', '21', 'updata_by', '更新者', 'varchar(64)', 'String', 'updataBy', '0', '0', null, null, null, '1', null, 'EQ', 'input', '', '5', 'admin', '2020-01-03 17:09:36', null, '2020-01-03 17:50:41');
INSERT INTO `gen_table_column` VALUES ('146', '21', 'updata_time', '更新时间', 'datetime', 'Date', 'updataTime', '0', '0', null, null, null, '1', null, 'EQ', 'datetime', '', '6', 'admin', '2020-01-03 17:09:36', null, '2020-01-03 17:50:41');
INSERT INTO `gen_table_column` VALUES ('147', '21', 'course_typeid', '课程类型ID', 'int(11)', 'Long', 'courseTypeid', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', '7', 'admin', '2020-01-03 17:09:36', null, '2020-01-03 17:50:41');
INSERT INTO `gen_table_column` VALUES ('148', '21', 'del_flag', '删除标志（0代表存在 2代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', '1', null, null, null, null, 'EQ', 'input', '', '8', 'admin', '2020-01-03 17:09:36', null, '2020-01-03 17:50:41');
INSERT INTO `gen_table_column` VALUES ('149', '22', 'course_type_id', '课程类型ID', 'int(11)', 'Long', 'courseTypeId', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2020-01-03 17:09:36', null, '2020-01-03 17:28:58');
INSERT INTO `gen_table_column` VALUES ('150', '22', 'course_type_name', '课程类型名', 'varchar(32)', 'String', 'courseTypeName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2020-01-03 17:09:36', null, '2020-01-03 17:28:58');
INSERT INTO `gen_table_column` VALUES ('151', '22', 'create_by', '创建者（只能由系统用户设置）', 'varchar(64)', 'String', 'createBy', '0', '0', null, null, null, '1', null, 'EQ', 'input', '', '3', 'admin', '2020-01-03 17:09:36', null, '2020-01-03 17:28:58');
INSERT INTO `gen_table_column` VALUES ('152', '22', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, null, null, '1', null, 'EQ', 'datetime', '', '4', 'admin', '2020-01-03 17:09:36', null, '2020-01-03 17:28:58');
INSERT INTO `gen_table_column` VALUES ('153', '22', 'update_by', '修改者', 'varchar(64)', 'String', 'updateBy', '0', '0', null, null, null, '1', null, 'EQ', 'input', '', '5', 'admin', '2020-01-03 17:09:36', null, '2020-01-03 17:28:58');
INSERT INTO `gen_table_column` VALUES ('154', '22', 'update_time', '修改时间', 'datetime', 'Date', 'updateTime', '0', '0', null, null, null, '1', null, 'EQ', 'datetime', '', '6', 'admin', '2020-01-03 17:09:36', null, '2020-01-03 17:28:58');
INSERT INTO `gen_table_column` VALUES ('155', '22', 'del_flag', '删除标志（0代表存在 2代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', null, null, null, null, null, 'EQ', 'radio', '', '7', 'admin', '2020-01-03 17:09:36', null, '2020-01-03 17:28:58');
INSERT INTO `gen_table_column` VALUES ('156', '23', 'Major_studiedId', '专业id', 'bigint(20)', 'Long', 'majorStudiedid', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2020-01-03 17:09:36', null, '2020-01-03 17:28:12');
INSERT INTO `gen_table_column` VALUES ('157', '23', 'Major_studiedName', '专业名', 'varchar(50)', 'String', 'majorStudiedname', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2020-01-03 17:09:36', null, '2020-01-03 17:28:12');
INSERT INTO `gen_table_column` VALUES ('158', '23', 'describe', '专业描述', 'varchar(500)', 'String', 'describe', '0', '0', null, '1', '1', '1', null, 'EQ', 'textarea', '', '3', 'admin', '2020-01-03 17:09:36', null, '2020-01-03 17:28:12');
INSERT INTO `gen_table_column` VALUES ('159', '23', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', null, null, null, '1', null, 'EQ', 'input', '', '4', 'admin', '2020-01-03 17:09:36', null, '2020-01-03 17:28:12');
INSERT INTO `gen_table_column` VALUES ('160', '23', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, null, null, '1', null, 'EQ', 'datetime', '', '5', 'admin', '2020-01-03 17:09:36', null, '2020-01-03 17:28:12');
INSERT INTO `gen_table_column` VALUES ('161', '23', 'updata_by', '更新者', 'varchar(64)', 'String', 'updataBy', '0', '0', null, null, null, '1', null, 'EQ', 'input', '', '6', 'admin', '2020-01-03 17:09:36', null, '2020-01-03 17:28:12');
INSERT INTO `gen_table_column` VALUES ('162', '23', 'updata_time', '更新时间', 'datetime', 'Date', 'updataTime', '0', '0', null, null, null, '1', null, 'EQ', 'datetime', '', '7', 'admin', '2020-01-03 17:09:36', null, '2020-01-03 17:28:12');
INSERT INTO `gen_table_column` VALUES ('163', '23', 'del_flag', '删除标志（0代表存在 2代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', null, null, null, null, null, 'EQ', 'input', '', '8', 'admin', '2020-01-03 17:09:36', null, '2020-01-03 17:28:12');
INSERT INTO `gen_table_column` VALUES ('164', '24', 'score_id', '课程分数ID', 'bigint(11)', 'Long', 'scoreId', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2020-01-03 17:09:36', null, '2020-01-03 17:32:13');
INSERT INTO `gen_table_column` VALUES ('165', '24', 'score_studentid', '学生姓名', 'bigint(11)', 'Long', 'scoreStudentid', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', '2', 'admin', '2020-01-03 17:09:36', null, '2020-01-03 17:32:13');
INSERT INTO `gen_table_column` VALUES ('166', '24', 'class_course_course_id', '课程名', 'int(11)', 'Long', 'classCourseCourseId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', '3', 'admin', '2020-01-03 17:09:36', null, '2020-01-03 17:32:13');
INSERT INTO `gen_table_column` VALUES ('167', '24', 'score', '分数', 'double(30,1)', 'Double', 'score', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2020-01-03 17:09:36', null, '2020-01-03 17:32:13');
INSERT INTO `gen_table_column` VALUES ('168', '24', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', '1', null, null, '1', null, 'EQ', 'input', '', '5', 'admin', '2020-01-03 17:09:36', null, '2020-01-03 17:32:13');
INSERT INTO `gen_table_column` VALUES ('169', '24', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, null, null, '1', '1', 'EQ', 'datetime', '', '6', 'admin', '2020-01-03 17:09:36', null, '2020-01-03 17:32:13');
INSERT INTO `gen_table_column` VALUES ('170', '24', 'updata_by', '更新者', 'varchar(64)', 'String', 'updataBy', '0', '0', null, null, null, '1', null, 'EQ', 'input', '', '7', 'admin', '2020-01-03 17:09:36', null, '2020-01-03 17:32:13');
INSERT INTO `gen_table_column` VALUES ('171', '24', 'updata_time', '更新时间', 'datetime', 'Date', 'updataTime', '0', '0', null, null, null, '1', null, 'EQ', 'datetime', '', '8', 'admin', '2020-01-03 17:09:36', null, '2020-01-03 17:32:13');
INSERT INTO `gen_table_column` VALUES ('172', '24', 'del_flag', '删除标志（0代表存在 2代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', '1', null, null, null, null, 'EQ', 'input', '', '9', 'admin', '2020-01-03 17:09:36', null, '2020-01-03 17:32:13');
INSERT INTO `gen_table_column` VALUES ('173', '24', 'describe', '考试描述（比如期末测评 等等）', 'varchar(255)', 'String', 'describe', '0', '0', null, '1', '1', '1', null, 'EQ', 'textarea', '', '10', 'admin', '2020-01-03 17:09:36', null, '2020-01-03 17:32:13');
INSERT INTO `gen_table_column` VALUES ('174', '25', 'student_id', '学生信息ID', 'bigint(20)', 'Long', 'studentId', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2020-01-03 17:09:36', null, '2020-01-03 17:39:06');
INSERT INTO `gen_table_column` VALUES ('175', '25', 'student_no', '学号（格式：年号+开班时间+报名序号）', 'varchar(11)', 'String', 'studentNo', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2020-01-03 17:09:36', null, '2020-01-03 17:39:06');
INSERT INTO `gen_table_column` VALUES ('176', '25', 'student_name', '学生名（学生真实姓名）', 'varchar(32)', 'String', 'studentName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2020-01-03 17:09:36', null, '2020-01-03 17:39:06');
INSERT INTO `gen_table_column` VALUES ('177', '25', 'sys_user_id', '用户id', 'bigint(20)', 'Long', 'sysUserId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2020-01-03 17:09:36', null, '2020-01-03 17:39:06');
INSERT INTO `gen_table_column` VALUES ('178', '25', 'student_class', '所属班级', 'bigint(11)', 'Long', 'studentClass', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', '5', 'admin', '2020-01-03 17:09:36', null, '2020-01-03 17:39:06');
INSERT INTO `gen_table_column` VALUES ('179', '25', 'status', '状态（0.在籍1:毕业 2:休学 3:退学）', 'char(1)', 'String', 'status', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'student_status', '6', 'admin', '2020-01-03 17:09:36', null, '2020-01-03 17:39:06');
INSERT INTO `gen_table_column` VALUES ('180', '25', 'student_Majorstudiedid', '所学专业', 'bigint(20)', 'Long', 'studentMajorstudiedid', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', '7', 'admin', '2020-01-03 17:09:36', null, '2020-01-03 17:39:06');
INSERT INTO `gen_table_column` VALUES ('181', '26', 'teacher_id', '教师信息ID', 'bigint(20)', 'Long', 'teacherId', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2020-01-03 17:09:36', null, '2020-01-03 17:38:49');
INSERT INTO `gen_table_column` VALUES ('182', '26', 'teacher_name', '用户名（老师真实姓名）', 'varchar(32)', 'String', 'teacherName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2020-01-03 17:09:36', null, '2020-01-03 17:38:49');
INSERT INTO `gen_table_column` VALUES ('183', '26', 'sys_user_id', '用户id', 'bigint(20)', 'Long', 'sysUserId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', '3', 'admin', '2020-01-03 17:09:36', null, '2020-01-03 17:38:49');
INSERT INTO `gen_table_column` VALUES ('184', '26', 'Education', '学历（0.高中1.大专.2.本科3.研究生）', 'char(1)', 'String', 'education', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', '', '4', 'admin', '2020-01-03 17:09:36', null, '2020-01-03 17:38:49');
INSERT INTO `gen_table_column` VALUES ('185', '26', 'academic_title', '职称（0.一级教师，1.二级教师，2.三级教师）', 'char(1)', 'String', 'academicTitle', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', '', '5', 'admin', '2020-01-03 17:09:36', null, '2020-01-03 17:38:49');
INSERT INTO `gen_table_column` VALUES ('186', '26', 'status', '状态（0.在职 1.离职）', 'char(1)', 'String', 'status', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', '', '6', 'admin', '2020-01-03 17:09:36', null, '2020-01-03 17:38:49');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `blob_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL,
  `calendar_name` varchar(200) NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `cron_expression` varchar(200) NOT NULL,
  `time_zone_id` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `entry_id` varchar(95) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) NOT NULL,
  `job_name` varchar(200) DEFAULT NULL,
  `job_group` varchar(200) DEFAULT NULL,
  `is_nonconcurrent` varchar(1) DEFAULT NULL,
  `requests_recovery` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `job_class_name` varchar(250) NOT NULL,
  `is_durable` varchar(1) NOT NULL,
  `is_nonconcurrent` varchar(1) NOT NULL,
  `is_update_data` varchar(1) NOT NULL,
  `requests_recovery` varchar(1) NOT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', null, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', null, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', null, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL,
  `lock_name` varchar(40) NOT NULL,
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler', 'Maple1578045827647', '1578047407690', '15000');

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `str_prop_1` varchar(512) DEFAULT NULL,
  `str_prop_2` varchar(512) DEFAULT NULL,
  `str_prop_3` varchar(512) DEFAULT NULL,
  `int_prop_1` int(11) DEFAULT NULL,
  `int_prop_2` int(11) DEFAULT NULL,
  `long_prop_1` bigint(20) DEFAULT NULL,
  `long_prop_2` bigint(20) DEFAULT NULL,
  `dec_prop_1` decimal(13,4) DEFAULT NULL,
  `dec_prop_2` decimal(13,4) DEFAULT NULL,
  `bool_prop_1` varchar(1) DEFAULT NULL,
  `bool_prop_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `next_fire_time` bigint(13) DEFAULT NULL,
  `prev_fire_time` bigint(13) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `trigger_state` varchar(16) NOT NULL,
  `trigger_type` varchar(8) NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) DEFAULT NULL,
  `calendar_name` varchar(200) DEFAULT NULL,
  `misfire_instr` smallint(2) DEFAULT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', null, '1578045830000', '-1', '5', 'PAUSED', 'CRON', '1578045828000', '0', null, '2', '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', null, '1578045840000', '-1', '5', 'PAUSED', 'CRON', '1578045828000', '0', null, '2', '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', null, '1578045840000', '-1', '5', 'PAUSED', 'CRON', '1578045828000', '0', null, '2', '');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES ('2', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '初始化密码 123456');
INSERT INTO `sys_config` VALUES ('3', '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('100', '0', '0', '湖大信科IT', '0', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('101', '100', '0,100', '长沙总校', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('102', '100', '0,100', '网站运营', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('103', '101', '0,100,101', '财务部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('104', '101', '0,100,101', '人事部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('105', '101', '0,100,101', '招生部门', '3', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('106', '101', '0,100,101', '教务部门', '4', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('107', '101', '0,100,101', '市场部门', '5', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('108', '102', '0,100,102', '运维部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('109', '102', '0,100,102', '测试部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('110', '102', '0,100,102', '研发部门', '3', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2020-01-01 22:30:41', '', null);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1', '1', '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别男');
INSERT INTO `sys_dict_data` VALUES ('2', '2', '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别女');
INSERT INTO `sys_dict_data` VALUES ('3', '3', '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别未知');
INSERT INTO `sys_dict_data` VALUES ('4', '1', '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '显示菜单');
INSERT INTO `sys_dict_data` VALUES ('5', '2', '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES ('6', '1', '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('7', '2', '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES ('8', '1', '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('9', '2', '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES ('10', '1', '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '默认分组');
INSERT INTO `sys_dict_data` VALUES ('11', '2', '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统分组');
INSERT INTO `sys_dict_data` VALUES ('12', '1', '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认是');
INSERT INTO `sys_dict_data` VALUES ('13', '2', '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认否');
INSERT INTO `sys_dict_data` VALUES ('14', '1', '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知');
INSERT INTO `sys_dict_data` VALUES ('15', '2', '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '公告');
INSERT INTO `sys_dict_data` VALUES ('16', '1', '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('17', '2', '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '关闭状态');
INSERT INTO `sys_dict_data` VALUES ('18', '1', '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作');
INSERT INTO `sys_dict_data` VALUES ('19', '2', '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '修改操作');
INSERT INTO `sys_dict_data` VALUES ('20', '3', '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '删除操作');
INSERT INTO `sys_dict_data` VALUES ('21', '4', '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '授权操作');
INSERT INTO `sys_dict_data` VALUES ('22', '5', '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导出操作');
INSERT INTO `sys_dict_data` VALUES ('23', '6', '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导入操作');
INSERT INTO `sys_dict_data` VALUES ('24', '7', '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '强退操作');
INSERT INTO `sys_dict_data` VALUES ('25', '8', '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '生成操作');
INSERT INTO `sys_dict_data` VALUES ('26', '9', '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '清空操作');
INSERT INTO `sys_dict_data` VALUES ('27', '1', '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('28', '2', '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES ('29', '0', '在籍', '0', 'student_status', null, null, 'Y', '0', 'admin', '2020-01-03 12:33:44', '', null, '在校学生标记');
INSERT INTO `sys_dict_data` VALUES ('30', '1', '毕业', '1', 'student_status', null, null, 'Y', '0', 'admin', '2020-01-03 12:34:53', '', null, '毕业学生标记');
INSERT INTO `sys_dict_data` VALUES ('31', '2', '休学', '2', 'student_status', null, null, 'Y', '0', 'admin', '2020-01-03 12:35:39', '', null, '休学学生标记');
INSERT INTO `sys_dict_data` VALUES ('32', '3', '退学', '3', 'student_status', null, null, 'Y', '0', 'admin', '2020-01-03 12:36:24', '', null, '退学学生标记');
INSERT INTO `sys_dict_data` VALUES ('33', '0', '一级教师', '0', 'teacher_academic_title', null, null, 'Y', '0', 'admin', '2020-01-03 15:00:05', '', null, '一级教师，等级是最小的');
INSERT INTO `sys_dict_data` VALUES ('34', '1', '二级教师', '1', 'teacher_academic_title', null, null, 'Y', '0', 'admin', '2020-01-03 15:00:52', '', null, '等级为中');
INSERT INTO `sys_dict_data` VALUES ('35', '2', '三级教师', '2', 'teacher_academic_title', null, null, 'Y', '0', 'admin', '2020-01-03 15:01:44', '', null, '最高级教师');
INSERT INTO `sys_dict_data` VALUES ('36', '0', '在职', '0', 'teacher_status', null, null, 'Y', '0', 'admin', '2020-01-03 15:05:37', '', null, '在职标志');
INSERT INTO `sys_dict_data` VALUES ('37', '1', '离职', '1', 'teacher_status', null, null, 'Y', '0', 'admin', '2020-01-03 15:06:07', '', null, '离职标志');
INSERT INTO `sys_dict_data` VALUES ('38', '0', '高中', '0', 'Education', null, null, 'Y', '0', 'admin', '2020-01-03 15:10:46', '', null, '高中学历标识');
INSERT INTO `sys_dict_data` VALUES ('39', '1', '大专', '1', 'Education', null, null, 'Y', '0', 'admin', '2020-01-03 15:11:40', '', null, '大专学历标识');
INSERT INTO `sys_dict_data` VALUES ('40', '2', '本科', '2', 'Education', null, null, 'Y', '0', 'admin', '2020-01-03 15:12:13', '', null, '本科学历标识');
INSERT INTO `sys_dict_data` VALUES ('41', '3', '研究生', '3', 'Education', null, null, 'Y', '0', 'admin', '2020-01-03 15:12:57', '', null, '研究生学历标识');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1', '用户性别', 'sys_user_sex', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户性别列表');
INSERT INTO `sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统开关列表');
INSERT INTO `sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务状态列表');
INSERT INTO `sys_dict_type` VALUES ('5', '任务分组', 'sys_job_group', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务分组列表');
INSERT INTO `sys_dict_type` VALUES ('6', '系统是否', 'sys_yes_no', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统是否列表');
INSERT INTO `sys_dict_type` VALUES ('7', '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知类型列表');
INSERT INTO `sys_dict_type` VALUES ('8', '通知状态', 'sys_notice_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知状态列表');
INSERT INTO `sys_dict_type` VALUES ('9', '操作类型', 'sys_oper_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作类型列表');
INSERT INTO `sys_dict_type` VALUES ('10', '系统状态', 'sys_common_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录状态列表');
INSERT INTO `sys_dict_type` VALUES ('11', '学生状态', 'student_status', '0', 'admin', '2020-01-03 12:27:41', 'admin', '2020-01-03 15:02:14', '学生状态列表');
INSERT INTO `sys_dict_type` VALUES ('12', '教师职称', 'teacher_academic_title', '0', 'admin', '2020-01-03 14:58:06', 'admin', '2020-01-03 15:02:05', '教师职称列表');
INSERT INTO `sys_dict_type` VALUES ('13', '教师状态', 'teacher_status', '0', 'admin', '2020-01-03 15:04:26', '', null, '教师状态列表');
INSERT INTO `sys_dict_type` VALUES ('14', '学历', 'Education', '0', 'admin', '2020-01-03 15:09:57', '', null, '学历列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES ('1', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES ('2', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES ('3', '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8 COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES ('100', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-01 14:22:16');
INSERT INTO `sys_logininfor` VALUES ('101', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-01 15:05:21');
INSERT INTO `sys_logininfor` VALUES ('102', 'admin', '127.0.0.1', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-01-01 17:42:38');
INSERT INTO `sys_logininfor` VALUES ('103', 'admin', '127.0.0.1', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-01-01 17:44:57');
INSERT INTO `sys_logininfor` VALUES ('104', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2020-01-01 21:19:45');
INSERT INTO `sys_logininfor` VALUES ('105', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-01 21:19:50');
INSERT INTO `sys_logininfor` VALUES ('106', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-01 22:04:13');
INSERT INTO `sys_logininfor` VALUES ('107', 'admin', '127.0.0.1', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-01-01 22:14:13');
INSERT INTO `sys_logininfor` VALUES ('108', 'maple', '127.0.0.1', '内网IP', 'Firefox 7', 'Windows 10', '1', '验证码错误', '2020-01-01 22:14:29');
INSERT INTO `sys_logininfor` VALUES ('109', 'maple', '127.0.0.1', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-01-01 22:14:39');
INSERT INTO `sys_logininfor` VALUES ('110', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-02 00:32:48');
INSERT INTO `sys_logininfor` VALUES ('111', 'admin', '127.0.0.1', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-01-02 01:08:57');
INSERT INTO `sys_logininfor` VALUES ('112', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2020-01-02 16:30:29');
INSERT INTO `sys_logininfor` VALUES ('113', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-02 16:30:35');
INSERT INTO `sys_logininfor` VALUES ('114', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-02 18:55:56');
INSERT INTO `sys_logininfor` VALUES ('115', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-01-02 18:58:47');
INSERT INTO `sys_logininfor` VALUES ('116', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-02 18:59:04');
INSERT INTO `sys_logininfor` VALUES ('117', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-01-02 19:06:03');
INSERT INTO `sys_logininfor` VALUES ('118', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-02 19:20:44');
INSERT INTO `sys_logininfor` VALUES ('119', 'admin', '127.0.0.1', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-01-02 23:12:08');
INSERT INTO `sys_logininfor` VALUES ('120', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-02 23:23:44');
INSERT INTO `sys_logininfor` VALUES ('121', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-01-02 23:33:47');
INSERT INTO `sys_logininfor` VALUES ('122', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2020-01-02 23:34:08');
INSERT INTO `sys_logininfor` VALUES ('123', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-02 23:34:16');
INSERT INTO `sys_logininfor` VALUES ('124', 'admin', '127.0.0.1', '内网IP', 'Firefox 7', 'Windows 10', '1', '验证码错误', '2020-01-02 23:35:11');
INSERT INTO `sys_logininfor` VALUES ('125', 'admin', '127.0.0.1', '内网IP', 'Firefox 7', 'Windows 10', '0', '登录成功', '2020-01-02 23:35:21');
INSERT INTO `sys_logininfor` VALUES ('126', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-03 09:34:51');
INSERT INTO `sys_logininfor` VALUES ('127', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2020-01-03 09:54:44');
INSERT INTO `sys_logininfor` VALUES ('128', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-03 09:54:48');
INSERT INTO `sys_logininfor` VALUES ('129', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-03 10:02:21');
INSERT INTO `sys_logininfor` VALUES ('130', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-03 11:37:57');
INSERT INTO `sys_logininfor` VALUES ('131', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-03 11:41:05');
INSERT INTO `sys_logininfor` VALUES ('132', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-03 12:20:08');
INSERT INTO `sys_logininfor` VALUES ('133', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-03 12:50:58');
INSERT INTO `sys_logininfor` VALUES ('134', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-03 14:56:38');
INSERT INTO `sys_logininfor` VALUES ('135', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-03 15:41:06');
INSERT INTO `sys_logininfor` VALUES ('136', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-03 16:40:25');
INSERT INTO `sys_logininfor` VALUES ('137', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-03 18:04:08');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `url` varchar(200) DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1126 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', '1', '#', '', 'M', '0', '', 'fa fa-gear', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统管理目录');
INSERT INTO `sys_menu` VALUES ('2', '系统监控', '0', '2', '#', '', 'M', '0', '', 'fa fa-video-camera', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统监控目录');
INSERT INTO `sys_menu` VALUES ('3', '系统工具', '0', '3', '#', '', 'M', '0', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统工具目录');
INSERT INTO `sys_menu` VALUES ('100', '用户管理', '1', '1', '#', 'menuItem', 'C', '0', 'system:user:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2020-01-02 00:37:37', '用户管理菜单');
INSERT INTO `sys_menu` VALUES ('101', '角色管理', '1', '2', '/system/role', '', 'C', '0', 'system:role:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色管理菜单');
INSERT INTO `sys_menu` VALUES ('102', '菜单管理', '1', '3', '/system/menu', '', 'C', '0', 'system:menu:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES ('103', '部门管理', '1', '4', '/system/dept', '', 'C', '0', 'system:dept:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '部门管理菜单');
INSERT INTO `sys_menu` VALUES ('104', '岗位管理', '1', '5', '/system/post', '', 'C', '0', 'system:post:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES ('105', '字典管理', '1', '6', '/system/dict', '', 'C', '0', 'system:dict:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '字典管理菜单');
INSERT INTO `sys_menu` VALUES ('106', '参数设置', '1', '7', '/system/config', '', 'C', '0', 'system:config:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '参数设置菜单');
INSERT INTO `sys_menu` VALUES ('107', '通知公告', '1', '8', '/system/notice', '', 'C', '0', 'system:notice:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知公告菜单');
INSERT INTO `sys_menu` VALUES ('108', '日志管理', '1', '9', '#', '', 'M', '0', '', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '日志管理菜单');
INSERT INTO `sys_menu` VALUES ('109', '在线用户', '2', '1', '/monitor/online', '', 'C', '0', 'monitor:online:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '在线用户菜单');
INSERT INTO `sys_menu` VALUES ('110', '定时任务', '2', '2', '/monitor/job', '', 'C', '0', 'monitor:job:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '定时任务菜单');
INSERT INTO `sys_menu` VALUES ('111', '数据监控', '2', '3', '/monitor/data', '', 'C', '0', 'monitor:data:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '数据监控菜单');
INSERT INTO `sys_menu` VALUES ('112', '服务监控', '2', '3', '/monitor/server', '', 'C', '0', 'monitor:server:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '服务监控菜单');
INSERT INTO `sys_menu` VALUES ('113', '表单构建', '3', '1', '/tool/build', '', 'C', '0', 'tool:build:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '表单构建菜单');
INSERT INTO `sys_menu` VALUES ('114', '代码生成', '3', '2', '/tool/gen', '', 'C', '0', 'tool:gen:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代码生成菜单');
INSERT INTO `sys_menu` VALUES ('115', '系统接口', '3', '3', '/tool/swagger', '', 'C', '0', 'tool:swagger:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统接口菜单');
INSERT INTO `sys_menu` VALUES ('500', '操作日志', '108', '1', '/monitor/operlog', '', 'C', '0', 'monitor:operlog:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作日志菜单');
INSERT INTO `sys_menu` VALUES ('501', '登录日志', '108', '2', '/monitor/logininfor', '', 'C', '0', 'monitor:logininfor:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录日志菜单');
INSERT INTO `sys_menu` VALUES ('1000', '用户查询', '1077', '1', '#', 'menuItem', 'F', '0', 'system:user:list', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2020-01-02 01:01:13', '');
INSERT INTO `sys_menu` VALUES ('1001', '用户新增', '1077', '2', '#', 'menuItem', 'F', '0', 'system:user:add', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2020-01-02 01:01:42', '');
INSERT INTO `sys_menu` VALUES ('1002', '用户修改', '1077', '3', '#', 'menuItem', 'F', '0', 'system:user:edit', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2020-01-02 01:02:09', '');
INSERT INTO `sys_menu` VALUES ('1003', '用户删除', '1077', '4', '#', 'menuItem', 'F', '0', 'system:user:remove', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2020-01-02 01:02:37', '');
INSERT INTO `sys_menu` VALUES ('1004', '用户导出', '1077', '5', '#', 'menuItem', 'F', '0', 'system:user:export', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2020-01-02 01:09:54', '');
INSERT INTO `sys_menu` VALUES ('1005', '用户导入', '1077', '6', '#', 'menuItem', 'F', '0', 'system:user:import', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2020-01-02 01:03:32', '');
INSERT INTO `sys_menu` VALUES ('1006', '重置密码', '1077', '7', '#', 'menuItem', 'F', '0', 'system:user:resetPwd', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2020-01-02 01:06:56', '');
INSERT INTO `sys_menu` VALUES ('1007', '角色查询', '101', '1', '#', '', 'F', '0', 'system:role:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1008', '角色新增', '101', '2', '#', '', 'F', '0', 'system:role:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1009', '角色修改', '101', '3', '#', '', 'F', '0', 'system:role:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1010', '角色删除', '101', '4', '#', '', 'F', '0', 'system:role:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1011', '角色导出', '101', '5', '#', '', 'F', '0', 'system:role:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1012', '菜单查询', '102', '1', '#', '', 'F', '0', 'system:menu:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1013', '菜单新增', '102', '2', '#', '', 'F', '0', 'system:menu:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1014', '菜单修改', '102', '3', '#', '', 'F', '0', 'system:menu:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1015', '菜单删除', '102', '4', '#', '', 'F', '0', 'system:menu:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1016', '部门查询', '103', '1', '#', '', 'F', '0', 'system:dept:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1017', '部门新增', '103', '2', '#', '', 'F', '0', 'system:dept:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1018', '部门修改', '103', '3', '#', '', 'F', '0', 'system:dept:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1019', '部门删除', '103', '4', '#', '', 'F', '0', 'system:dept:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1020', '岗位查询', '104', '1', '#', '', 'F', '0', 'system:post:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1021', '岗位新增', '104', '2', '#', '', 'F', '0', 'system:post:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1022', '岗位修改', '104', '3', '#', '', 'F', '0', 'system:post:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1023', '岗位删除', '104', '4', '#', '', 'F', '0', 'system:post:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1024', '岗位导出', '104', '5', '#', '', 'F', '0', 'system:post:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1025', '字典查询', '105', '1', '#', '', 'F', '0', 'system:dict:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1026', '字典新增', '105', '2', '#', '', 'F', '0', 'system:dict:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1027', '字典修改', '105', '3', '#', '', 'F', '0', 'system:dict:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1028', '字典删除', '105', '4', '#', '', 'F', '0', 'system:dict:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1029', '字典导出', '105', '5', '#', '', 'F', '0', 'system:dict:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1030', '参数查询', '106', '1', '#', '', 'F', '0', 'system:config:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1031', '参数新增', '106', '2', '#', '', 'F', '0', 'system:config:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1032', '参数修改', '106', '3', '#', '', 'F', '0', 'system:config:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1033', '参数删除', '106', '4', '#', '', 'F', '0', 'system:config:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1034', '参数导出', '106', '5', '#', '', 'F', '0', 'system:config:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1035', '公告查询', '107', '1', '#', '', 'F', '0', 'system:notice:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1036', '公告新增', '107', '2', '#', '', 'F', '0', 'system:notice:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1037', '公告修改', '107', '3', '#', '', 'F', '0', 'system:notice:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1038', '公告删除', '107', '4', '#', '', 'F', '0', 'system:notice:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1039', '操作查询', '500', '1', '#', '', 'F', '0', 'monitor:operlog:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1040', '操作删除', '500', '2', '#', '', 'F', '0', 'monitor:operlog:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1041', '详细信息', '500', '3', '#', '', 'F', '0', 'monitor:operlog:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1042', '日志导出', '500', '4', '#', '', 'F', '0', 'monitor:operlog:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1043', '登录查询', '501', '1', '#', '', 'F', '0', 'monitor:logininfor:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1044', '登录删除', '501', '2', '#', '', 'F', '0', 'monitor:logininfor:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1045', '日志导出', '501', '3', '#', '', 'F', '0', 'monitor:logininfor:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1046', '账户解锁', '501', '4', '#', '', 'F', '0', 'monitor:logininfor:unlock', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1047', '在线查询', '109', '1', '#', '', 'F', '0', 'monitor:online:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1048', '批量强退', '109', '2', '#', '', 'F', '0', 'monitor:online:batchForceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1049', '单条强退', '109', '3', '#', '', 'F', '0', 'monitor:online:forceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1050', '任务查询', '110', '1', '#', '', 'F', '0', 'monitor:job:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1051', '任务新增', '110', '2', '#', '', 'F', '0', 'monitor:job:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1052', '任务修改', '110', '3', '#', '', 'F', '0', 'monitor:job:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1053', '任务删除', '110', '4', '#', '', 'F', '0', 'monitor:job:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1054', '状态修改', '110', '5', '#', '', 'F', '0', 'monitor:job:changeStatus', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1055', '任务详细', '110', '6', '#', '', 'F', '0', 'monitor:job:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1056', '任务导出', '110', '7', '#', '', 'F', '0', 'monitor:job:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1057', '生成查询', '114', '1', '#', '', 'F', '0', 'tool:gen:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1058', '生成修改', '114', '2', '#', '', 'F', '0', 'tool:gen:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1059', '生成删除', '114', '3', '#', '', 'F', '0', 'tool:gen:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1060', '预览代码', '114', '4', '#', '', 'F', '0', 'tool:gen:preview', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1061', '生成代码', '114', '5', '#', '', 'F', '0', 'tool:gen:code', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1065', '学生信息', '100', '1', '/edusystem/student', '', 'C', '0', 'edusystem:student:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '学生信息菜单');
INSERT INTO `sys_menu` VALUES ('1066', '学生信息查询', '1065', '1', '#', '', 'F', '0', 'edusystem:student:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1067', '学生信息新增', '1065', '2', '#', '', 'F', '0', 'edusystem:student:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1068', '学生信息修改', '1065', '3', '#', '', 'F', '0', 'edusystem:student:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1069', '学生信息删除', '1065', '4', '#', '', 'F', '0', 'edusystem:student:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1070', '学生信息导出', '1065', '5', '#', '', 'F', '0', 'edusystem:student:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1071', '教师信息', '100', '1', '/edusystem/teacher', '', 'C', '0', 'edusystem:teacher:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '教师信息菜单');
INSERT INTO `sys_menu` VALUES ('1072', '教师信息查询', '1071', '1', '#', '', 'F', '0', 'edusystem:teacher:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1073', '教师信息新增', '1071', '2', '#', '', 'F', '0', 'edusystem:teacher:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1074', '教师信息修改', '1071', '3', '#', '', 'F', '0', 'edusystem:teacher:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1075', '教师信息删除', '1071', '4', '#', '', 'F', '0', 'edusystem:teacher:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1076', '教师信息导出', '1071', '5', '#', '', 'F', '0', 'edusystem:teacher:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1077', '管理员信息', '100', '0', '/system/user', '', 'C', '0', 'system:user:view', '#', 'admin', '2020-01-03 09:58:39', 'ry', '2020-01-03 09:58:52', '管理员信息菜单');
INSERT INTO `sys_menu` VALUES ('1078', '课程分数', '3', '1', '/edusystem/score', '', 'C', '0', 'edusystem:score:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '课程分数菜单');
INSERT INTO `sys_menu` VALUES ('1079', '课程分数查询', '1078', '1', '#', '', 'F', '0', 'edusystem:score:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1080', '课程分数新增', '1078', '2', '#', '', 'F', '0', 'edusystem:score:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1081', '课程分数修改', '1078', '3', '#', '', 'F', '0', 'edusystem:score:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1082', '课程分数删除', '1078', '4', '#', '', 'F', '0', 'edusystem:score:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1083', '课程分数导出', '1078', '5', '#', '', 'F', '0', 'edusystem:score:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1084', '专业管理', '3', '1', '/edusystem/major', 'menuItem', 'C', '0', 'edusystem:major:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-01-03 16:09:38', '专业菜单');
INSERT INTO `sys_menu` VALUES ('1085', '专业查询', '1084', '1', '#', '', 'F', '0', 'edusystem:major:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1086', '专业新增', '1084', '2', '#', '', 'F', '0', 'edusystem:major:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1087', '专业修改', '1084', '3', '#', '', 'F', '0', 'edusystem:major:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1088', '专业删除', '1084', '4', '#', '', 'F', '0', 'edusystem:major:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1089', '专业导出', '1084', '5', '#', '', 'F', '0', 'edusystem:major:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1090', '课程类型', '3', '1', '/edusystem/coursetype', '', 'C', '0', 'edusystem:coursetype:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '课程类型菜单');
INSERT INTO `sys_menu` VALUES ('1091', '课程类型查询', '1090', '1', '#', '', 'F', '0', 'edusystem:coursetype:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1092', '课程类型新增', '1090', '2', '#', '', 'F', '0', 'edusystem:coursetype:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1093', '课程类型修改', '1090', '3', '#', '', 'F', '0', 'edusystem:coursetype:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1094', '课程类型删除', '1090', '4', '#', '', 'F', '0', 'edusystem:coursetype:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1095', '课程类型导出', '1090', '5', '#', '', 'F', '0', 'edusystem:coursetype:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1096', '课程管理', '3', '1', '/edusystem/course', '', 'C', '0', 'edusystem:course:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '班级课程菜单');
INSERT INTO `sys_menu` VALUES ('1097', '课程查询', '1096', '1', '#', '', 'F', '0', 'edusystem:course:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1098', '课程新增', '1096', '2', '#', '', 'F', '0', 'edusystem:course:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1099', '课程修改', '1096', '3', '#', '', 'F', '0', 'edusystem:course:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1100', '课程删除', '1096', '4', '#', '', 'F', '0', 'edusystem:course:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1101', '课程导出', '1096', '5', '#', '', 'F', '0', 'edusystem:course:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1102', '教室管理', '3', '1', '/edusystem/classroom', 'menuItem', 'C', '0', 'edusystem:classroom:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-01-03 16:09:52', '教室菜单');
INSERT INTO `sys_menu` VALUES ('1103', '教室查询', '1102', '1', '#', '', 'F', '0', 'edusystem:classroom:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1104', '教室新增', '1102', '2', '#', '', 'F', '0', 'edusystem:classroom:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1105', '教室修改', '1102', '3', '#', '', 'F', '0', 'edusystem:classroom:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1106', '教室删除', '1102', '4', '#', '', 'F', '0', 'edusystem:classroom:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1107', '教室导出', '1102', '5', '#', '', 'F', '0', 'edusystem:classroom:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1108', '班级信息', '3', '1', '/edusystem/class', '', 'C', '0', 'edusystem:class:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '班级信息菜单');
INSERT INTO `sys_menu` VALUES ('1109', '班级信息查询', '1108', '1', '#', '', 'F', '0', 'edusystem:class:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1110', '班级信息新增', '1108', '2', '#', '', 'F', '0', 'edusystem:class:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1111', '班级信息修改', '1108', '3', '#', '', 'F', '0', 'edusystem:class:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1112', '班级信息删除', '1108', '4', '#', '', 'F', '0', 'edusystem:class:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1113', '班级信息导出', '1108', '5', '#', '', 'F', '0', 'edusystem:class:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1114', '班级课程', '3', '1', '/edusystem/ClassCourse', '', 'C', '0', 'edusystem:ClassCourse:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '班级课程菜单');
INSERT INTO `sys_menu` VALUES ('1115', '班级课程查询', '1114', '1', '#', '', 'F', '0', 'edusystem:ClassCourse:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1116', '班级课程新增', '1114', '2', '#', '', 'F', '0', 'edusystem:ClassCourse:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1117', '班级课程修改', '1114', '3', '#', '', 'F', '0', 'edusystem:ClassCourse:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1118', '班级课程删除', '1114', '4', '#', '', 'F', '0', 'edusystem:ClassCourse:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1119', '班级课程导出', '1114', '5', '#', '', 'F', '0', 'edusystem:ClassCourse:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1120', '班级教师', '3', '1', '/edusystem/ClassTeacher', '', 'C', '0', 'edusystem:ClassTeacher:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '班级教师菜单');
INSERT INTO `sys_menu` VALUES ('1121', '班级教师查询', '1120', '1', '#', '', 'F', '0', 'edusystem:ClassTeacher:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1122', '班级教师新增', '1120', '2', '#', '', 'F', '0', 'edusystem:ClassTeacher:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1123', '班级教师修改', '1120', '3', '#', '', 'F', '0', 'edusystem:ClassTeacher:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1124', '班级教师删除', '1120', '4', '#', '', 'F', '0', 'edusystem:ClassTeacher:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES ('1125', '班级教师导出', '1120', '5', '#', '', 'F', '0', 'edusystem:ClassTeacher:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) DEFAULT NULL COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('1', '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-01-02 01:12:00', '管理员');
INSERT INTO `sys_notice` VALUES ('2', '维护通知：2018-07-01 若依系统凌晨维护', '1', '维护内容', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-01-02 01:11:22', '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8 COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES ('100', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"edu_student,edu_teacher\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-01 14:23:02');
INSERT INTO `sys_oper_log` VALUES ('101', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-01 14:27:29');
INSERT INTO `sys_oper_log` VALUES ('102', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-01 14:27:31');
INSERT INTO `sys_oper_log` VALUES ('103', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"edu_student,edu_teacher\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-01 14:27:39');
INSERT INTO `sys_oper_log` VALUES ('104', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/genCode/edu_student', '127.0.0.1', '内网IP', '{ }', 'null', '0', null, '2020-01-01 14:30:50');
INSERT INTO `sys_oper_log` VALUES ('105', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/genCode/edu_teacher', '127.0.0.1', '内网IP', '{ }', 'null', '0', null, '2020-01-01 14:31:03');
INSERT INTO `sys_oper_log` VALUES ('106', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/genCode/edu_student', '127.0.0.1', '内网IP', '{ }', 'null', '0', null, '2020-01-01 14:34:25');
INSERT INTO `sys_oper_log` VALUES ('107', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/genCode/edu_teacher', '127.0.0.1', '内网IP', '{ }', 'null', '0', null, '2020-01-01 14:34:26');
INSERT INTO `sys_oper_log` VALUES ('108', '用户管理', '1', 'com.ruoyi.web.controller.system.SysUserController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"鸿枫\" ],\r\n  \"deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"19976618156\" ],\r\n  \"email\" : [ \"2496155694@qq.com\" ],\r\n  \"loginName\" : [ \"maple\" ],\r\n  \"password\" : [ \"admin123\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"2\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"2\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-01 22:11:11');
INSERT INTO `sys_oper_log` VALUES ('109', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"2\" ],\r\n  \"roleName\" : [ \"普通角色\" ],\r\n  \"roleKey\" : [ \"common\" ],\r\n  \"roleSort\" : [ \"2\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"普通角色\" ],\r\n  \"menuIds\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-01 22:13:04');
INSERT INTO `sys_oper_log` VALUES ('110', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"3\" ],\r\n  \"deptId\" : [ \"106\" ],\r\n  \"userName\" : [ \"鸿枫\" ],\r\n  \"dept.deptName\" : [ \"教务部门\" ],\r\n  \"phonenumber\" : [ \"19976618156\" ],\r\n  \"email\" : [ \"2496155694@qq.com\" ],\r\n  \"loginName\" : [ \"maple\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"2\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"2\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-01 22:25:17');
INSERT INTO `sys_oper_log` VALUES ('111', '岗位管理', '2', 'com.ruoyi.web.controller.system.SysPostController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/post/edit', '127.0.0.1', '内网IP', '{\r\n  \"postId\" : [ \"1\" ],\r\n  \"postName\" : [ \"教学主管\" ],\r\n  \"postCode\" : [ \"ceo\" ],\r\n  \"postSort\" : [ \"1\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-01 22:44:37');
INSERT INTO `sys_oper_log` VALUES ('112', '岗位管理', '2', 'com.ruoyi.web.controller.system.SysPostController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/post/edit', '127.0.0.1', '内网IP', '{\r\n  \"postId\" : [ \"2\" ],\r\n  \"postName\" : [ \"辅导员主管\" ],\r\n  \"postCode\" : [ \"se\" ],\r\n  \"postSort\" : [ \"2\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-01 22:44:53');
INSERT INTO `sys_oper_log` VALUES ('113', '岗位管理', '2', 'com.ruoyi.web.controller.system.SysPostController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/post/edit', '127.0.0.1', '内网IP', '{\r\n  \"postId\" : [ \"3\" ],\r\n  \"postName\" : [ \"人事主管\" ],\r\n  \"postCode\" : [ \"hr\" ],\r\n  \"postSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-01 22:45:19');
INSERT INTO `sys_oper_log` VALUES ('114', '岗位管理', '2', 'com.ruoyi.web.controller.system.SysPostController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/post/edit', '127.0.0.1', '内网IP', '{\r\n  \"postId\" : [ \"4\" ],\r\n  \"postName\" : [ \"讲师\" ],\r\n  \"postCode\" : [ \"user\" ],\r\n  \"postSort\" : [ \"4\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-01 22:45:51');
INSERT INTO `sys_oper_log` VALUES ('115', '岗位管理', '2', 'com.ruoyi.web.controller.system.SysPostController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/post/edit', '127.0.0.1', '内网IP', '{\r\n  \"postId\" : [ \"4\" ],\r\n  \"postName\" : [ \"教员\" ],\r\n  \"postCode\" : [ \"user\" ],\r\n  \"postSort\" : [ \"4\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-01 22:46:02');
INSERT INTO `sys_oper_log` VALUES ('116', '岗位管理', '1', 'com.ruoyi.web.controller.system.SysPostController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/post/add', '127.0.0.1', '内网IP', '{\r\n  \"postName\" : [ \"辅导员\" ],\r\n  \"postCode\" : [ \"fdy\" ],\r\n  \"postSort\" : [ \"5\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-01 22:46:43');
INSERT INTO `sys_oper_log` VALUES ('117', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '财务部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"100\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"管理员用户\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-02 00:35:20');
INSERT INTO `sys_oper_log` VALUES ('118', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '财务部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"100\" ],\r\n  \"parentId\" : [ \"1\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"用户管理\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:user:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-02 00:36:31');
INSERT INTO `sys_oper_log` VALUES ('119', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '财务部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"1062\" ],\r\n  \"parentId\" : [ \"100\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"管理员用户\" ],\r\n  \"url\" : [ \"/system/user\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-02 00:37:03');
INSERT INTO `sys_oper_log` VALUES ('120', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '财务部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"100\" ],\r\n  \"parentId\" : [ \"1\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"用户管理\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-02 00:37:26');
INSERT INTO `sys_oper_log` VALUES ('121', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '财务部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"100\" ],\r\n  \"parentId\" : [ \"1\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"用户管理\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:user:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-02 00:37:37');
INSERT INTO `sys_oper_log` VALUES ('122', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '财务部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"100\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"教师用户\" ],\r\n  \"url\" : [ \"edusystem/teacher\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-02 01:00:12');
INSERT INTO `sys_oper_log` VALUES ('123', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '财务部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"1000\" ],\r\n  \"parentId\" : [ \"1062\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"用户查询\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:user:list\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-02 01:01:13');
INSERT INTO `sys_oper_log` VALUES ('124', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '财务部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"1001\" ],\r\n  \"parentId\" : [ \"1062\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"用户新增\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:user:add\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-02 01:01:42');
INSERT INTO `sys_oper_log` VALUES ('125', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '财务部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"1002\" ],\r\n  \"parentId\" : [ \"1062\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"用户修改\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:user:edit\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-02 01:02:09');
INSERT INTO `sys_oper_log` VALUES ('126', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '财务部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"1003\" ],\r\n  \"parentId\" : [ \"1062\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"用户删除\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:user:remove\" ],\r\n  \"orderNum\" : [ \"4\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-02 01:02:37');
INSERT INTO `sys_oper_log` VALUES ('127', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '财务部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"1004\" ],\r\n  \"parentId\" : [ \"1062\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"用户导出\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:user:export\" ],\r\n  \"orderNum\" : [ \"5\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-02 01:03:02');
INSERT INTO `sys_oper_log` VALUES ('128', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '财务部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"1005\" ],\r\n  \"parentId\" : [ \"1062\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"用户导入\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:user:import\" ],\r\n  \"orderNum\" : [ \"6\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-02 01:03:32');
INSERT INTO `sys_oper_log` VALUES ('129', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '财务部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"1006\" ],\r\n  \"parentId\" : [ \"1062\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"重置密码\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:user:resetPwd\" ],\r\n  \"orderNum\" : [ \"7\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-02 01:05:03');
INSERT INTO `sys_oper_log` VALUES ('130', '重置密码', '2', 'com.ruoyi.web.controller.system.SysUserController.resetPwd()', 'GET', '1', 'admin', '财务部门', '/system/user/resetPwd/3', '127.0.0.1', '内网IP', '{ }', '\"system/user/resetPwd\"', '0', null, '2020-01-02 01:05:32');
INSERT INTO `sys_oper_log` VALUES ('131', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '财务部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"1006\" ],\r\n  \"parentId\" : [ \"1063\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"重置密码\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:user:resetPwd\" ],\r\n  \"orderNum\" : [ \"7\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-02 01:06:01');
INSERT INTO `sys_oper_log` VALUES ('132', '重置密码', '2', 'com.ruoyi.web.controller.system.SysUserController.resetPwd()', 'GET', '1', 'admin', '财务部门', '/system/user/resetPwd/3', '127.0.0.1', '内网IP', '{ }', '\"system/user/resetPwd\"', '0', null, '2020-01-02 01:06:10');
INSERT INTO `sys_oper_log` VALUES ('133', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '财务部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"1006\" ],\r\n  \"parentId\" : [ \"1062\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"重置密码\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:user:resetPwd\" ],\r\n  \"orderNum\" : [ \"7\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-02 01:06:56');
INSERT INTO `sys_oper_log` VALUES ('134', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '财务部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"1004\" ],\r\n  \"parentId\" : [ \"100\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"用户导出\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:user:export\" ],\r\n  \"orderNum\" : [ \"5\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-02 01:08:35');
INSERT INTO `sys_oper_log` VALUES ('135', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '财务部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"1004\" ],\r\n  \"parentId\" : [ \"1062\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"用户导出\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:user:export\" ],\r\n  \"orderNum\" : [ \"5\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-02 01:09:54');
INSERT INTO `sys_oper_log` VALUES ('136', '通知公告', '2', 'com.ruoyi.web.controller.system.SysNoticeController.editSave()', 'POST', '1', 'admin', '财务部门', '/system/notice/edit', '127.0.0.1', '内网IP', '{\r\n  \"noticeId\" : [ \"2\" ],\r\n  \"noticeTitle\" : [ \"维护通知：2018-07-01 若依系统凌晨维护\" ],\r\n  \"noticeType\" : [ \"1\" ],\r\n  \"noticeContent\" : [ \"维护内容\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-02 01:11:22');
INSERT INTO `sys_oper_log` VALUES ('137', '通知公告', '2', 'com.ruoyi.web.controller.system.SysNoticeController.editSave()', 'POST', '1', 'admin', '财务部门', '/system/notice/edit', '127.0.0.1', '内网IP', '{\r\n  \"noticeId\" : [ \"1\" ],\r\n  \"noticeTitle\" : [ \"温馨提醒：2018-07-01 若依新版本发布啦\" ],\r\n  \"noticeType\" : [ \"2\" ],\r\n  \"noticeContent\" : [ \"新版本内容\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-02 01:12:01');
INSERT INTO `sys_oper_log` VALUES ('138', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '财务部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"100\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"学生用户\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-02 16:31:32');
INSERT INTO `sys_oper_log` VALUES ('139', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '财务部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"1064\" ],\r\n  \"parentId\" : [ \"100\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"学生用户\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-02 16:32:20');
INSERT INTO `sys_oper_log` VALUES ('140', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '财务部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"1064\" ],\r\n  \"parentId\" : [ \"100\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"学生用户\" ],\r\n  \"url\" : [ \"edusystem/student\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-02 16:33:21');
INSERT INTO `sys_oper_log` VALUES ('141', '个人信息', '2', 'com.ruoyi.web.controller.system.SysProfileController.updateAvatar()', 'POST', '1', 'admin', '财务部门', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-02 19:26:22');
INSERT INTO `sys_oper_log` VALUES ('142', '个人信息', '2', 'com.ruoyi.web.controller.system.SysProfileController.updateAvatar()', 'POST', '1', 'admin', '财务部门', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-02 19:27:36');
INSERT INTO `sys_oper_log` VALUES ('143', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '财务部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"edu_timetable_details,edu_timetable,edu_classroom,edu_class_teacher,edu_class_course,edu_major,edu_class,edu_course,edu_course_type,edu_score\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-02 23:15:47');
INSERT INTO `sys_oper_log` VALUES ('144', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '财务部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"3\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-02 23:16:35');
INSERT INTO `sys_oper_log` VALUES ('145', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '财务部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"4\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-02 23:16:38');
INSERT INTO `sys_oper_log` VALUES ('146', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '财务部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"edu_student,edu_teacher\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-02 23:17:04');
INSERT INTO `sys_oper_log` VALUES ('147', '在线用户', '7', 'com.ruoyi.web.controller.monitor.SysUserOnlineController.forceLogout()', 'POST', '1', 'admin', '财务部门', '/monitor/online/forceLogout', '127.0.0.1', '内网IP', '{\r\n  \"sessionId\" : [ \"b9583325-73b2-4a58-95d6-473784c68442\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-02 23:36:50');
INSERT INTO `sys_oper_log` VALUES ('148', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '财务部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"edu_student,edu_teacher\" ]\r\n}', 'null', '0', null, '2020-01-03 09:38:21');
INSERT INTO `sys_oper_log` VALUES ('149', '重置密码', '2', 'com.ruoyi.web.controller.system.SysUserController.resetPwd()', 'GET', '1', 'admin', '财务部门', '/system/user/resetPwd/3', '127.0.0.1', '内网IP', '{ }', '\"system/user/resetPwd\"', '0', null, '2020-01-03 10:00:53');
INSERT INTO `sys_oper_log` VALUES ('150', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', '1', 'admin', '财务部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\r\n  \"dictName\" : [ \"学生状态\" ],\r\n  \"dictType\" : [ \"status\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"状态（0.在籍1:毕业 2:休学 3:退学）\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 12:27:42');
INSERT INTO `sys_oper_log` VALUES ('151', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '财务部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"15\" ],\r\n  \"tableName\" : [ \"edu_student\" ],\r\n  \"tableComment\" : [ \"学生信息表\" ],\r\n  \"className\" : [ \"EduStudent\" ],\r\n  \"functionAuthor\" : [ \"maple\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"94\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"学生信息ID\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"studentId\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"95\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"学号（格式：年号+开班时间+报名序号）\" ],\r\n  \"columns[1].javaType\" : [ \"String\" ],\r\n  \"columns[1].javaField\" : [ \"studentNo\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"EQ\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"96\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"学生名（学生真实姓名）\" ],\r\n  \"columns[2].javaType\" : [ \"String\" ],\r\n  \"columns[2].javaField\" : [ \"studentName\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"LIKE\" ],\r\n  \"columns[2].isRequired\" : [ \"1\" ],\r\n  \"columns[2].htmlType\" : [ \"input\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"97\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"用户id\" ],\r\n  \"columns[3].javaType\" : [ \"Long\" ],\r\n  \"columns[3].javaField\" : [ \"sysUserId\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].isEdit\" : [ \"1\" ],\r\n  \"columns[3].isList\" : [ \"1\" ],\r\n  \"columns[3].isQuery\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"EQ\" ],\r\n  \"columns[3].isRequired\" : [ \"1\" ],\r\n  \"columns[3].htmlType\" : [ \"input\" ],\r\n  \"colu', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 12:30:26');
INSERT INTO `sys_oper_log` VALUES ('152', '字典类型', '2', 'com.ruoyi.web.controller.system.SysDictTypeController.editSave()', 'POST', '1', 'admin', '财务部门', '/system/dict/edit', '127.0.0.1', '内网IP', '{\r\n  \"dictId\" : [ \"11\" ],\r\n  \"dictName\" : [ \"学生状态\" ],\r\n  \"dictType\" : [ \"status\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"学生状态列表（0.在籍1:毕业 2:休学 3:退学）\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 12:31:33');
INSERT INTO `sys_oper_log` VALUES ('153', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '财务部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"在籍\" ],\r\n  \"dictValue\" : [ \"0\" ],\r\n  \"dictType\" : [ \"status\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"0\" ],\r\n  \"listClass\" : [ \"\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"在校学生标记\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 12:33:44');
INSERT INTO `sys_oper_log` VALUES ('154', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '财务部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"毕业\" ],\r\n  \"dictValue\" : [ \"1\" ],\r\n  \"dictType\" : [ \"status\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"1\" ],\r\n  \"listClass\" : [ \"\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"毕业学生标记\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 12:34:53');
INSERT INTO `sys_oper_log` VALUES ('155', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '财务部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"休学\" ],\r\n  \"dictValue\" : [ \"2\" ],\r\n  \"dictType\" : [ \"status\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"2\" ],\r\n  \"listClass\" : [ \"\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"休学学生标记\\r\\n\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 12:35:39');
INSERT INTO `sys_oper_log` VALUES ('156', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '财务部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"退学\" ],\r\n  \"dictValue\" : [ \"3\" ],\r\n  \"dictType\" : [ \"status\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"3\" ],\r\n  \"listClass\" : [ \"\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"退学学生标记\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 12:36:24');
INSERT INTO `sys_oper_log` VALUES ('157', '字典类型', '2', 'com.ruoyi.web.controller.system.SysDictTypeController.editSave()', 'POST', '1', 'admin', '财务部门', '/system/dict/edit', '127.0.0.1', '内网IP', '{\r\n  \"dictId\" : [ \"11\" ],\r\n  \"dictName\" : [ \"学生状态\" ],\r\n  \"dictType\" : [ \"student_status\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"学生状态列表（0.在籍1:毕业 2:休学 3:退学）\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 12:36:53');
INSERT INTO `sys_oper_log` VALUES ('158', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '财务部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"15\" ],\r\n  \"tableName\" : [ \"edu_student\" ],\r\n  \"tableComment\" : [ \"学生信息表\" ],\r\n  \"className\" : [ \"EduStudent\" ],\r\n  \"functionAuthor\" : [ \"maple\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"94\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"学生信息ID\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"studentId\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"95\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"学号（格式：年号+开班时间+报名序号）\" ],\r\n  \"columns[1].javaType\" : [ \"String\" ],\r\n  \"columns[1].javaField\" : [ \"studentNo\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"EQ\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"96\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"学生名（学生真实姓名）\" ],\r\n  \"columns[2].javaType\" : [ \"String\" ],\r\n  \"columns[2].javaField\" : [ \"studentName\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"LIKE\" ],\r\n  \"columns[2].isRequired\" : [ \"1\" ],\r\n  \"columns[2].htmlType\" : [ \"input\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"97\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"用户id\" ],\r\n  \"columns[3].javaType\" : [ \"Long\" ],\r\n  \"columns[3].javaField\" : [ \"sysUserId\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].isEdit\" : [ \"1\" ],\r\n  \"columns[3].isList\" : [ \"1\" ],\r\n  \"columns[3].isQuery\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"EQ\" ],\r\n  \"columns[3].isRequired\" : [ \"1\" ],\r\n  \"columns[3].htmlType\" : [ \"input\" ],\r\n  \"colu', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 12:37:24');
INSERT INTO `sys_oper_log` VALUES ('159', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '财务部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"15\" ],\r\n  \"tableName\" : [ \"edu_student\" ],\r\n  \"tableComment\" : [ \"学生信息表\" ],\r\n  \"className\" : [ \"EduStudent\" ],\r\n  \"functionAuthor\" : [ \"maple\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"94\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"学生信息ID\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"studentId\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"95\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"学号（格式：年号+开班时间+报名序号）\" ],\r\n  \"columns[1].javaType\" : [ \"String\" ],\r\n  \"columns[1].javaField\" : [ \"studentNo\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"EQ\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"96\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"学生名（学生真实姓名）\" ],\r\n  \"columns[2].javaType\" : [ \"String\" ],\r\n  \"columns[2].javaField\" : [ \"studentName\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"LIKE\" ],\r\n  \"columns[2].isRequired\" : [ \"1\" ],\r\n  \"columns[2].htmlType\" : [ \"input\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"97\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"用户id\" ],\r\n  \"columns[3].javaType\" : [ \"Long\" ],\r\n  \"columns[3].javaField\" : [ \"sysUserId\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].isEdit\" : [ \"1\" ],\r\n  \"columns[3].isList\" : [ \"1\" ],\r\n  \"columns[3].isQuery\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"EQ\" ],\r\n  \"columns[3].isRequired\" : [ \"1\" ],\r\n  \"columns[3].htmlType\" : [ \"input\" ],\r\n  \"colu', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 12:39:44');
INSERT INTO `sys_oper_log` VALUES ('160', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', '1', 'admin', '财务部门', '/tool/gen/genCode/edu_student', '127.0.0.1', '内网IP', '{ }', 'null', '0', null, '2020-01-03 12:40:02');
INSERT INTO `sys_oper_log` VALUES ('161', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', '1', 'admin', '财务部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\r\n  \"dictName\" : [ \"教师职称\" ],\r\n  \"dictType\" : [ \"teacher_academic_title\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"教师职称\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 14:58:06');
INSERT INTO `sys_oper_log` VALUES ('162', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '财务部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"一级教师\" ],\r\n  \"dictValue\" : [ \"0\" ],\r\n  \"dictType\" : [ \"teacher_academic_title\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"0\" ],\r\n  \"listClass\" : [ \"\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"一级教师，等级是最小的\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 15:00:05');
INSERT INTO `sys_oper_log` VALUES ('163', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '财务部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"二级教师\" ],\r\n  \"dictValue\" : [ \"1\" ],\r\n  \"dictType\" : [ \"teacher_academic_title\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"1\" ],\r\n  \"listClass\" : [ \"\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"等级为中\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 15:00:52');
INSERT INTO `sys_oper_log` VALUES ('164', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '财务部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"三级教师\" ],\r\n  \"dictValue\" : [ \"2\" ],\r\n  \"dictType\" : [ \"teacher_academic_title\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"2\" ],\r\n  \"listClass\" : [ \"\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"最高级教师\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 15:01:44');
INSERT INTO `sys_oper_log` VALUES ('165', '字典类型', '2', 'com.ruoyi.web.controller.system.SysDictTypeController.editSave()', 'POST', '1', 'admin', '财务部门', '/system/dict/edit', '127.0.0.1', '内网IP', '{\r\n  \"dictId\" : [ \"12\" ],\r\n  \"dictName\" : [ \"教师职称\" ],\r\n  \"dictType\" : [ \"teacher_academic_title\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"教师职称列表\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 15:02:05');
INSERT INTO `sys_oper_log` VALUES ('166', '字典类型', '2', 'com.ruoyi.web.controller.system.SysDictTypeController.editSave()', 'POST', '1', 'admin', '财务部门', '/system/dict/edit', '127.0.0.1', '内网IP', '{\r\n  \"dictId\" : [ \"11\" ],\r\n  \"dictName\" : [ \"学生状态\" ],\r\n  \"dictType\" : [ \"student_status\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"学生状态列表\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 15:02:14');
INSERT INTO `sys_oper_log` VALUES ('167', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', '1', 'admin', '财务部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\r\n  \"dictName\" : [ \"教师状态\" ],\r\n  \"dictType\" : [ \"teacher_status\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"教师状态列表\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 15:04:26');
INSERT INTO `sys_oper_log` VALUES ('168', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '财务部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"在职\" ],\r\n  \"dictValue\" : [ \"0\" ],\r\n  \"dictType\" : [ \"teacher_status\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"0\" ],\r\n  \"listClass\" : [ \"\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"在职标志\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 15:05:38');
INSERT INTO `sys_oper_log` VALUES ('169', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '财务部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"离职\" ],\r\n  \"dictValue\" : [ \"1\" ],\r\n  \"dictType\" : [ \"teacher_status\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"1\" ],\r\n  \"listClass\" : [ \"\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"离职标志\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 15:06:07');
INSERT INTO `sys_oper_log` VALUES ('170', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', '1', 'admin', '财务部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\r\n  \"dictName\" : [ \"学历\" ],\r\n  \"dictType\" : [ \"Education\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"学历列表\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 15:09:57');
INSERT INTO `sys_oper_log` VALUES ('171', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '财务部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"高中\" ],\r\n  \"dictValue\" : [ \"0\" ],\r\n  \"dictType\" : [ \"Education\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"0\" ],\r\n  \"listClass\" : [ \"\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"高中学历标识\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 15:10:46');
INSERT INTO `sys_oper_log` VALUES ('172', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '财务部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"大专\" ],\r\n  \"dictValue\" : [ \"1\" ],\r\n  \"dictType\" : [ \"Education\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"1\" ],\r\n  \"listClass\" : [ \"\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"大专学历标识\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 15:11:40');
INSERT INTO `sys_oper_log` VALUES ('173', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '财务部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"本科\" ],\r\n  \"dictValue\" : [ \"2\" ],\r\n  \"dictType\" : [ \"Education\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"2\" ],\r\n  \"listClass\" : [ \"\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"本科学历标识\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 15:12:13');
INSERT INTO `sys_oper_log` VALUES ('174', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '财务部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"研究生\" ],\r\n  \"dictValue\" : [ \"3\" ],\r\n  \"dictType\" : [ \"Education\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"3\" ],\r\n  \"listClass\" : [ \"\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"研究生学历标识\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 15:12:57');
INSERT INTO `sys_oper_log` VALUES ('175', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '财务部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"15\" ],\r\n  \"tableName\" : [ \"edu_student\" ],\r\n  \"tableComment\" : [ \"学生信息表\" ],\r\n  \"className\" : [ \"EduStudent\" ],\r\n  \"functionAuthor\" : [ \"maple\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"94\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"学生信息ID\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"studentId\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"95\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"学号（格式：年号+开班时间+报名序号）\" ],\r\n  \"columns[1].javaType\" : [ \"String\" ],\r\n  \"columns[1].javaField\" : [ \"studentNo\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"EQ\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"96\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"学生名（学生真实姓名）\" ],\r\n  \"columns[2].javaType\" : [ \"String\" ],\r\n  \"columns[2].javaField\" : [ \"studentName\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"LIKE\" ],\r\n  \"columns[2].isRequired\" : [ \"1\" ],\r\n  \"columns[2].htmlType\" : [ \"input\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"97\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"用户id\" ],\r\n  \"columns[3].javaType\" : [ \"Long\" ],\r\n  \"columns[3].javaField\" : [ \"sysUserId\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].isEdit\" : [ \"1\" ],\r\n  \"columns[3].isList\" : [ \"1\" ],\r\n  \"columns[3].isQuery\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"EQ\" ],\r\n  \"columns[3].isRequired\" : [ \"1\" ],\r\n  \"columns[3].htmlType\" : [ \"input\" ],\r\n  \"colu', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 15:18:00');
INSERT INTO `sys_oper_log` VALUES ('176', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '财务部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"16\" ],\r\n  \"tableName\" : [ \"edu_teacher\" ],\r\n  \"tableComment\" : [ \"教师信息表\" ],\r\n  \"className\" : [ \"EduTeacher\" ],\r\n  \"functionAuthor\" : [ \"maple\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"101\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"教师信息ID\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"teacherId\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"102\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"用户名（老师真实姓名）\" ],\r\n  \"columns[1].javaType\" : [ \"String\" ],\r\n  \"columns[1].javaField\" : [ \"teacherName\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"LIKE\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"103\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"用户id\" ],\r\n  \"columns[2].javaType\" : [ \"Long\" ],\r\n  \"columns[2].javaField\" : [ \"sysUserId\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"EQ\" ],\r\n  \"columns[2].isRequired\" : [ \"1\" ],\r\n  \"columns[2].htmlType\" : [ \"input\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"104\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"学历（0.高中1.大专.2.本科3.研究生）\" ],\r\n  \"columns[3].javaType\" : [ \"String\" ],\r\n  \"columns[3].javaField\" : [ \"education\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].isEdit\" : [ \"1\" ],\r\n  \"columns[3].isList\" : [ \"1\" ],\r\n  \"columns[3].isQuery\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"EQ\" ],\r\n  \"columns[3].htmlType\" : [ \"select\" ],\r\n  \"columns[3].dictType\" : [ \"Educatio', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 15:20:35');
INSERT INTO `sys_oper_log` VALUES ('177', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '财务部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"edu_student,edu_teacher,edu_class,edu_class_course,edu_class_teacher,edu_classroom,edu_course,edu_course_type,edu_major,edu_score\" ]\r\n}', 'null', '0', null, '2020-01-03 15:22:30');
INSERT INTO `sys_oper_log` VALUES ('178', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '财务部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"5\" ],\r\n  \"tableName\" : [ \"edu_class\" ],\r\n  \"tableComment\" : [ \"班级信息表\" ],\r\n  \"className\" : [ \"EduClass\" ],\r\n  \"functionAuthor\" : [ \"maple\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"23\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"ID\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"classId\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"24\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"班级名\" ],\r\n  \"columns[1].javaType\" : [ \"String\" ],\r\n  \"columns[1].javaField\" : [ \"className\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"LIKE\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"25\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"创建时间\" ],\r\n  \"columns[2].javaType\" : [ \"Date\" ],\r\n  \"columns[2].javaField\" : [ \"createTime\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"EQ\" ],\r\n  \"columns[2].htmlType\" : [ \"datetime\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"26\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"修改时间\" ],\r\n  \"columns[3].javaType\" : [ \"Date\" ],\r\n  \"columns[3].javaField\" : [ \"updateTime\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].isEdit\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"EQ\" ],\r\n  \"columns[3].htmlType\" : [ \"datetime\" ],\r\n  \"columns[3].dictType\" : [ \"\" ],\r\n  \"columns[4].columnId\" : [ \"27\" ],\r\n  \"columns[4].sort\" : [ \"5\" ],\r\n  \"columns[4].columnComment\" : [ \"开班时间\" ],\r\n  \"columns[4].javaType\" : [ \"Date\" ],\r\n  \"columns[4].javaField\" : [ \"classDate\" ],\r\n  \"columns[4].isInsert\" : [ \"1\" ],\r\n  \"columns[4].isE', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 15:25:41');
INSERT INTO `sys_oper_log` VALUES ('179', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '财务部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"6\" ],\r\n  \"tableName\" : [ \"edu_class_course\" ],\r\n  \"tableComment\" : [ \"班级课程表\" ],\r\n  \"className\" : [ \"EduClassCourse\" ],\r\n  \"functionAuthor\" : [ \"maple\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"32\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"ID\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"classCourseId\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"33\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"班级ID\" ],\r\n  \"columns[1].javaType\" : [ \"Long\" ],\r\n  \"columns[1].javaField\" : [ \"classCourseClassId\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"EQ\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"select\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"34\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"任课教师id\" ],\r\n  \"columns[2].javaType\" : [ \"Long\" ],\r\n  \"columns[2].javaField\" : [ \"classCourseTeacherid\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"EQ\" ],\r\n  \"columns[2].isRequired\" : [ \"1\" ],\r\n  \"columns[2].htmlType\" : [ \"select\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"35\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"课程ID\" ],\r\n  \"columns[3].javaType\" : [ \"Long\" ],\r\n  \"columns[3].javaField\" : [ \"classCourseCourseId\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].isEdit\" : [ \"1\" ],\r\n  \"columns[3].isList\" : [ \"1\" ],\r\n  \"columns[3].isQuery\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"EQ\" ],\r\n  \"columns[3].isRequired\" : [ \"1\" ],\r\n  \"columns[3].htmlType\" : [ \"select', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 15:47:04');
INSERT INTO `sys_oper_log` VALUES ('180', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '财务部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"7\" ],\r\n  \"tableName\" : [ \"edu_class_teacher\" ],\r\n  \"tableComment\" : [ \"班级教师表\" ],\r\n  \"className\" : [ \"EduClassTeacher\" ],\r\n  \"functionAuthor\" : [ \"maple\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"41\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"班级教师ID\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"classTeacherId\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"42\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"班级ID\" ],\r\n  \"columns[1].javaType\" : [ \"Long\" ],\r\n  \"columns[1].javaField\" : [ \"classTeacherClassId\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"EQ\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"select\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"43\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"教师ID\" ],\r\n  \"columns[2].javaType\" : [ \"Long\" ],\r\n  \"columns[2].javaField\" : [ \"classTeacherTeacherId\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"EQ\" ],\r\n  \"columns[2].isRequired\" : [ \"1\" ],\r\n  \"columns[2].htmlType\" : [ \"textarea\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"44\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"创建者（只能由系统用户设置）\" ],\r\n  \"columns[3].javaType\" : [ \"String\" ],\r\n  \"columns[3].javaField\" : [ \"createBy\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"EQ\" ],\r\n  \"columns[3].isRequired\" : [ \"1\" ],\r\n  \"columns[3].htmlType\" : [ \"input\" ],\r\n  \"columns[3].dictType\" : [ \"\" ],\r\n  \"columns[4].columnId\" : [ \"45\" ],\r\n  \"columns[4].so', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 15:48:19');
INSERT INTO `sys_oper_log` VALUES ('181', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '财务部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"5\" ],\r\n  \"tableName\" : [ \"edu_class\" ],\r\n  \"tableComment\" : [ \"班级信息表\" ],\r\n  \"className\" : [ \"EduClass\" ],\r\n  \"functionAuthor\" : [ \"maple\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"23\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"ID\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"classId\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"24\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"班级名\" ],\r\n  \"columns[1].javaType\" : [ \"String\" ],\r\n  \"columns[1].javaField\" : [ \"className\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"LIKE\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"25\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"创建时间\" ],\r\n  \"columns[2].javaType\" : [ \"Date\" ],\r\n  \"columns[2].javaField\" : [ \"createTime\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"EQ\" ],\r\n  \"columns[2].htmlType\" : [ \"datetime\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"26\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"修改时间\" ],\r\n  \"columns[3].javaType\" : [ \"Date\" ],\r\n  \"columns[3].javaField\" : [ \"updateTime\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].isEdit\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"EQ\" ],\r\n  \"columns[3].htmlType\" : [ \"datetime\" ],\r\n  \"columns[3].dictType\" : [ \"\" ],\r\n  \"columns[4].columnId\" : [ \"27\" ],\r\n  \"columns[4].sort\" : [ \"5\" ],\r\n  \"columns[4].columnComment\" : [ \"开班时间\" ],\r\n  \"columns[4].javaType\" : [ \"Date\" ],\r\n  \"columns[4].javaField\" : [ \"classDate\" ],\r\n  \"columns[4].isInsert\" : [ \"1\" ],\r\n  \"columns[4].isE', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 15:48:40');
INSERT INTO `sys_oper_log` VALUES ('182', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '财务部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"6\" ],\r\n  \"tableName\" : [ \"edu_class_course\" ],\r\n  \"tableComment\" : [ \"班级课程表\" ],\r\n  \"className\" : [ \"EduClassCourse\" ],\r\n  \"functionAuthor\" : [ \"maple\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"32\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"ID\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"classCourseId\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"33\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"班级ID\" ],\r\n  \"columns[1].javaType\" : [ \"Long\" ],\r\n  \"columns[1].javaField\" : [ \"classCourseClassId\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"EQ\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"select\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"34\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"任课教师id\" ],\r\n  \"columns[2].javaType\" : [ \"Long\" ],\r\n  \"columns[2].javaField\" : [ \"classCourseTeacherid\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"EQ\" ],\r\n  \"columns[2].isRequired\" : [ \"1\" ],\r\n  \"columns[2].htmlType\" : [ \"select\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"35\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"课程ID\" ],\r\n  \"columns[3].javaType\" : [ \"Long\" ],\r\n  \"columns[3].javaField\" : [ \"classCourseCourseId\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].isEdit\" : [ \"1\" ],\r\n  \"columns[3].isList\" : [ \"1\" ],\r\n  \"columns[3].isQuery\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"EQ\" ],\r\n  \"columns[3].isRequired\" : [ \"1\" ],\r\n  \"columns[3].htmlType\" : [ \"select', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 15:49:37');
INSERT INTO `sys_oper_log` VALUES ('183', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '财务部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"8\" ],\r\n  \"tableName\" : [ \"edu_classroom\" ],\r\n  \"tableComment\" : [ \"教室表\" ],\r\n  \"className\" : [ \"EduClassroom\" ],\r\n  \"functionAuthor\" : [ \"maple\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"49\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"教室id\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"classroomId\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"50\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"教室地址\" ],\r\n  \"columns[1].javaType\" : [ \"String\" ],\r\n  \"columns[1].javaField\" : [ \"classroomAddress\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"EQ\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"51\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"教室容量 单位人\" ],\r\n  \"columns[2].javaType\" : [ \"Long\" ],\r\n  \"columns[2].javaField\" : [ \"classroomCapacity\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"EQ\" ],\r\n  \"columns[2].htmlType\" : [ \"input\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"52\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"创建者\" ],\r\n  \"columns[3].javaType\" : [ \"String\" ],\r\n  \"columns[3].javaField\" : [ \"createBy\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"EQ\" ],\r\n  \"columns[3].htmlType\" : [ \"input\" ],\r\n  \"columns[3].dictType\" : [ \"\" ],\r\n  \"columns[4].columnId\" : [ \"53\" ],\r\n  \"columns[4].sort\" : [ \"5\" ],\r\n  \"columns[4].columnComment\" : [ \"创建时间\" ],\r\n  \"columns[4].javaType\" : [ \"Date\" ],\r\n  \"columns[4].javaField\" : [ \"createTime\" ],\r\n  \"columns[4].isInsert\" : [ \"1\" ],\r\n  \"columns[4].queryType\" : [', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 15:51:43');
INSERT INTO `sys_oper_log` VALUES ('184', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '财务部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"9\" ],\r\n  \"tableName\" : [ \"edu_course\" ],\r\n  \"tableComment\" : [ \"课程表\" ],\r\n  \"className\" : [ \"EduCourse\" ],\r\n  \"functionAuthor\" : [ \"maple\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"57\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"课程ID\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"courseId\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"58\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"课程名\" ],\r\n  \"columns[1].javaType\" : [ \"String\" ],\r\n  \"columns[1].javaField\" : [ \"courseName\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"LIKE\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"59\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"创建者（只能由系统用户设置）\" ],\r\n  \"columns[2].javaType\" : [ \"String\" ],\r\n  \"columns[2].javaField\" : [ \"createBy\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"EQ\" ],\r\n  \"columns[2].htmlType\" : [ \"input\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"60\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"创建时间\" ],\r\n  \"columns[3].javaType\" : [ \"Date\" ],\r\n  \"columns[3].javaField\" : [ \"createTime\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"EQ\" ],\r\n  \"columns[3].htmlType\" : [ \"datetime\" ],\r\n  \"columns[3].dictType\" : [ \"\" ],\r\n  \"columns[4].columnId\" : [ \"61\" ],\r\n  \"columns[4].sort\" : [ \"5\" ],\r\n  \"columns[4].columnComment\" : [ \"更新者\" ],\r\n  \"columns[4].javaType\" : [ \"String\" ],\r\n  \"columns[4].javaField\" : [ \"updataBy\" ],\r\n  \"columns[4].isInsert\" : [ \"1\" ],\r\n  \"columns[4].isEdit\" : [ \"1\" ],\r\n  \"col', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 15:52:13');
INSERT INTO `sys_oper_log` VALUES ('185', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '财务部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"10\" ],\r\n  \"tableName\" : [ \"edu_course_type\" ],\r\n  \"tableComment\" : [ \"课程类型表\" ],\r\n  \"className\" : [ \"EduCourseType\" ],\r\n  \"functionAuthor\" : [ \"maple\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"65\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"课程类型ID\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"courseTypeId\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"66\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"课程类型名\" ],\r\n  \"columns[1].javaType\" : [ \"String\" ],\r\n  \"columns[1].javaField\" : [ \"courseTypeName\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"LIKE\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"67\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"创建者（只能由系统用户设置）\" ],\r\n  \"columns[2].javaType\" : [ \"String\" ],\r\n  \"columns[2].javaField\" : [ \"createBy\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"EQ\" ],\r\n  \"columns[2].htmlType\" : [ \"input\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"68\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"创建时间\" ],\r\n  \"columns[3].javaType\" : [ \"Date\" ],\r\n  \"columns[3].javaField\" : [ \"createTime\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"EQ\" ],\r\n  \"columns[3].htmlType\" : [ \"datetime\" ],\r\n  \"columns[3].dictType\" : [ \"\" ],\r\n  \"columns[4].columnId\" : [ \"69\" ],\r\n  \"columns[4].sort\" : [ \"5\" ],\r\n  \"columns[4].columnComment\" : [ \"修改者\" ],\r\n  \"columns[4].javaType\" : [ \"String\" ],\r\n  \"columns[4].javaField\" : [ \"updateBy\" ],\r\n  \"columns[4].isInsert\" : [ \"1\" ],\r\n  \"columns[4].is', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 15:53:30');
INSERT INTO `sys_oper_log` VALUES ('186', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '财务部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"11\" ],\r\n  \"tableName\" : [ \"edu_major\" ],\r\n  \"tableComment\" : [ \"专业表\" ],\r\n  \"className\" : [ \"EduMajor\" ],\r\n  \"functionAuthor\" : [ \"maple\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"72\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"专业id\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"majorStudiedid\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"73\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"专业名\" ],\r\n  \"columns[1].javaType\" : [ \"String\" ],\r\n  \"columns[1].javaField\" : [ \"majorStudiedname\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"LIKE\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"74\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"专业描述\" ],\r\n  \"columns[2].javaType\" : [ \"String\" ],\r\n  \"columns[2].javaField\" : [ \"describe\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"EQ\" ],\r\n  \"columns[2].htmlType\" : [ \"textarea\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"75\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"null\" ],\r\n  \"columns[3].javaType\" : [ \"String\" ],\r\n  \"columns[3].javaField\" : [ \"createBy\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"EQ\" ],\r\n  \"columns[3].htmlType\" : [ \"input\" ],\r\n  \"columns[3].dictType\" : [ \"\" ],\r\n  \"columns[4].columnId\" : [ \"76\" ],\r\n  \"columns[4].sort\" : [ \"5\" ],\r\n  \"columns[4].columnComment\" : [ \"null\" ],\r\n  \"columns[4].javaType\" : [ \"Date\" ],\r\n  \"columns[4].jav', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 15:53:46');
INSERT INTO `sys_oper_log` VALUES ('187', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '财务部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"12\" ],\r\n  \"tableName\" : [ \"edu_score\" ],\r\n  \"tableComment\" : [ \"课程分数表\" ],\r\n  \"className\" : [ \"EduScore\" ],\r\n  \"functionAuthor\" : [ \"maple\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"80\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"课程分数ID\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"scoreId\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"81\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"学生ID\" ],\r\n  \"columns[1].javaType\" : [ \"Long\" ],\r\n  \"columns[1].javaField\" : [ \"scoreStudentid\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"EQ\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"select\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"82\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"班级课程ID\" ],\r\n  \"columns[2].javaType\" : [ \"Long\" ],\r\n  \"columns[2].javaField\" : [ \"classCourseCourseId\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"EQ\" ],\r\n  \"columns[2].isRequired\" : [ \"1\" ],\r\n  \"columns[2].htmlType\" : [ \"select\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"83\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"分数\" ],\r\n  \"columns[3].javaType\" : [ \"Double\" ],\r\n  \"columns[3].javaField\" : [ \"score\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].isEdit\" : [ \"1\" ],\r\n  \"columns[3].isList\" : [ \"1\" ],\r\n  \"columns[3].isQuery\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"EQ\" ],\r\n  \"columns[3].isRequired\" : [ \"1\" ],\r\n  \"columns[3].htmlType\" : [ \"input\" ],\r\n  \"columns[3].dictType\" : [ ', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 15:55:22');
INSERT INTO `sys_oper_log` VALUES ('188', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '财务部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"11\" ],\r\n  \"tableName\" : [ \"edu_major\" ],\r\n  \"tableComment\" : [ \"专业表\" ],\r\n  \"className\" : [ \"EduMajor\" ],\r\n  \"functionAuthor\" : [ \"maple\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"72\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"专业id\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"majorStudiedid\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"73\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"专业名\" ],\r\n  \"columns[1].javaType\" : [ \"String\" ],\r\n  \"columns[1].javaField\" : [ \"majorStudiedname\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"LIKE\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"74\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"专业描述\" ],\r\n  \"columns[2].javaType\" : [ \"String\" ],\r\n  \"columns[2].javaField\" : [ \"describe\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"EQ\" ],\r\n  \"columns[2].htmlType\" : [ \"textarea\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"75\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"null\" ],\r\n  \"columns[3].javaType\" : [ \"String\" ],\r\n  \"columns[3].javaField\" : [ \"createBy\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"EQ\" ],\r\n  \"columns[3].htmlType\" : [ \"input\" ],\r\n  \"columns[3].dictType\" : [ \"\" ],\r\n  \"columns[4].columnId\" : [ \"76\" ],\r\n  \"columns[4].sort\" : [ \"5\" ],\r\n  \"columns[4].columnComment\" : [ \"null\" ],\r\n  \"columns[4].javaType\" : [ \"Date\" ],\r\n  \"columns[4].jav', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 15:55:37');
INSERT INTO `sys_oper_log` VALUES ('189', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '财务部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"15\" ],\r\n  \"tableName\" : [ \"edu_student\" ],\r\n  \"tableComment\" : [ \"学生信息表\" ],\r\n  \"className\" : [ \"EduStudent\" ],\r\n  \"functionAuthor\" : [ \"maple\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"94\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"学生信息ID\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"studentId\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"95\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"学号（格式：年号+开班时间+报名序号）\" ],\r\n  \"columns[1].javaType\" : [ \"String\" ],\r\n  \"columns[1].javaField\" : [ \"studentNo\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"EQ\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"96\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"学生名（学生真实姓名）\" ],\r\n  \"columns[2].javaType\" : [ \"String\" ],\r\n  \"columns[2].javaField\" : [ \"studentName\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"LIKE\" ],\r\n  \"columns[2].isRequired\" : [ \"1\" ],\r\n  \"columns[2].htmlType\" : [ \"input\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"97\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"用户id\" ],\r\n  \"columns[3].javaType\" : [ \"Long\" ],\r\n  \"columns[3].javaField\" : [ \"sysUserId\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].isEdit\" : [ \"1\" ],\r\n  \"columns[3].isList\" : [ \"1\" ],\r\n  \"columns[3].isQuery\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"EQ\" ],\r\n  \"columns[3].isRequired\" : [ \"1\" ],\r\n  \"columns[3].htmlType\" : [ \"input\" ],\r\n  \"colu', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 15:57:22');
INSERT INTO `sys_oper_log` VALUES ('190', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '财务部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"5\" ],\r\n  \"tableName\" : [ \"edu_class\" ],\r\n  \"tableComment\" : [ \"班级信息表\" ],\r\n  \"className\" : [ \"EduClass\" ],\r\n  \"functionAuthor\" : [ \"maple\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"23\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"ID\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"classId\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"24\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"班级名\" ],\r\n  \"columns[1].javaType\" : [ \"String\" ],\r\n  \"columns[1].javaField\" : [ \"className\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"LIKE\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"25\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"创建时间\" ],\r\n  \"columns[2].javaType\" : [ \"Date\" ],\r\n  \"columns[2].javaField\" : [ \"createTime\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"EQ\" ],\r\n  \"columns[2].htmlType\" : [ \"datetime\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"26\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"修改时间\" ],\r\n  \"columns[3].javaType\" : [ \"Date\" ],\r\n  \"columns[3].javaField\" : [ \"updateTime\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].isEdit\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"EQ\" ],\r\n  \"columns[3].htmlType\" : [ \"datetime\" ],\r\n  \"columns[3].dictType\" : [ \"\" ],\r\n  \"columns[4].columnId\" : [ \"27\" ],\r\n  \"columns[4].sort\" : [ \"5\" ],\r\n  \"columns[4].columnComment\" : [ \"开班时间\" ],\r\n  \"columns[4].javaType\" : [ \"Date\" ],\r\n  \"columns[4].javaField\" : [ \"classDate\" ],\r\n  \"columns[4].isInsert\" : [ \"1\" ],\r\n  \"columns[4].isE', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 15:57:37');
INSERT INTO `sys_oper_log` VALUES ('191', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '财务部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"edu_student,edu_teacher,edu_class,edu_class_course,edu_class_teacher,edu_classroom,edu_course,edu_course_type,edu_major,edu_score\" ]\r\n}', 'null', '0', null, '2020-01-03 15:58:10');
INSERT INTO `sys_oper_log` VALUES ('192', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '财务部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"1084\" ],\r\n  \"parentId\" : [ \"3\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"专业管理\" ],\r\n  \"url\" : [ \"/edusystem/major\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"edusystem:major:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 16:09:38');
INSERT INTO `sys_oper_log` VALUES ('193', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '财务部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"1102\" ],\r\n  \"parentId\" : [ \"3\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"教室管理\" ],\r\n  \"url\" : [ \"/edusystem/classroom\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"edusystem:classroom:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 16:09:52');
INSERT INTO `sys_oper_log` VALUES ('194', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '财务部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"15,16,5,6,7,8,9,10,11,12\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 17:08:08');
INSERT INTO `sys_oper_log` VALUES ('195', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '财务部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"13,14\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 17:08:19');
INSERT INTO `sys_oper_log` VALUES ('196', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '财务部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"edu_classroom,edu_class_teacher,edu_class_course,edu_major,edu_class,edu_course,edu_course_type,edu_score,edu_student,edu_teacher\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 17:09:36');
INSERT INTO `sys_oper_log` VALUES ('197', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '财务部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"22\" ],\r\n  \"tableName\" : [ \"edu_course_type\" ],\r\n  \"tableComment\" : [ \"课程类型表\" ],\r\n  \"className\" : [ \"EduCourseType\" ],\r\n  \"functionAuthor\" : [ \"maple\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"149\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"课程类型ID\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"courseTypeId\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"150\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"课程类型名\" ],\r\n  \"columns[1].javaType\" : [ \"String\" ],\r\n  \"columns[1].javaField\" : [ \"courseTypeName\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"LIKE\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"151\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"创建者（只能由系统用户设置）\" ],\r\n  \"columns[2].javaType\" : [ \"String\" ],\r\n  \"columns[2].javaField\" : [ \"createBy\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"EQ\" ],\r\n  \"columns[2].htmlType\" : [ \"input\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"152\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"创建时间\" ],\r\n  \"columns[3].javaType\" : [ \"Date\" ],\r\n  \"columns[3].javaField\" : [ \"createTime\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].isEdit\" : [ \"1\" ],\r\n  \"columns[3].isList\" : [ \"1\" ],\r\n  \"columns[3].isQuery\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"EQ\" ],\r\n  \"columns[3].htmlType\" : [ \"datetime\" ],\r\n  \"columns[3].dictType\" : [ \"\" ],\r\n  \"columns[4].columnId\" : [ \"153\" ],\r\n ', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 17:16:06');
INSERT INTO `sys_oper_log` VALUES ('198', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '财务部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"22\" ],\r\n  \"tableName\" : [ \"edu_course_type\" ],\r\n  \"tableComment\" : [ \"课程类型表\" ],\r\n  \"className\" : [ \"EduCourseType\" ],\r\n  \"functionAuthor\" : [ \"maple\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"149\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"课程类型ID\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"courseTypeId\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"150\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"课程类型名\" ],\r\n  \"columns[1].javaType\" : [ \"String\" ],\r\n  \"columns[1].javaField\" : [ \"courseTypeName\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"LIKE\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"151\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"创建者（只能由系统用户设置）\" ],\r\n  \"columns[2].javaType\" : [ \"String\" ],\r\n  \"columns[2].javaField\" : [ \"createBy\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"EQ\" ],\r\n  \"columns[2].htmlType\" : [ \"input\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"152\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"创建时间\" ],\r\n  \"columns[3].javaType\" : [ \"Date\" ],\r\n  \"columns[3].javaField\" : [ \"createTime\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].isEdit\" : [ \"1\" ],\r\n  \"columns[3].isList\" : [ \"1\" ],\r\n  \"columns[3].isQuery\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"EQ\" ],\r\n  \"columns[3].htmlType\" : [ \"datetime\" ],\r\n  \"columns[3].dictType\" : [ \"\" ],\r\n  \"columns[4].columnId\" : [ \"153\" ],\r\n ', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 17:17:01');
INSERT INTO `sys_oper_log` VALUES ('199', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '财务部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"22\" ],\r\n  \"tableName\" : [ \"edu_course_type\" ],\r\n  \"tableComment\" : [ \"课程类型表\" ],\r\n  \"className\" : [ \"EduCourseType\" ],\r\n  \"functionAuthor\" : [ \"maple\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"149\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"课程类型ID\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"courseTypeId\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"150\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"课程类型名\" ],\r\n  \"columns[1].javaType\" : [ \"String\" ],\r\n  \"columns[1].javaField\" : [ \"courseTypeName\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"LIKE\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"151\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"创建者（只能由系统用户设置）\" ],\r\n  \"columns[2].javaType\" : [ \"String\" ],\r\n  \"columns[2].javaField\" : [ \"createBy\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"EQ\" ],\r\n  \"columns[2].htmlType\" : [ \"input\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"152\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"创建时间\" ],\r\n  \"columns[3].javaType\" : [ \"Date\" ],\r\n  \"columns[3].javaField\" : [ \"createTime\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].isEdit\" : [ \"1\" ],\r\n  \"columns[3].isList\" : [ \"1\" ],\r\n  \"columns[3].isQuery\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"EQ\" ],\r\n  \"columns[3].htmlType\" : [ \"datetime\" ],\r\n  \"columns[3].dictType\" : [ \"\" ],\r\n  \"columns[4].columnId\" : [ \"153\" ],\r\n ', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 17:18:05');
INSERT INTO `sys_oper_log` VALUES ('200', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '财务部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"22\" ],\r\n  \"tableName\" : [ \"edu_course_type\" ],\r\n  \"tableComment\" : [ \"课程类型表\" ],\r\n  \"className\" : [ \"EduCourseType\" ],\r\n  \"functionAuthor\" : [ \"maple\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"149\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"课程类型ID\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"courseTypeId\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"150\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"课程类型名\" ],\r\n  \"columns[1].javaType\" : [ \"String\" ],\r\n  \"columns[1].javaField\" : [ \"courseTypeName\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"LIKE\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"151\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"创建者（只能由系统用户设置）\" ],\r\n  \"columns[2].javaType\" : [ \"String\" ],\r\n  \"columns[2].javaField\" : [ \"createBy\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"EQ\" ],\r\n  \"columns[2].htmlType\" : [ \"input\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"152\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"创建时间\" ],\r\n  \"columns[3].javaType\" : [ \"Date\" ],\r\n  \"columns[3].javaField\" : [ \"createTime\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].isEdit\" : [ \"1\" ],\r\n  \"columns[3].isList\" : [ \"1\" ],\r\n  \"columns[3].isQuery\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"EQ\" ],\r\n  \"columns[3].htmlType\" : [ \"datetime\" ],\r\n  \"columns[3].dictType\" : [ \"\" ],\r\n  \"columns[4].columnId\" : [ \"153\" ],\r\n ', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 17:19:22');
INSERT INTO `sys_oper_log` VALUES ('201', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '财务部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"23\" ],\r\n  \"tableName\" : [ \"edu_major\" ],\r\n  \"tableComment\" : [ \"专业表\" ],\r\n  \"className\" : [ \"EduMajor\" ],\r\n  \"functionAuthor\" : [ \"maple\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"156\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"专业id\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"majorStudiedid\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"157\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"专业名\" ],\r\n  \"columns[1].javaType\" : [ \"String\" ],\r\n  \"columns[1].javaField\" : [ \"majorStudiedname\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"LIKE\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"158\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"专业描述\" ],\r\n  \"columns[2].javaType\" : [ \"String\" ],\r\n  \"columns[2].javaField\" : [ \"describe\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"EQ\" ],\r\n  \"columns[2].htmlType\" : [ \"textarea\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"159\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"创建者\" ],\r\n  \"columns[3].javaType\" : [ \"String\" ],\r\n  \"columns[3].javaField\" : [ \"createBy\" ],\r\n  \"columns[3].isList\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"EQ\" ],\r\n  \"columns[3].htmlType\" : [ \"input\" ],\r\n  \"columns[3].dictType\" : [ \"\" ],\r\n  \"columns[4].columnId\" : [ \"160\" ],\r\n  \"columns[4].sort\" : [ \"5\" ],\r\n  \"columns[4].columnComment\" : [ \"创建时间\" ],\r\n  \"columns[4].javaType\" : [ \"Date\" ],\r\n  \"columns[4].javaField\" : [ \"createTime\" ],\r\n  \"c', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 17:28:12');
INSERT INTO `sys_oper_log` VALUES ('202', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '财务部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"22\" ],\r\n  \"tableName\" : [ \"edu_course_type\" ],\r\n  \"tableComment\" : [ \"课程类型表\" ],\r\n  \"className\" : [ \"EduCourseType\" ],\r\n  \"functionAuthor\" : [ \"maple\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"149\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"课程类型ID\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"courseTypeId\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"150\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"课程类型名\" ],\r\n  \"columns[1].javaType\" : [ \"String\" ],\r\n  \"columns[1].javaField\" : [ \"courseTypeName\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"LIKE\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"151\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"创建者（只能由系统用户设置）\" ],\r\n  \"columns[2].javaType\" : [ \"String\" ],\r\n  \"columns[2].javaField\" : [ \"createBy\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"EQ\" ],\r\n  \"columns[2].htmlType\" : [ \"input\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"152\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"创建时间\" ],\r\n  \"columns[3].javaType\" : [ \"Date\" ],\r\n  \"columns[3].javaField\" : [ \"createTime\" ],\r\n  \"columns[3].isList\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"EQ\" ],\r\n  \"columns[3].htmlType\" : [ \"datetime\" ],\r\n  \"columns[3].dictType\" : [ \"\" ],\r\n  \"columns[4].columnId\" : [ \"153\" ],\r\n  \"columns[4].sort\" : [ \"5\" ],\r\n  \"columns[4].columnComment\" : [ \"修改者\" ],\r\n  \"columns[4].javaType\" : [ \"String\" ],\r\n  \"columns[4].javaField\" : [ \"updateBy\" ],\r\n  \"columns[4].isList\" : [ \"1\" ],\r\n  \"columns[4].que', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 17:28:58');
INSERT INTO `sys_oper_log` VALUES ('203', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '财务部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"24\" ],\r\n  \"tableName\" : [ \"edu_score\" ],\r\n  \"tableComment\" : [ \"课程分数表\" ],\r\n  \"className\" : [ \"EduScore\" ],\r\n  \"functionAuthor\" : [ \"maple\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"164\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"课程分数ID\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"scoreId\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"165\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"学生姓名\" ],\r\n  \"columns[1].javaType\" : [ \"Long\" ],\r\n  \"columns[1].javaField\" : [ \"scoreStudentid\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"EQ\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"select\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"166\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"课程名\" ],\r\n  \"columns[2].javaType\" : [ \"Long\" ],\r\n  \"columns[2].javaField\" : [ \"classCourseCourseId\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"EQ\" ],\r\n  \"columns[2].isRequired\" : [ \"1\" ],\r\n  \"columns[2].htmlType\" : [ \"select\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"167\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"分数\" ],\r\n  \"columns[3].javaType\" : [ \"Double\" ],\r\n  \"columns[3].javaField\" : [ \"score\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].isEdit\" : [ \"1\" ],\r\n  \"columns[3].isList\" : [ \"1\" ],\r\n  \"columns[3].isQuery\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"EQ\" ],\r\n  \"columns[3].isRequired\" : [ \"1\" ],\r\n  \"columns[3].htmlType\" : [ \"input\" ],\r\n  \"columns[3].dictType\" : [', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 17:32:13');
INSERT INTO `sys_oper_log` VALUES ('204', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '财务部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"25\" ],\r\n  \"tableName\" : [ \"edu_student\" ],\r\n  \"tableComment\" : [ \"学生信息表\" ],\r\n  \"className\" : [ \"EduStudent\" ],\r\n  \"functionAuthor\" : [ \"maple\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"174\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"学生信息ID\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"studentId\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"175\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"学号（格式：年号+开班时间+报名序号）\" ],\r\n  \"columns[1].javaType\" : [ \"String\" ],\r\n  \"columns[1].javaField\" : [ \"studentNo\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"EQ\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"176\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"学生名（学生真实姓名）\" ],\r\n  \"columns[2].javaType\" : [ \"String\" ],\r\n  \"columns[2].javaField\" : [ \"studentName\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"LIKE\" ],\r\n  \"columns[2].isRequired\" : [ \"1\" ],\r\n  \"columns[2].htmlType\" : [ \"input\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"177\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"用户id\" ],\r\n  \"columns[3].javaType\" : [ \"Long\" ],\r\n  \"columns[3].javaField\" : [ \"sysUserId\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].isEdit\" : [ \"1\" ],\r\n  \"columns[3].isList\" : [ \"1\" ],\r\n  \"columns[3].isQuery\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"EQ\" ],\r\n  \"columns[3].isRequired\" : [ \"1\" ],\r\n  \"columns[3].htmlType\" : [ \"input\" ],\r\n  \"', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 17:37:19');
INSERT INTO `sys_oper_log` VALUES ('205', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '财务部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"26\" ],\r\n  \"tableName\" : [ \"edu_teacher\" ],\r\n  \"tableComment\" : [ \"教师信息表\" ],\r\n  \"className\" : [ \"EduTeacher\" ],\r\n  \"functionAuthor\" : [ \"maple\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"181\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"教师信息ID\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"teacherId\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"182\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"用户名（老师真实姓名）\" ],\r\n  \"columns[1].javaType\" : [ \"String\" ],\r\n  \"columns[1].javaField\" : [ \"teacherName\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"LIKE\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"183\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"用户id\" ],\r\n  \"columns[2].javaType\" : [ \"Long\" ],\r\n  \"columns[2].javaField\" : [ \"sysUserId\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"EQ\" ],\r\n  \"columns[2].isRequired\" : [ \"1\" ],\r\n  \"columns[2].htmlType\" : [ \"select\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"184\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"学历（0.高中1.大专.2.本科3.研究生）\" ],\r\n  \"columns[3].javaType\" : [ \"String\" ],\r\n  \"columns[3].javaField\" : [ \"education\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].isEdit\" : [ \"1\" ],\r\n  \"columns[3].isList\" : [ \"1\" ],\r\n  \"columns[3].isQuery\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"EQ\" ],\r\n  \"columns[3].htmlType\" : [ \"select\" ],\r\n  \"columns[3].dictType\" : [ \"\" ],\r\n ', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 17:38:49');
INSERT INTO `sys_oper_log` VALUES ('206', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '财务部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"25\" ],\r\n  \"tableName\" : [ \"edu_student\" ],\r\n  \"tableComment\" : [ \"学生信息表\" ],\r\n  \"className\" : [ \"EduStudent\" ],\r\n  \"functionAuthor\" : [ \"maple\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"174\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"学生信息ID\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"studentId\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"175\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"学号（格式：年号+开班时间+报名序号）\" ],\r\n  \"columns[1].javaType\" : [ \"String\" ],\r\n  \"columns[1].javaField\" : [ \"studentNo\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"EQ\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"176\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"学生名（学生真实姓名）\" ],\r\n  \"columns[2].javaType\" : [ \"String\" ],\r\n  \"columns[2].javaField\" : [ \"studentName\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"LIKE\" ],\r\n  \"columns[2].isRequired\" : [ \"1\" ],\r\n  \"columns[2].htmlType\" : [ \"input\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"177\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"用户id\" ],\r\n  \"columns[3].javaType\" : [ \"Long\" ],\r\n  \"columns[3].javaField\" : [ \"sysUserId\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].isEdit\" : [ \"1\" ],\r\n  \"columns[3].isList\" : [ \"1\" ],\r\n  \"columns[3].isQuery\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"EQ\" ],\r\n  \"columns[3].isRequired\" : [ \"1\" ],\r\n  \"columns[3].htmlType\" : [ \"input\" ],\r\n  \"', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 17:39:06');
INSERT INTO `sys_oper_log` VALUES ('207', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '财务部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"17\" ],\r\n  \"tableName\" : [ \"edu_class\" ],\r\n  \"tableComment\" : [ \"班级信息表\" ],\r\n  \"className\" : [ \"EduClass\" ],\r\n  \"functionAuthor\" : [ \"maple\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"107\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"班级ID\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"classId\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"108\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"班级名\" ],\r\n  \"columns[1].javaType\" : [ \"String\" ],\r\n  \"columns[1].javaField\" : [ \"className\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"LIKE\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"109\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"开班时间\" ],\r\n  \"columns[2].javaType\" : [ \"Date\" ],\r\n  \"columns[2].javaField\" : [ \"classDate\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"LIKE\" ],\r\n  \"columns[2].isRequired\" : [ \"1\" ],\r\n  \"columns[2].htmlType\" : [ \"datetime\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"110\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"创建者\" ],\r\n  \"columns[3].javaType\" : [ \"String\" ],\r\n  \"columns[3].javaField\" : [ \"createBy\" ],\r\n  \"columns[3].queryType\" : [ \"EQ\" ],\r\n  \"columns[3].htmlType\" : [ \"input\" ],\r\n  \"columns[3].dictType\" : [ \"\" ],\r\n  \"columns[4].columnId\" : [ \"111\" ],\r\n  \"columns[4].sort\" : [ \"5\" ],\r\n  \"columns[4].columnComment\" : [ \"创建时间\" ],\r\n  \"columns[4].javaType\" : [ \"Date\" ],\r\n  \"columns[4].javaFiel', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 17:41:41');
INSERT INTO `sys_oper_log` VALUES ('208', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '财务部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"18\" ],\r\n  \"tableName\" : [ \"edu_class_course\" ],\r\n  \"tableComment\" : [ \"班级课程表\" ],\r\n  \"className\" : [ \"EduClassCourse\" ],\r\n  \"functionAuthor\" : [ \"maple\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"116\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"班级课程ID\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"classCourseId\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"117\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"班级\" ],\r\n  \"columns[1].javaType\" : [ \"Long\" ],\r\n  \"columns[1].javaField\" : [ \"classCourseClassId\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"EQ\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"select\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"118\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"任课教师\" ],\r\n  \"columns[2].javaType\" : [ \"Long\" ],\r\n  \"columns[2].javaField\" : [ \"classCourseTeacherid\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"EQ\" ],\r\n  \"columns[2].isRequired\" : [ \"1\" ],\r\n  \"columns[2].htmlType\" : [ \"select\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"119\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"课程\" ],\r\n  \"columns[3].javaType\" : [ \"Long\" ],\r\n  \"columns[3].javaField\" : [ \"classCourseCourseId\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].isEdit\" : [ \"1\" ],\r\n  \"columns[3].isList\" : [ \"1\" ],\r\n  \"columns[3].isQuery\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"EQ\" ],\r\n  \"columns[3].isRequired\" : [ \"1\" ],\r\n  \"columns[3].htmlType\" : [ \"sel', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 17:45:30');
INSERT INTO `sys_oper_log` VALUES ('209', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '财务部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"19\" ],\r\n  \"tableName\" : [ \"edu_class_teacher\" ],\r\n  \"tableComment\" : [ \"班级教师表\" ],\r\n  \"className\" : [ \"EduClassTeacher\" ],\r\n  \"functionAuthor\" : [ \"maple\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"125\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"班级教师ID\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"classTeacherId\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"126\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"班级名\" ],\r\n  \"columns[1].javaType\" : [ \"Long\" ],\r\n  \"columns[1].javaField\" : [ \"classTeacherClassId\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"EQ\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"select\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"127\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"教师名\" ],\r\n  \"columns[2].javaType\" : [ \"Long\" ],\r\n  \"columns[2].javaField\" : [ \"classTeacherTeacherId\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"EQ\" ],\r\n  \"columns[2].isRequired\" : [ \"1\" ],\r\n  \"columns[2].htmlType\" : [ \"select\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"128\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"创建者（只能由系统用户设置）\" ],\r\n  \"columns[3].javaType\" : [ \"String\" ],\r\n  \"columns[3].javaField\" : [ \"createBy\" ],\r\n  \"columns[3].queryType\" : [ \"EQ\" ],\r\n  \"columns[3].isRequired\" : [ \"1\" ],\r\n  \"columns[3].htmlType\" : [ \"input\" ],\r\n  \"columns[3].dictType\" : [ \"\" ],\r\n  \"columns[4].columnId\" : [ \"129\" ],\r\n  \"columns[4].sort\" : [ \"5\" ],\r\n  \"columns[4].colu', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 17:46:50');
INSERT INTO `sys_oper_log` VALUES ('210', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '财务部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"18\" ],\r\n  \"tableName\" : [ \"edu_class_course\" ],\r\n  \"tableComment\" : [ \"班级课程表\" ],\r\n  \"className\" : [ \"EduClassCourse\" ],\r\n  \"functionAuthor\" : [ \"maple\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"116\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"班级课程ID\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"classCourseId\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"117\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"班级名\" ],\r\n  \"columns[1].javaType\" : [ \"Long\" ],\r\n  \"columns[1].javaField\" : [ \"classCourseClassId\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"EQ\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"select\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"118\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"任课教师\" ],\r\n  \"columns[2].javaType\" : [ \"Long\" ],\r\n  \"columns[2].javaField\" : [ \"classCourseTeacherid\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"EQ\" ],\r\n  \"columns[2].isRequired\" : [ \"1\" ],\r\n  \"columns[2].htmlType\" : [ \"select\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"119\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"课程名\" ],\r\n  \"columns[3].javaType\" : [ \"Long\" ],\r\n  \"columns[3].javaField\" : [ \"classCourseCourseId\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].isEdit\" : [ \"1\" ],\r\n  \"columns[3].isList\" : [ \"1\" ],\r\n  \"columns[3].isQuery\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"EQ\" ],\r\n  \"columns[3].isRequired\" : [ \"1\" ],\r\n  \"columns[3].htmlType\" : [ \"s', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 17:47:19');
INSERT INTO `sys_oper_log` VALUES ('211', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '财务部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"19\" ],\r\n  \"tableName\" : [ \"edu_class_teacher\" ],\r\n  \"tableComment\" : [ \"班级教师表\" ],\r\n  \"className\" : [ \"EduClassTeacher\" ],\r\n  \"functionAuthor\" : [ \"maple\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"125\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"班级教师ID\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"classTeacherId\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"126\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"班级名\" ],\r\n  \"columns[1].javaType\" : [ \"Long\" ],\r\n  \"columns[1].javaField\" : [ \"classTeacherClassId\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"EQ\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"select\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"127\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"教师名\" ],\r\n  \"columns[2].javaType\" : [ \"Long\" ],\r\n  \"columns[2].javaField\" : [ \"classTeacherTeacherId\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"EQ\" ],\r\n  \"columns[2].isRequired\" : [ \"1\" ],\r\n  \"columns[2].htmlType\" : [ \"select\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"128\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"创建者（只能由系统用户设置）\" ],\r\n  \"columns[3].javaType\" : [ \"String\" ],\r\n  \"columns[3].javaField\" : [ \"createBy\" ],\r\n  \"columns[3].queryType\" : [ \"EQ\" ],\r\n  \"columns[3].isRequired\" : [ \"1\" ],\r\n  \"columns[3].htmlType\" : [ \"input\" ],\r\n  \"columns[3].dictType\" : [ \"\" ],\r\n  \"columns[4].columnId\" : [ \"129\" ],\r\n  \"columns[4].sort\" : [ \"5\" ],\r\n  \"columns[4].colu', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 17:47:56');
INSERT INTO `sys_oper_log` VALUES ('212', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '财务部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"20\" ],\r\n  \"tableName\" : [ \"edu_classroom\" ],\r\n  \"tableComment\" : [ \"教室表\" ],\r\n  \"className\" : [ \"EduClassroom\" ],\r\n  \"functionAuthor\" : [ \"maple\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"133\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"教室ID\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"classroomId\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"134\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"教室地址\" ],\r\n  \"columns[1].javaType\" : [ \"String\" ],\r\n  \"columns[1].javaField\" : [ \"classroomAddress\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"LIKE\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"135\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"教室容量 单位人\" ],\r\n  \"columns[2].javaType\" : [ \"Long\" ],\r\n  \"columns[2].javaField\" : [ \"classroomCapacity\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"GTE\" ],\r\n  \"columns[2].htmlType\" : [ \"input\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"136\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"创建者\" ],\r\n  \"columns[3].javaType\" : [ \"String\" ],\r\n  \"columns[3].javaField\" : [ \"createBy\" ],\r\n  \"columns[3].queryType\" : [ \"EQ\" ],\r\n  \"columns[3].htmlType\" : [ \"input\" ],\r\n  \"columns[3].dictType\" : [ \"\" ],\r\n  \"columns[4].columnId\" : [ \"137\" ],\r\n  \"columns[4].sort\" : [ \"5\" ],\r\n  \"columns[4].columnComment\" : [ \"创建时间\" ],\r\n  \"columns[4].javaType\" : [ \"Date\" ],\r\n  \"columns[4].javaField\" : [ \"crea', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 17:49:17');
INSERT INTO `sys_oper_log` VALUES ('213', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '财务部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"21\" ],\r\n  \"tableName\" : [ \"edu_course\" ],\r\n  \"tableComment\" : [ \"课程表\" ],\r\n  \"className\" : [ \"EduCourse\" ],\r\n  \"functionAuthor\" : [ \"maple\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"141\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"课程ID\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"courseId\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"142\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"课程名\" ],\r\n  \"columns[1].javaType\" : [ \"String\" ],\r\n  \"columns[1].javaField\" : [ \"courseName\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"LIKE\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"143\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"创建者（只能由系统用户设置）\" ],\r\n  \"columns[2].javaType\" : [ \"String\" ],\r\n  \"columns[2].javaField\" : [ \"createBy\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"EQ\" ],\r\n  \"columns[2].htmlType\" : [ \"input\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"144\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"创建时间\" ],\r\n  \"columns[3].javaType\" : [ \"Date\" ],\r\n  \"columns[3].javaField\" : [ \"createTime\" ],\r\n  \"columns[3].isList\" : [ \"1\" ],\r\n  \"columns[3].isQuery\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"EQ\" ],\r\n  \"columns[3].htmlType\" : [ \"datetime\" ],\r\n  \"columns[3].dictType\" : [ \"\" ],\r\n  \"columns[4].columnId\" : [ \"145\" ],\r\n  \"columns[4].sort\" : [ \"5\" ],\r\n  \"columns[4].columnComment\" : [ \"更新者\" ],\r\n  \"columns[4].javaType\" : [ \"String\" ],\r\n  \"columns[4].javaField\" : [ \"updataBy\" ],\r\n  \"columns[4].isList\" : [ \"1\" ],\r\n  \"co', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 17:50:41');
INSERT INTO `sys_oper_log` VALUES ('214', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '财务部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"17\" ],\r\n  \"tableName\" : [ \"edu_class\" ],\r\n  \"tableComment\" : [ \"班级信息表\" ],\r\n  \"className\" : [ \"EduClass\" ],\r\n  \"functionAuthor\" : [ \"maple\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"107\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"班级ID\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"classId\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"108\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"班级名\" ],\r\n  \"columns[1].javaType\" : [ \"String\" ],\r\n  \"columns[1].javaField\" : [ \"className\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"LIKE\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"109\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"开班时间\" ],\r\n  \"columns[2].javaType\" : [ \"Date\" ],\r\n  \"columns[2].javaField\" : [ \"classDate\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"EQ\" ],\r\n  \"columns[2].isRequired\" : [ \"1\" ],\r\n  \"columns[2].htmlType\" : [ \"datetime\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"110\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"创建者\" ],\r\n  \"columns[3].javaType\" : [ \"String\" ],\r\n  \"columns[3].javaField\" : [ \"createBy\" ],\r\n  \"columns[3].queryType\" : [ \"EQ\" ],\r\n  \"columns[3].htmlType\" : [ \"input\" ],\r\n  \"columns[3].dictType\" : [ \"\" ],\r\n  \"columns[4].columnId\" : [ \"111\" ],\r\n  \"columns[4].sort\" : [ \"5\" ],\r\n  \"columns[4].columnComment\" : [ \"创建时间\" ],\r\n  \"columns[4].javaType\" : [ \"Date\" ],\r\n  \"columns[4].javaField\"', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-01-03 17:52:58');
INSERT INTO `sys_oper_log` VALUES ('215', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '财务部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"edu_course_type,edu_major,edu_score,edu_student,edu_teacher,edu_class,edu_class_course,edu_class_teacher,edu_classroom,edu_course\" ]\r\n}', 'null', '0', null, '2020-01-03 17:53:46');
INSERT INTO `sys_oper_log` VALUES ('216', '专业', '1', 'com.htxk.edusystem.controller.EduMajorController.addSave()', 'POST', '1', 'admin', '财务部门', '/edusystem/major/add', '127.0.0.1', '内网IP', '{\r\n  \"majorStudiedname\" : [ \"软件工程\" ],\r\n  \"describe\" : [ \"软件工程是一门研究用工程化方法构建和维护有效的、实用的和高质量的软件的学科。它涉及程序设计语言、数据库、软件开发工具、系统平台、标准、设计模式等方面。\\r\\n在现代社会中，软件应用于多个方面。典型的软件有电子邮件、嵌入式系统、人机界面、办公套件、操作系统、编译器、数据库、游戏等。同时，各个行业几乎都有计算机软件的应用，如工业、农业、银行、航空、政府部门等。这些应用促进了经济和社会的发展，也提高了工作效率和生活效率 。\" ]\r\n}', 'null', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe,\n            \n            create_time ) \n         values ( \'软件工\' at line 3\r\n### The error may involve com.htxk.edusystem.mapper.EduMajorMapper.insertEduMajor-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into edu_major          ( Major_studiedName,             describe,                          create_time )           values ( ?,             ?,                          ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe,\n            \n            create_time ) \n         values ( \'软件工\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe,\n            \n            create_time ) \n         values ( \'软件工\' at line 3', '2020-01-03 18:15:49');
INSERT INTO `sys_oper_log` VALUES ('217', '专业', '1', 'com.htxk.edusystem.controller.EduMajorController.addSave()', 'POST', '1', 'admin', '财务部门', '/edusystem/major/add', '127.0.0.1', '内网IP', '{\r\n  \"majorStudiedname\" : [ \"软件工程\" ],\r\n  \"describe\" : [ \"\" ]\r\n}', 'null', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'Major_studiedId\' doesn\'t have a default value\r\n### The error may involve com.htxk.edusystem.mapper.EduMajorMapper.insertEduMajor-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into edu_major          ( Major_studiedName,                                       create_time )           values ( ?,                                       ? )\r\n### Cause: java.sql.SQLException: Field \'Major_studiedId\' doesn\'t have a default value\n; Field \'Major_studiedId\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'Major_studiedId\' doesn\'t have a default value', '2020-01-03 18:16:23');
INSERT INTO `sys_oper_log` VALUES ('218', '专业', '1', 'com.htxk.edusystem.controller.EduMajorController.addSave()', 'POST', '1', 'admin', '财务部门', '/edusystem/major/add', '127.0.0.1', '内网IP', '{\r\n  \"majorStudiedname\" : [ \"软件工程\" ],\r\n  \"describe\" : [ \"软件工程是一门研究用工程化方法构建和维护有效的、实用的和高质量的软件的学科。它涉及程序设计语言、数据库、软件开发工具、系统平台、标准、设计模式等方面。\\r\\n在现代社会中，软件应用于多个方面。典型的软件有电子邮件、嵌入式系统、人机界面、办公套件、操作系统、编译器、数据库、游戏等。同时，各个行业几乎都有计算机软件的应用，如工业、农业、银行、航空、政府部门等。这些应用促进了经济和社会的发展，也提高了工作效率和生活效率 。\" ]\r\n}', 'null', '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe,\n            \n            create_time ) \n         values ( \'软件工\' at line 3\r\n### The error may involve com.htxk.edusystem.mapper.EduMajorMapper.insertEduMajor-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into edu_major          ( Major_studiedName,             describe,                          create_time )           values ( ?,             ?,                          ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe,\n            \n            create_time ) \n         values ( \'软件工\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'describe,\n            \n            create_time ) \n         values ( \'软件工\' at line 3', '2020-01-03 18:20:04');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES ('1', 'ceo', '教学主管', '1', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-01-01 22:44:37', '');
INSERT INTO `sys_post` VALUES ('2', 'se', '辅导员主管', '2', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-01-01 22:44:53', '');
INSERT INTO `sys_post` VALUES ('3', 'hr', '人事主管', '3', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-01-01 22:45:19', '');
INSERT INTO `sys_post` VALUES ('4', 'user', '教员', '4', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-01-01 22:46:02', '');
INSERT INTO `sys_post` VALUES ('5', 'fdy', '辅导员', '5', '0', 'admin', '2020-01-01 22:46:43', '', null, null);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '管理员', 'admin', '1', '1', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_role` VALUES ('2', '普通角色', 'common', '2', '2', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-01-01 22:13:04', '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES ('2', '100');
INSERT INTO `sys_role_dept` VALUES ('2', '101');
INSERT INTO `sys_role_dept` VALUES ('2', '105');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  `salt` varchar(20) DEFAULT '' COMMENT '盐加密',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '103', 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '/profile/avatar/2020/01/02/802c0ea03c6c3454ada48d65a107b971.png', '29c67a30398638269fe600f73a054934', '111111', '0', '0', '127.0.0.1', '2020-01-03 18:04:08', 'admin', '2018-03-16 11:33:00', 'ry', '2020-01-03 18:04:08', '管理员');
INSERT INTO `sys_user` VALUES ('2', '105', 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '8e6d98b90472783cc73c17047ddccf36', '222222', '0', '0', '127.0.0.1', '2020-01-02 23:34:16', 'admin', '2018-03-16 11:33:00', 'ry', '2020-01-02 23:34:16', '测试员');
INSERT INTO `sys_user` VALUES ('3', '106', 'maple', '鸿枫', '00', '2496155694@qq.com', '19976618156', '0', '', 'a9d52f5a6d998d15efa81daef35c71a2', 'df3b80', '0', '0', '127.0.0.1', '2020-01-01 22:14:39', 'admin', '2020-01-01 22:11:10', 'admin', '2020-01-01 22:25:17', '');

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online` (
  `sessionId` varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='在线用户记录';

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
INSERT INTO `sys_user_online` VALUES ('3008f280-a550-45eb-b7dc-90e5d2f81616', 'admin', '财务部门', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', 'on_line', '2020-01-03 16:40:15', '2020-01-03 18:20:04', '1800000');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES ('1', '1');
INSERT INTO `sys_user_post` VALUES ('2', '2');
INSERT INTO `sys_user_post` VALUES ('3', '1');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '2');
INSERT INTO `sys_user_role` VALUES ('3', '2');
