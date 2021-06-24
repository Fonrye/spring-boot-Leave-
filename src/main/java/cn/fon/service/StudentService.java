package cn.fon.service;

import cn.fon.bean.Student;
import cn.fon.dto.ResponseResult;

/**
 * @author Fonrye
 * @version 1.0
 * @creat by IntelliJ IDEA
 * @date 2021/4/2 15:36
 **/

public interface StudentService {
    ResponseResult insert(Student student);

    ResponseResult updateByPrimaryKey(Student student);

    ResponseResult deleteByPrimaryKey(Integer id);

    ResponseResult deleteByIds(String id);

    ResponseResult selectByPrimaryKey(Integer id);

    String selectByPage(Integer offset, Integer limit, String stuName, String stuID, String classID);
}