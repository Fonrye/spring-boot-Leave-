package cn.fon.mapper;

import cn.fon.base.mapper.MyMapper;
import cn.fon.bean.Course;
import cn.fon.bean.User;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CourseMapper extends MyMapper<Course> {

    @Select("SELECT * FROM sys_course WHERE hour LIKE '%${hour}%' AND year LIKE '%${year}%' LIMIT ${offset}, ${limit}")
    List<Course> selectByPage(Integer offset, Integer limit, String hour, String year);
}
