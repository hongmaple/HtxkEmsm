package com.htxk.edusystem.domain;

import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.util.Date;

/**
 * 专业对象 edu_major
 * 
 * @author maple
 * @date 2020-01-03
 */
public class EduMajor extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 专业id
     */
    private Long majorStudiedid;

    /** 专业名 */
    @Excel(name = "专业名")
    private String majorStudiedname;

    /** 专业描述 */
    @Excel(name = "专业描述")
    private String describe;

    /**
     * 更新者
     */
    @Excel(name = "更新者")
    private String updataBy;

    /**
     * 更新时间
     */
    @Excel(name = "更新时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date updataTime;

    /** 删除标志（0代表存在 2代表删除） */
    private String delFlag;

    public Long getMajorStudiedid()
    {
        return majorStudiedid;
    }

    public void setMajorStudiedid(Long majorStudiedid)
    {
        this.majorStudiedid = majorStudiedid;
    }

    public String getMajorStudiedname()
    {
        return majorStudiedname;
    }

    public void setMajorStudiedname(String majorStudiedname)
    {
        this.majorStudiedname = majorStudiedname;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe)
    {
        this.describe = describe;
    }

    public String getUpdataBy() {
        return updataBy;
    }

    public void setUpdataBy(String updataBy)
    {
        this.updataBy = updataBy;
    }

    public Date getUpdataTime() {
        return updataTime;
    }

    public void setUpdataTime(Date updataTime)
    {
        this.updataTime = updataTime;
    }

    public String getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(String delFlag)
    {
        this.delFlag = delFlag;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("majorStudiedid", getMajorStudiedid())
                .append("majorStudiedname", getMajorStudiedname())
                .append("describe", getDescribe())
                .append("createBy", getCreateBy())
                .append("createTime", getCreateTime())
                .append("updataBy", getUpdataBy())
                .append("updataTime", getUpdataTime())
                .append("delFlag", getDelFlag())
            .toString();
    }
}
