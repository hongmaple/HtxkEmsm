package com.htxk.edusystem.controller;

import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.htxk.edusystem.domain.EduTeacher;
import com.htxk.edusystem.service.IEduTeacherService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 教师信息Controller
 * 
 * @author maple
 * @date 2020-01-03
 */
@Controller
@RequestMapping("/edusystem/teacher")
public class EduTeacherController extends BaseController
{
    private String prefix = "edusystem/teacher";

    @Autowired
    private IEduTeacherService eduTeacherService;

    @RequiresPermissions("edusystem:teacher:view")
    @GetMapping()
    public String teacher()
    {
        return prefix + "/teacher";
    }

    /**
     * 查询教师信息列表
     */
    @RequiresPermissions("edusystem:teacher:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(EduTeacher eduTeacher)
    {
        startPage();
        List<EduTeacher> list = eduTeacherService.selectEduTeacherList(eduTeacher);
        return getDataTable(list);
    }

    /**
     * 导出教师信息列表
     */
    @RequiresPermissions("edusystem:teacher:export")
    @Log(title = "教师信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(EduTeacher eduTeacher)
    {
        List<EduTeacher> list = eduTeacherService.selectEduTeacherList(eduTeacher);
        ExcelUtil<EduTeacher> util = new ExcelUtil<EduTeacher>(EduTeacher.class);
        return util.exportExcel(list, "teacher");
    }

    /**
     * 新增教师信息
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存教师信息
     */
    @RequiresPermissions("edusystem:teacher:add")
    @Log(title = "教师信息", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(EduTeacher eduTeacher)
    {
        return toAjax(eduTeacherService.insertEduTeacher(eduTeacher));
    }

    /**
     * 修改教师信息
     */
    @GetMapping("/edit/{teacherId}")
    public String edit(@PathVariable("teacherId") Long teacherId, ModelMap mmap)
    {
        EduTeacher eduTeacher = eduTeacherService.selectEduTeacherById(teacherId);
        mmap.put("eduTeacher", eduTeacher);
        return prefix + "/edit";
    }

    /**
     * 修改保存教师信息
     */
    @RequiresPermissions("edusystem:teacher:edit")
    @Log(title = "教师信息", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(EduTeacher eduTeacher)
    {
        return toAjax(eduTeacherService.updateEduTeacher(eduTeacher));
    }

    /**
     * 删除教师信息
     */
    @RequiresPermissions("edusystem:teacher:remove")
    @Log(title = "教师信息", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(eduTeacherService.deleteEduTeacherByIds(ids));
    }
}
