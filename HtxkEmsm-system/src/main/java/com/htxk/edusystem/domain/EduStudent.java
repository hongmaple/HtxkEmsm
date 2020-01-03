package com.htxk.edusystem.domain;

import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 学生信息对象 edu_student
 * 
 * @author maple
 * @date 2020-01-03
 */
public class EduStudent extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 学生信息ID */
    private Long studentId;

    /** 学号（格式：年号+开班时间+报名序号） */
    @Excel(name = "学号", readConverterExp = "格=式：年号+开班时间+报名序号")
    private String studentNo;

    /** 学生名（学生真实姓名） */
    @Excel(name = "学生名", readConverterExp = "学=生真实姓名")
    private String studentName;

    /** 用户id */
    @Excel(name = "用户id")
    private Long sysUserId;

    /** 所属班级 */
    @Excel(name = "所属班级")
    private Long studentClass;

    /** 状态（0.在籍1:毕业 2:休学 3:退学） */
    @Excel(name = "状态", readConverterExp = "0=.在籍1:毕业,2=:休学,3=:退学")
    private String status;

    /**
     * 所学专业
     */
    @Excel(name = "所学专业")
    private Long studentMajorstudiedid;

    public void setStudentId(Long studentId) 
    {
        this.studentId = studentId;
    }

    public Long getStudentId() 
    {
        return studentId;
    }
    public void setStudentNo(String studentNo) 
    {
        this.studentNo = studentNo;
    }

    public String getStudentNo() 
    {
        return studentNo;
    }
    public void setStudentName(String studentName) 
    {
        this.studentName = studentName;
    }

    public String getStudentName() 
    {
        return studentName;
    }
    public void setSysUserId(Long sysUserId) 
    {
        this.sysUserId = sysUserId;
    }

    public Long getSysUserId() 
    {
        return sysUserId;
    }
    public void setStudentClass(Long studentClass) 
    {
        this.studentClass = studentClass;
    }

    public Long getStudentClass() 
    {
        return studentClass;
    }
    public void setStatus(String status) 
    {
        this.status = status;
    }

    public String getStatus() 
    {
        return status;
    }
    public void setStudentMajorstudiedid(Long studentMajorstudiedid) 
    {
        this.studentMajorstudiedid = studentMajorstudiedid;
    }

    public Long getStudentMajorstudiedid() 
    {
        return studentMajorstudiedid;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("studentId", getStudentId())
            .append("studentNo", getStudentNo())
            .append("studentName", getStudentName())
            .append("sysUserId", getSysUserId())
            .append("studentClass", getStudentClass())
            .append("status", getStatus())
            .append("studentMajorstudiedid", getStudentMajorstudiedid())
            .toString();
    }
}
