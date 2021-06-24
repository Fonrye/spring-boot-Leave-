package cn.fon.service.impl;

import cn.fon.bean.Leave;
import cn.fon.mapper.DownleMapper;
import cn.fon.mapper.LeaveMapper;
import cn.fon.service.DownleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Fonrye
 * @version 1.0
 * @creat by IntelliJ IDEA
 * @date 2021/4/22 17:03
 **/
@Service
public class DownleServiceImpl implements DownleService {
    @Autowired
    DownleMapper downleMapper;
    @Override
    public List<Leave> findAll() {
        return downleMapper.findAll();
    }
}
