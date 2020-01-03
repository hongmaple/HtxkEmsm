package com.htxk.edusystem.mapper;

import com.htxk.edusystem.domain.EduTeacher;
import java.util.List;

/**
 * 教师信息Mapper接口
 * 
 * @author maple
 * @date 2020-01-03
 */
public interface EduTeacherMapper 
{
    /**
     * 查询教师信息
     * 
     * @param teacherId 教师信息ID
     * @return 教师信息
     */
    public EduTeacher selectEduTeacherById(Long teacherId);

    /**
     * 查询教师信息列表
     * 
     * @param eduTeacher 教师信息
     * @return 教师信息集合
     */
    public List<EduTeacher> selectEduTeacherList(EduTeacher eduTeacher);

    /**
     * 新增教师信息
     * 
     * @param eduTeacher 教师信息
     * @return 结果
     */
    public int insertEduTeacher(EduTeacher eduTeacher);

    /**
     * 修改教师信息
     * 
     * @param eduTeacher 教师信息
     * @return 结果
     */
    public int updateEduTeacher(EduTeacher eduTeacher);

    /**
     * 删除教师信息
     * 
     * @param teacherId 教师信息ID
     * @return 结果
     */
    public int deleteEduTeacherById(Long teacherId);

    /**
     * 批量删除教师信息
     * 
     * @param teacherIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteEduTeacherByIds(String[] teacherIds);
}
