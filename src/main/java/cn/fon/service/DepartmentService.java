package cn.fon.service;

import cn.fon.bean.Department;
import cn.fon.bean.User;
import cn.fon.dto.ResponseResult;
import org.springframework.stereotype.Service;


public interface DepartmentService {

    ResponseResult insert(Department department);

    ResponseResult updateByPrimaryKey(Department department);

    ResponseResult deleteByPrimaryKey(Integer id);

    ResponseResult deleteByIds(String id);

    ResponseResult selectByPrimaryKey(Integer id);

    String selectByPage(Integer offset, Integer limit,String depID);
}