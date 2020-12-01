<?xml version="1.0" encoding="UTF-8"?>

<!DOCTYPE mapper
        PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN"
        "http://mybatis.org/dtd/mybatis-3-mapper.dtd">

<mapper namespace="${basePackage}.project.dao.${modelNameUpperCamel}Mapper">
    <resultMap id="BaseResultMap" type="${basePackage}.project.model.${modelNameUpperCamel}">
        <#list allColumn as column>
            <result property="${column.smallColumnName}" column="${column.columnName}" jdbcType="${column.dictType}" />
        </#list>
    </resultMap>

    <!--${title}-->
    <!--${functionName}-->
    <sql id="baseSelectVo">
        select
        <#if allColumn?exists>
            <#list allColumn as column>
          ${column.columnName}<#if allColumnCount != column.sort>,</#if>
            </#list>
        </#if>
         from ${tableName}
    </sql>

    <select id="select${modelNameUpperCamel}List" parameterType="${modelNameUpperCamel}" resultMap="BaseResultMap">
        <include refid="baseSelectVo"/>
        <where>
            <#if allColumn?exists>
                <#list allColumn as column>
                    <if test="${column.smallColumnName?uncap_first} !=null">
                        AND ${column.columnName} = ${r'#'}{${column.smallColumnName?uncap_first},jdbcType=${column.javaType}}
                    </if>
                </#list>
            </#if>
        </where>
    </select>

    <select id="select${modelNameUpperCamel}ById" parameterType="${pkColumn.javaType}" resultMap="BaseResultMap">
        <include refid="baseSelectVo"/>
        where
        <#list allColumn as column>
            <#if column.isPk=='1'>
                ${column.columnName} = ${r'#'}{${column.smallColumnName}}
            </#if>
        </#list>
    </select>

    <insert id="insert${modelNameUpperCamel}" parameterType="${modelNameUpperCamel}" <#if pkColumn.isIncrement=='1'> useGeneratedKeys="true" keyProperty="${pkColumn.smallColumnName}"</#if>>
        insert into ${tableName}
        <trim prefix="(" suffix=")" suffixOverrides=",">
            <#if pkColumn.isIncrement=='1'>
                <#list allColumn as column>
                    <#if column.columnName!=pkColumn.columnName>
                        <if test="${column.smallColumnName} != null <#if column.javaType == 'String'> and ${column.smallColumnName} != ''</#if>">${column.columnName},</if>
                    </#if>
                </#list>
            <#else>
                <#list allColumn as column>
                    <if test="${column.smallColumnName} != null <#if column.javaType == 'String'> and ${column.smallColumnName} != ''</#if>">${column.columnName},</if>
                </#list>
            </#if>
        </trim>
        <trim prefix="values (" suffix=")" suffixOverrides=",">
            <#if pkColumn.isIncrement=='1'>
                <#list allColumn as column>
                    <#if column.columnName!=pkColumn.columnName>
                        <if test="${column.smallColumnName} != null <#if column.javaType == 'String'> and ${column.smallColumnName} != ''</#if>">${r'#'}{${column.smallColumnName}},</if>
                    </#if>
                </#list>
            <#else>
                <#list allColumn as column>
                    <if test="${column.smallColumnName} != null <#if column.javaType == 'String'> and ${column.smallColumnName} != ''</#if>">${r'#'}{${column.columnName}},</if>
                </#list>
            </#if>
        </trim>
    </insert>

    <update id="update${modelNameUpperCamel}" parameterType="${modelNameUpperCamel}">
        update ${tableName}
        <trim prefix="SET" suffixOverrides=",">
            <#list allColumn as column>
            <#if column.isPk !='1'>
            <if test="${column.smallColumnName} != null <#if column.javaType == 'String' > and ${column.smallColumnName} != ''</#if>">${column.columnName} = ${r'#'}{${column.smallColumnName}},</if>
            </#if>
            </#list>
        </trim>
        where ${pkColumn.columnName} = ${r'#'}{${pkColumn.smallColumnName}}
    </update>

    <delete id="delete${modelNameUpperCamel}ById" parameterType="${pkColumn.javaType}">
        delete FROM ${tableName} where ${pkColumn.columnName} = ${r'#'}{${pkColumn.smallColumnName}}
    </delete>
    <!--逻辑删除-->
    <delete id="delete${modelNameUpperCamel}ById2" parameterType="${pkColumn.javaType}">
        update ${tableName} set del_flag='2' where ${pkColumn.columnName} = ${r'#'}{${pkColumn.smallColumnName}}
    </delete>

    <delete id="delete${modelNameUpperCamel}ByIds" parameterType="${pkColumn.javaType}">
        delete FROM ${tableName} where ${pkColumn.columnName} in
        <foreach item="${pkColumn.smallColumnName}" collection="array" open="(" separator="," close=")">
             ${r'#'}{${pkColumn.smallColumnName}}
        </foreach>
    </delete>
    <!--逻辑批量删除-->
    <delete id="delete${modelNameUpperCamel}ByIds2" parameterType="${pkColumn.javaType}">
        update ${tableName} set del_flag='2' where ${pkColumn.columnName} in
        <foreach item="${pkColumn.smallColumnName}" collection="array" open="(" separator="," close=")">
            ${r'#'}{${pkColumn.smallColumnName}}
        </foreach>
    </delete>
</mapper>
