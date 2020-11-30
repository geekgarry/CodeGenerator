package com.maike.project.entity;

import java.util.Date;
import java.util.List;

/**
 * @program: spring-boot-project-mybatis
 * @description: 数据表的详细信息
 * @author: GarryChan
 * @create: 2020-11-27 09:23
 **/
public class TableInfo {
    public Long getTableId() {
        return tableId;
    }

    public void setTableId(Long tableId) {
        this.tableId = tableId;
    }

    public String getTableName() {
        return tableName;
    }

    public void setTableName(String tableName) {
        this.tableName = tableName;
    }

    public String getTableComment() {
        return tableComment;
    }

    public void setTableComment(String tableComment) {
        this.tableComment = tableComment;
    }

    public String getModelName() {
        return modelName;
    }

    public void setModelName(String modelName) {
        this.modelName = modelName;
    }

    public String getTplCategory() {
        return tplCategory;
    }

    public void setTplCategory(String tplCategory) {
        this.tplCategory = tplCategory;
    }

    public String getBasePackageName() {
        return basePackageName;
    }

    public void setBasePackageName(String basePackageName) {
        this.basePackageName = basePackageName;
    }

    public String getModuleName() {
        return moduleName;
    }

    public void setModuleName(String moduleName) {
        this.moduleName = moduleName;
    }

    public String getBusinessName() {
        return businessName;
    }

    public void setBusinessName(String businessName) {
        this.businessName = businessName;
    }

    public String getFunctionName() {
        return functionName;
    }

    public void setFunctionName(String functionName) {
        this.functionName = functionName;
    }

    public String getFunctionAuthor() {
        return functionAuthor;
    }

    public void setFunctionAuthor(String functionAuthor) {
        this.functionAuthor = functionAuthor;
    }

    public ColumnTable getPkColumn() {
        return pkColumn;
    }

    public void setPkColumn(ColumnTable pkColumn) {
        this.pkColumn = pkColumn;
    }

    public List<ColumnTable> getAllColumns() {
        return allColumns;
    }

    public void setAllColumns(List<ColumnTable> allColumns) {
        this.allColumns = allColumns;
    }

    public String getOther() {
        return other;
    }

    public void setOther(String other) {
        this.other = other;
    }

    /*
        表的ID
         */
    private Long tableId;
    /*
    表的名字
     */
    private String tableName;
    /*
    表的注释
     */
    private String tableComment;
    /*
    实体类名
     */
    private String modelName;
    /*
    使用的模板，操作类型，curd表操作，tree树操作
     */
    private String tplCategory;
    /*
    基础包名
     */
    private String basePackageName;
    /*
    模块名，也就是这个功能名
     */
    private String moduleName;
    /*
    业务名
     */
    private String businessName;
    /*
    功能名
     */
    private String functionName;
    /*
    功能作者
     */
    private String functionAuthor;
    /*
    主键的列
     */
    private ColumnTable pkColumn;
    /*
    所有的列
     */
    private List<ColumnTable> allColumns;
    /*
    其他
     */
    private String other;
    private Date createTime;

    private Date updateTime;

    @Override
    public String toString() {
        return super.toString();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
}
