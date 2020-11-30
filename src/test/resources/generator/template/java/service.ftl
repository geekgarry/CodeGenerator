package ${basePackage}.project.service;
import ${basePackage}.project.model.${modelNameUpperCamel};
//import ${basePackage}.core.Service;
import java.util.List;


/**
 * ${title} ${functionName}
 * Created by ${author} on ${date}.
 */
public interface ${modelNameUpperCamel}Service {

    /**
    * 增加
    * @param ${modelNameLowerCamel}
    * @return ${functionName}
    */
    public Integer insert${modelNameUpperCamel}(${modelNameUpperCamel} ${modelNameLowerCamel});

    /**
    * 删除
    * @param ${pkColumn.smallColumnName}
    */
    public Integer delete${modelNameUpperCamel}ById(${pkColumn.javaType} ${pkColumn.smallColumnName});

    /**
    * 批量删除
    */
    public Integer delete${modelNameUpperCamel}ByIds(${pkColumn.javaType}[] ${pkColumn.smallColumnName}s);

    /**
    * 修改
    * @param ${modelNameLowerCamel}
    */
    public Integer update${modelNameUpperCamel}(${modelNameUpperCamel} ${modelNameLowerCamel});

    /**
    * 查询全部
    */
    public List<${modelNameUpperCamel}> query${modelNameUpperCamel}List(${modelNameUpperCamel} ${modelNameLowerCamel});

    /**
    * 根据Id查询单条数据
    */
    public ${modelNameUpperCamel} select${modelNameUpperCamel}ById(${pkColumn.javaType} ${pkColumn.smallColumnName});
}
