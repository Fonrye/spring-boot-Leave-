package cn.fon.service.impl;

import cn.fon.bean.Course;
import cn.fon.bean.Leave;
import cn.fon.dto.BootstrapTable;
import cn.fon.dto.ResponseResult;
import cn.fon.mapper.LeaveMapper;
import cn.fon.service.LeaveService;
import com.alibaba.fastjson.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

/**
 * @author Fonrye
 * @version 1.0
 * @creat by IntelliJ IDEA
 * @date 2021/4/13 14:58
 **/

@Service
public class LeaveServiceImpl implements LeaveService {

    @Autowired
    private LeaveMapper leaveMapper;

    @Override
    public ResponseResult insert(Leave leave) {
        int count = leaveMapper.insert(leave);
        if (count == 0) {
            return new ResponseResult(0, "新增失败");
        }
        return new ResponseResult(1, "新增成功");
    }

    @Override
    public ResponseResult updateByPrimaryKey(Leave leave) {
        int count = leaveMapper.updateByPrimaryKey(leave);
        if (count == 0) {
            return new ResponseResult(0, "更新失败");
        }
        return new ResponseResult(1, "更新成功");
    }

    @Override
    public String selectByPage(Integer offset, Integer limit) {
        System.out.println("测试:进入到请假单查询方法");
        return JSON.toJSONString(new BootstrapTable(leaveMapper.selectCount(null), leaveMapper.selectByPage(offset, limit)));
    }

    @Override
    public ResponseResult selectByPrimaryKey(Integer id) {
        Leave leave = leaveMapper.selectByPrimaryKey(id);
        if (leave == null) {
            return new ResponseResult(0, "数据为空");
        }
        return new ResponseResult(1, "查询成功", leave);
    }
}
