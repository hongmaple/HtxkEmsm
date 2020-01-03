package com.htxk.edusystem.controller;

import com.htxk.edusystem.domain.EduStudent;
import com.htxk.edusystem.service.IEduStudentService;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.poi.ExcelUtil;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 学生信息Controller
 * 
 * @author maple
 * @date 2020-01-03
 */
@Controller
@RequestMapping("/edusystem/student")
public class EduStudentController extends BaseController
{
    private String prefix = "edusystem/student";

    @Autowired
    private IEduStudentService eduStudentService;

    @RequiresPermissions("edusystem:student:view")
    @GetMapping()
    public String student()
    {
        return prefix + "/student";
    }

    /**
     * 查询学生信息列表
     */
    @RequiresPermissions("edusystem:student:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(EduStudent eduStudent)
    {
        startPage();
        List<EduStudent> list = eduStudentService.selectEduStudentList(eduStudent);
        return getDataTable(list);
    }

    /**
     * 导出学生信息列表
     */
    @RequiresPermissions("edusystem:student:export")
    @Log(title = "学生信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(EduStudent eduStudent)
    {
        List<EduStudent> list = eduStudentService.selectEduStudentList(eduStudent);
        ExcelUtil<EduStudent> util = new ExcelUtil<EduStudent>(EduStudent.class);
        return util.exportExcel(list, "student");
    }

    /**
     * 新增学生信息
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存学生信息
     */
    @RequiresPermissions("edusystem:student:add")
    @Log(title = "学生信息", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(EduStudent eduStudent)
    {
        return toAjax(eduStudentService.insertEduStudent(eduStudent));
    }

    /**
     * 修改学生信息
     */
    @GetMapping("/edit/{studentId}")
    public String edit(@PathVariable("studentId") Long studentId, ModelMap mmap)
    {
        EduStudent eduStudent = eduStudentService.selectEduStudentById(studentId);
        mmap.put("eduStudent", eduStudent);
        return prefix + "/edit";
    }

    /**
     * 修改保存学生信息
     */
    @RequiresPermissions("edusystem:student:edit")
    @Log(title = "学生信息", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(EduStudent eduStudent)
    {
        return toAjax(eduStudentService.updateEduStudent(eduStudent));
    }

    /**
     * 删除学生信息
     */
    @RequiresPermissions("edusystem:student:remove")
    @Log(title = "学生信息", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(eduStudentService.deleteEduStudentByIds(ids));
    }
}
