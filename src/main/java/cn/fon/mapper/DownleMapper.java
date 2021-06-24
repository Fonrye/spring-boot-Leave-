package cn.fon.mapper;

import cn.fon.bean.Leave;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author Fonrye
 * @version 1.0
 * @creat by IntelliJ IDEA
 * @date 2021/4/22 17:04
 * 用于表格导出
 **/
@Repository
public interface  DownleMapper {
    @Select("SELECT * FROM sys_leave")
    List<Leave> findAll();
}
