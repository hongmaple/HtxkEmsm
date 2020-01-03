package com.htxk.edusystem.controller;

import com.htxk.edusystem.domain.EduClassTeacher;
import com.htxk.edusystem.service.IEduClassTeacherService;
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
 * 班级教师Controller
 *
 * @author maple
 * @date 2020-01-03
 */
@Controller
@RequestMapping("/edusystem/teacher")
public class EduClassTeacherController extends BaseController {
    private String prefix = "edusystem/teacher";

    @Autowired
    private IEduClassTeacherService eduClassTeacherService;

    @RequiresPermissions("edusystem:teacher:view")
    @GetMapping()
    public String teacher() {
        return prefix + "/teacher";
    }

    /**
     * 查询班级教师列表
     */
    @RequiresPermissions("edusystem:teacher:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(EduClassTeacher eduClassTeacher) {
        startPage();
        List<EduClassTeacher> list = eduClassTeacherService.selectEduClassTeacherList(eduClassTeacher);
        return getDataTable(list);
    }

    /**
     * 导出班级教师列表
     */
    @RequiresPermissions("edusystem:teacher:export")
    @Log(title = "班级教师", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(EduClassTeacher eduClassTeacher) {
        List<EduClassTeacher> list = eduClassTeacherService.selectEduClassTeacherList(eduClassTeacher);
        ExcelUtil<EduClassTeacher> util = new ExcelUtil<EduClassTeacher>(EduClassTeacher.class);
        return util.exportExcel(list, "teacher");
    }

    /**
     * 新增班级教师
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存班级教师
     */
    @RequiresPermissions("edusystem:teacher:add")
    @Log(title = "班级教师", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(EduClassTeacher eduClassTeacher) {
        return toAjax(eduClassTeacherService.insertEduClassTeacher(eduClassTeacher));
    }

    /**
     * 修改班级教师
     */
    @GetMapping("/edit/{classTeacherId}")
    public String edit(@PathVariable("classTeacherId") Long classTeacherId, ModelMap mmap) {
        EduClassTeacher eduClassTeacher = eduClassTeacherService.selectEduClassTeacherById(classTeacherId);
        mmap.put("eduClassTeacher", eduClassTeacher);
        return prefix + "/edit";
    }

    /**
     * 修改保存班级教师
     */
    @RequiresPermissions("edusystem:teacher:edit")
    @Log(title = "班级教师", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(EduClassTeacher eduClassTeacher) {
        return toAjax(eduClassTeacherService.updateEduClassTeacher(eduClassTeacher));
    }

    /**
     * 删除班级教师
     */
    @RequiresPermissions("edusystem:teacher:remove")
    @Log(title = "班级教师", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(eduClassTeacherService.deleteEduClassTeacherByIds(ids));
    }
}
