package cn.fon.mapper;

import cn.fon.base.mapper.MyMapper;
import cn.fon.bean.Classes;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author Fonrye
 * @version 1.0
 * @creat by IntelliJ IDEA
 * @date 2021/4/8 15:12
 **/
@Repository
public interface ClassesMapper extends MyMapper<Classes> {

    @Select("SELECT * FROM sys_classes WHERE className LIKE '%${className}%' AND major LIKE '%${major}%' AND grade LIKE '%${grade}%' LIMIT ${offset}, ${limit}")

    List<Classes> selectByPage(Integer offset, Integer limit, String className, String major, String grade);

}

