package com.htxk.edusystem.domain;

import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 班级教师对象 edu_class_teacher
 *
 * @author maple
 * @date 2020-01-03
 */
public class EduClassTeacher extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 班级教师ID
     */
    private Long classTeacherId;

    /**
     * 班级ID
     */
    @Excel(name = "班级ID")
    private Long classTeacherClassId;

    /**
     * 教师ID
     */
    @Excel(name = "教师ID")
    private Long classTeacherTeacherId;

    /**
     * 删除标志（0代表存在 2代表删除）
     */
    private String delFlag;

    public Long getClassTeacherId() {
        return classTeacherId;
    }

    public void setClassTeacherId(Long classTeacherId) {
        this.classTeacherId = classTeacherId;
    }

    public Long getClassTeacherClassId() {
        return classTeacherClassId;
    }

    public void setClassTeacherClassId(Long classTeacherClassId) {
        this.classTeacherClassId = classTeacherClassId;
    }

    public Long getClassTeacherTeacherId() {
        return classTeacherTeacherId;
    }

    public void setClassTeacherTeacherId(Long classTeacherTeacherId) {
        this.classTeacherTeacherId = classTeacherTeacherId;
    }

    public String getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("classTeacherId", getClassTeacherId())
                .append("classTeacherClassId", getClassTeacherClassId())
                .append("classTeacherTeacherId", getClassTeacherTeacherId())
                .append("createBy", getCreateBy())
                .append("createTime", getCreateTime())
                .append("updateBy", getUpdateBy())
                .append("updateTime", getUpdateTime())
                .append("delFlag", getDelFlag())
                .toString();
    }
}
