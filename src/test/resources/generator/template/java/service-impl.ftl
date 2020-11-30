package ${basePackage}.project.service.impl;

import ${basePackage}.project.dao.${modelNameUpperCamel}Mapper;
import ${basePackage}.project.model.${modelNameUpperCamel};
import ${basePackage}.project.service.${modelNameUpperCamel}Service;
//import ${basePackage}.core.AbstractService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;

import javax.annotation.Resource;


/**
 * Created by ${author} on ${date}.
 */
@Service
@Transactional
public class ${modelNameUpperCamel}ServiceImpl implements ${modelNameUpperCamel}Service {
    @Resource
    private ${modelNameUpperCamel}Mapper ${modelNameLowerCamel}Mapper;
    /**
    * 增加
    * @param ${modelNameLowerCamel}
    * @return ${functionName}
    */
    public Integer insert${modelNameUpperCamel}(${modelNameUpperCamel} ${modelNameLowerCamel}){
        return ${modelNameLowerCamel}Mapper.insert${modelNameUpperCamel}(${modelNameLowerCamel});
    }

    /**
    * 删除
    * @param ${pkColumn.smallColumnName}
    */
    public Integer delete${modelNameUpperCamel}ById(${pkColumn.javaType} ${pkColumn.smallColumnName}){
        return ${modelNameLowerCamel}Mapper.delete${modelNameUpperCamel}ById(${pkColumn.smallColumnName});
    }

    /**
    * 批量删除
    */
    public Integer delete${modelNameUpperCamel}ByIds(${pkColumn.javaType}[] ${pkColumn.smallColumnName}s){
        return ${modelNameLowerCamel}Mapper.delete${modelNameUpperCamel}ByIds(${pkColumn.smallColumnName}s);
    }

    /**
    * 修改
    * @param ${modelNameLowerCamel}
    */
    public Integer update${modelNameUpperCamel}(${modelNameUpperCamel} ${modelNameLowerCamel}){
        return ${modelNameLowerCamel}Mapper.update${modelNameUpperCamel}(${modelNameLowerCamel});
    }

    /**
    * 查询全部
    */
    public List<${modelNameUpperCamel}> query${modelNameUpperCamel}List(${modelNameUpperCamel} ${modelNameLowerCamel}){
        return ${modelNameLowerCamel}Mapper.query${modelNameUpperCamel}List(${modelNameLowerCamel});
    }

    /**
    * 根据Id查询单条数据
    */
    public ${modelNameUpperCamel} select${modelNameUpperCamel}ById(${pkColumn.javaType} ${pkColumn.smallColumnName}){
        return ${modelNameLowerCamel}Mapper.select${modelNameUpperCamel}ById(${pkColumn.smallColumnName});
    }
}
