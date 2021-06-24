package cn.fon.mapper;

import cn.fon.base.mapper.MyMapper;
import cn.fon.bean.User;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface UserMapper extends MyMapper<User> {

    @Select("SELECT * FROM sys_instructor WHERE name LIKE '%${name}%' AND telephone LIKE '%${telephone}%' AND address LIKE '%${address}%' LIMIT ${offset}, ${limit}")
    List<User> selectByPage(Integer offset, Integer limit, String name, String telephone, String address);
}
