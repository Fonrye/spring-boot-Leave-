package cn.fon.service.impl;

import cn.fon.bean.Student;
import cn.fon.bean.User;
import cn.fon.dto.BootstrapTable;
import cn.fon.dto.ResponseResult;
import cn.fon.mapper.StudentMapper;
import cn.fon.mapper.UserMapper;
import cn.fon.service.StudentService;
import cn.fon.service.UserService;
import com.alibaba.fastjson.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

@Service
public class StudentServiceImpl implements StudentService {

    @Autowired
    private StudentMapper studentMapper;
    //            (required = false)

    @Override
    public ResponseResult insert(Student student){
        int count = studentMapper.insert(student);
        if (count == 0) {
            return new ResponseResult(0, "新增失败");
        }
        return new ResponseResult(1, "新增成功");
    }


    @Override
    public ResponseResult updateByPrimaryKey(Student student) {
        int count = studentMapper.updateByPrimaryKey(student);
        if (count == 0) {
            return new ResponseResult(0, "更新失败");
        }
        return new ResponseResult(1, "更新成功");
    }

    @Override
    public ResponseResult deleteByPrimaryKey(Integer id) {
        int count = studentMapper.deleteByPrimaryKey(id);
        if (count == 0) {
            return new ResponseResult(0, "该数据已删除");
        }
        return new ResponseResult(1, "删除成功");
    }

    @Override
    public ResponseResult deleteByIds(String id){
        int count = studentMapper.deleteByIds(id);
        if (count == 0) {
            return new ResponseResult(0, "没有找到该数据");
        }
        return new ResponseResult(1, "批量删除成功");
    }

    @Override
    public ResponseResult selectByPrimaryKey(Integer id){
        Student student = studentMapper.selectByPrimaryKey(id);
        if (student == null) {
            return new ResponseResult(0, "数据为空");
        }
        return new ResponseResult(1, "查询成功", student);
    }


    @Override
    public String selectByPage(Integer offset, Integer limit, String stuName, String stuID, String classID) {

            if (!StringUtils.isEmpty(stuName) || !StringUtils.isEmpty(stuID) || !StringUtils.isEmpty(classID)) {
                // 如果有条件，则将分页设置从0开始，避免从非第一页关键字查询发起请求
                offset = 0;
                limit = 10;
            }
            System.out.println("测试:进入到学生查询方法");
            return JSON.toJSONString(new BootstrapTable(studentMapper.selectCount(null), studentMapper.selectByPage(offset, limit, stuName, stuID, classID)));

        }
}
