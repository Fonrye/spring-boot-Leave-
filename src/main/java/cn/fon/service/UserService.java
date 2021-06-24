package cn.fon.service;

import cn.fon.dto.ResponseResult;
import cn.fon.bean.User;

public interface UserService {

    ResponseResult insert(User user);

    ResponseResult updateByPrimaryKey(User user);

    ResponseResult deleteByPrimaryKey(Integer id);

    ResponseResult deleteByIds(String id);

    ResponseResult selectByPrimaryKey(Integer id);

    String selectByPage(Integer offset, Integer limit, String name, String telephone, String address);
}