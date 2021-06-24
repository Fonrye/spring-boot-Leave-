package cn.fon.mapper;

import cn.fon.bean.Account;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

/**
 * @author Fonrye
 * @version 1.0
 * @creat by IntelliJ IDEA
 * @date 2021/4/18 16:27
 **/

@Repository
public interface LoginMapper {

    @Select(value = "SELECT * FROM sys_account WHERE admin=#{admin}")
    Account login(@Param("admin")String admin);


}
