package cn.fon.mapper;

import cn.fon.base.mapper.MyMapper;
import cn.fon.bean.Leave;
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
public interface LeaveMapper extends MyMapper<Leave> {

    @Select("SELECT * FROM sys_leave LIMIT ${offset}, ${limit}")
    List<Leave> selectByPage(Integer offset, Integer limit);

}
