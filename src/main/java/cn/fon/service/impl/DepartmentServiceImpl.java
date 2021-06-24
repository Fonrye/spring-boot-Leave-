package cn.fon.service.impl;

import cn.fon.bean.Department;
import cn.fon.dto.BootstrapTable;
import cn.fon.dto.ResponseResult;
import cn.fon.mapper.DepartmentMapper;
import cn.fon.service.DepartmentService;
import com.alibaba.fastjson.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

@Service
public class DepartmentServiceImpl implements DepartmentService {

    @Autowired
    private DepartmentMapper departmentMapper;

    @Override
    public ResponseResult insert(Department department) {
        int count = departmentMapper.insert(department);
        if (count == 0) {
            return new ResponseResult(0, "新增失败");
        }
        return new ResponseResult(1, "新增成功");
    }

    @Override
    public ResponseResult updateByPrimaryKey(Department department) {
        int count = departmentMapper.updateByPrimaryKey(department);
        if (count == 0) {
            return new ResponseResult(0, "更新失败");
        }
        return new ResponseResult(1, "更新成功");
    }

    @Override
    public ResponseResult deleteByPrimaryKey(Integer id) {
        int count = departmentMapper.deleteByPrimaryKey(id);
        if (count == 0) {
            return new ResponseResult(0, "该数据已删除");
        }
        return new ResponseResult(1, "删除成功");
    }

    @Override
    public ResponseResult deleteByIds(String id) {
        int count = departmentMapper.deleteByIds(id);
        if (count == 0) {
            return new ResponseResult(0, "没有找到该数据");
        }
        return new ResponseResult(1, "批量删除成功");
    }

    @Override
    public ResponseResult selectByPrimaryKey(Integer id) {
        Department department = departmentMapper.selectByPrimaryKey(id);
        if (department == null) {
            return new ResponseResult(0, "数据为空");
        }
        return new ResponseResult(1, "查询成功", department);
    }

    @Override
    public String selectByPage(Integer offset, Integer limit, String depID) {
        if (!StringUtils.isEmpty(depID)) {
            // 如果有条件，则将分页设置从0开始，避免从非第一页关键字查询发起请求
            offset = 0;
            limit = 10;
        }
        return JSON.toJSONString(new BootstrapTable(departmentMapper.selectCount(null), departmentMapper.selectByPage(offset, limit, depID)));

    }
}