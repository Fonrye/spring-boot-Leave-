package cn.fon.mapper;

import cn.fon.base.mapper.MyMapper;
import cn.fon.bean.Student;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author Fonrye
 * @version 1.0
 * @creat by IntelliJ IDEA
 * @date 2021/4/2 15:04
 **/
@Repository
public interface StudentMapper extends MyMapper<Student> {
    @Select("SELECT * FROM sys_student WHERE stuName LIKE '%${stuName}%' AND stuID LIKE '%${stuID}%' AND classID LIKE '%${classID}%' LIMIT ${offset}, ${limit}")
    List<Student> selectByPage(Integer offset, Integer limit, String stuName, String stuID, String classID);

}
