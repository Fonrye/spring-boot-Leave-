package cn.fon.service.impl;

import cn.fon.bean.Course;
import cn.fon.dto.BootstrapTable;
import cn.fon.dto.ResponseResult;
import cn.fon.mapper.CourseMapper;
import cn.fon.service.CourseService;
import com.alibaba.fastjson.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

/**
 * @author Fonrye
 * @version 1.0
 * @creat by IntelliJ IDEA
 * @date 2021/4/9 14:57
 **/
@Service
public class CourseServiceImpl implements CourseService {
    @Autowired
    private CourseMapper courseMapper;

    @Override
    public ResponseResult insert(Course course) {
        int count = courseMapper.insert(course);
        if (count == 0) {
            return new ResponseResult(0, "新增失败");
        }
        return new ResponseResult(1, "新增成功");
    }

    @Override
    public ResponseResult updateByPrimaryKey(Course course) {
        int count = courseMapper.updateByPrimaryKey(course);
        if (count == 0) {
            return new ResponseResult(0, "更新失败");
        }
        return new ResponseResult(1, "更新成功");
    }

    @Override
    public ResponseResult deleteByPrimaryKey(Integer id) {
        int count = courseMapper.deleteByPrimaryKey(id);
        if (count == 0) {
            return new ResponseResult(0, "该数据已删除");
        }
        return new ResponseResult(1, "删除成功");
    }

    @Override
    public ResponseResult deleteByIds(String id) {
        int count = courseMapper.deleteByIds(id);
        if (count == 0) {
            return new ResponseResult(0, "没有找到该数据");
        }
        return new ResponseResult(1, "批量删除成功");
    }

    @Override
    public ResponseResult selectByPrimaryKey(Integer id) {
        Course course = courseMapper.selectByPrimaryKey(id);
        if (course == null) {
            return new ResponseResult(0, "数据为空");
        }
        return new ResponseResult(1, "查询成功", course);
    }

    @Override
    public String selectByPage(Integer offset, Integer limit, String hour, String year) {
        if (!StringUtils.isEmpty(hour) || !StringUtils.isEmpty(year)) {
            // 如果有条件，则将分页设置从0开始，避免从非第一页关键字查询发起请求
            offset = 0;
            limit = 10;
        }
        return JSON.toJSONString(new BootstrapTable(courseMapper.selectCount(null), courseMapper.selectByPage(offset, limit,hour, year)));

    }
}
