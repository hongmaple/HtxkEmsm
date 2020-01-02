package com.ruoyi.generator.service;

import java.util.List;
import java.util.Map;
import com.ruoyi.generator.domain.GenTable;

/**
 * 业务 服务层
 * 
 * @author ruoyi
 */
public interface IGenTableService
{
    /**
     * 查询业务列表
     * 
     * @param genTable 业务信息
     * @return 业务集合
     */
    public List<GenTable> selectGenTableList(GenTable genTable);

    /**
     * 查询据库列表
     * 
     * @param genTable 业务信息
     * @return 数据库表集合
     */
    public List<GenTable> selectDbTableList(GenTable genTable);

    /**
     * 查询据库列表
     * 
     * @param tableNames 表名称组
     * @return 数据库表集合
     */
    public List<GenTable> selectDbTableListByNames(String[] tableNames);

    /**
     * 查询业务信息
     * 
     * @param id 业务ID
     * @return 业务信息
     */
    public GenTable selectGenTableById(Long id);

    /**
     * 修改业务
     * 
     * @param genTable 业务信息
     * @return 结果
     */
    public void updateGenTable(GenTable genTable);

    /**
     * 删除业务信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public void deleteGenTableByIds(String ids);

    /**
     * 导入表结构
     * 
     * @param tableList 导入表列表
     * @param operName 操作人员
     */
    public void importGenTable(List<GenTable> tableList, String operName);

    /**
     * 预览代码
     * 
     * @param tableId 表编号
     * @return 预览数据列表
     */
    public Map<String, String> previewCode(Long tableId);

    /**
     * 生成代码
     * 
     * @param tableName 表名称
     * @return 数据
     */
    public byte[] generatorCode(String tableName);

    /**
     * 批量生成代码
     * 
     * @param tableNames 表数组
     * @return 数据
     */
    public byte[] generatorCode(String[] tableNames);

    /**
     * 修改保存参数校验
     * 
     * @param genTable 业务信息
     */
    public void validateEdit(GenTable genTable);
}
