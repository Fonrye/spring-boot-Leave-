package cn.fon.mapper;

import cn.fon.base.mapper.MyMapper;
import cn.fon.bean.Department;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author Fonrye
 * @version 1.0
 * @creat by IntelliJ IDEA
 * @date 2021/4/8 16:39
 **/
@Repository
public interface DepartmentMapper extends MyMapper<Department> {

    @Select("SELECT * FROM sys_department WHERE depID LIKE '%${depID}%' LIMIT ${offset}, ${limit}")
    List<Department> selectByPage(Integer offset, Integer limit,String depID);


}
