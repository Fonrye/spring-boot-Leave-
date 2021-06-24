package cn.fon.service;

import cn.fon.bean.Classes;
import cn.fon.dto.ResponseResult;

/**
 * @author Fonrye
 * @version 1.0
 * @creat by IntelliJ IDEA
 * @date 2021/4/8 15:18
 **/
public interface ClassesService {

    ResponseResult insert(Classes classes);

    ResponseResult updateByPrimaryKey(Classes classes);

    ResponseResult deleteByPrimaryKey(Integer id);

    ResponseResult deleteByIds(String id);

    ResponseResult selectByPrimaryKey(Integer id);

    String selectByPage(Integer offset, Integer limit, String className, String major, String grade);

}
