package ${basePackage}.project.dao;
import ${basePackage}.project.model.${modelNameUpperCamel};
import java.util.List;

/**
 * ${title} ${functionName}
 * Created by ${author} on ${date}.
 */

public interface ${modelNameUpperCamel}Mapper {

    /**
    * 增加
    * @param ${modelNameLowerCamel}
    * @return ${functionName}
    */
    Integer insert${modelNameUpperCamel}(${modelNameUpperCamel} ${modelNameLowerCamel});

    /**
    * 删除
    * @param ${pkColumn.smallColumnName}
    */
    Integer delete${modelNameUpperCamel}ById(${pkColumn.javaType} ${pkColumn.smallColumnName});

    /**
    * 批量删除
    */
    Integer delete${modelNameUpperCamel}ByIds(${pkColumn.javaType}[] ${pkColumn.smallColumnName}s);

    /**
    * 修改
    * @param ${modelNameLowerCamel}
    */
    Integer update${modelNameUpperCamel}(${modelNameUpperCamel} ${modelNameLowerCamel});

    /**
    * 查询全部
    */
    List<${modelNameUpperCamel}> select${modelNameUpperCamel}List(${modelNameUpperCamel} ${modelNameLowerCamel});

    /**
    * 根据Id查询单条数据
    */
    ${modelNameUpperCamel} select${modelNameUpperCamel}ById(${pkColumn.javaType} ${pkColumn.smallColumnName});
}
