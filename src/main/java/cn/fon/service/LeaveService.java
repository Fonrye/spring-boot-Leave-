package cn.fon.service;

import cn.fon.bean.Leave;
import cn.fon.bean.Student;
import cn.fon.dto.ResponseResult;

/**
 * @author Fonrye
 * @version 1.0
 * @creat by IntelliJ IDEA
 * @date 2021/4/13 15:36
 **/

public interface LeaveService {
    ResponseResult insert(Leave leave);

    ResponseResult updateByPrimaryKey(Leave leave);

    String selectByPage(Integer offset, Integer limit);

    ResponseResult selectByPrimaryKey(Integer id);


}