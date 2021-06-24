package cn.fon.service.impl;

import cn.fon.bean.Classes;
import cn.fon.dto.BootstrapTable;
import cn.fon.dto.ResponseResult;
import cn.fon.mapper.ClassesMapper;
import cn.fon.service.ClassesService;
import com.alibaba.fastjson.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

/**
 * @author Fonrye
 * @version 1.0
 * @creat by IntelliJ IDEA
 * @date 2021/4/8 15:19
 **/

@Service
public class ClassesServiceImpl implements ClassesService {

    @Autowired
    private ClassesMapper classesMapper;

    @Override
    public ResponseResult insert(Classes classes) {
        int count = classesMapper.insert(classes);
        if (count == 0) {
            return new ResponseResult(0, "新增失败");
        }
        return new ResponseResult(1, "新增成功");
    }

    @Override
    public ResponseResult updateByPrimaryKey(Classes classes) {
        int count = classesMapper.updateByPrimaryKey(classes);
        if (count == 0) {
            return new ResponseResult(0, "更新失败");
        }
        return new ResponseResult(1, "更新成功");
    }

    @Override
    public ResponseResult deleteByPrimaryKey(Integer id) {
        int count = classesMapper.deleteByPrimaryKey(id);
        if (count == 0) {
            return new ResponseResult(0, "该数据已删除");
        }
        return new ResponseResult(1, "删除成功");
    }

    @Override
    public ResponseResult deleteByIds(String id) {
        int count = classesMapper.deleteByIds(id);
        if (count == 0) {
            return new ResponseResult(0, "没有找到该数据");
        }
        return new ResponseResult(1, "批量删除成功");
    }

    @Override
    public ResponseResult selectByPrimaryKey(Integer id) {
        Classes classes = classesMapper.selectByPrimaryKey(id);
        if (classes == null) {
            return new ResponseResult(0, "数据为空");
        }
        return new ResponseResult(1, "查询成功", classes);
    }

    @Override
    public String selectByPage(Integer offset, Integer limit, String className, String major, String grade) {
        if (!StringUtils.isEmpty(className) || !StringUtils.isEmpty(major) || !StringUtils.isEmpty(grade)) {
            // 如果有条件，则将分页设置从0开始，避免从非第一页关键字查询发起请求
            offset = 0;
            limit = 10;
        }
        return JSON.toJSONString(new BootstrapTable(classesMapper.selectCount(null), classesMapper.selectByPage(offset, limit, className, major, grade)));

    }
}
