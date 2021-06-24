package cn.fon.service;

import cn.fon.bean.Course;
import cn.fon.bean.User;
import cn.fon.dto.ResponseResult;

public interface CourseService {

    ResponseResult insert(Course course);

    ResponseResult updateByPrimaryKey(Course course);

    ResponseResult deleteByPrimaryKey(Integer id);

    ResponseResult deleteByIds(String id);

    ResponseResult selectByPrimaryKey(Integer id);

    String selectByPage(Integer offset, Integer limit, String hour, String year);
}