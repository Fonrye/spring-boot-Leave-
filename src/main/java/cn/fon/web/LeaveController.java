package cn.fon.web;

import cn.fon.bean.Leave;
import cn.fon.dto.ResponseResult;
import cn.fon.service.LeaveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * @author Fonrye
 * @version 1.0
 * @creat by IntelliJ IDEA
 * @date 2021/4/13 15:02
 **/
@RestController
@RequestMapping("/leave")
public class LeaveController {
    @Autowired
    private LeaveService leaveService;

    @PostMapping("/insert")
    public ResponseResult insert(@RequestBody Leave leave) {
        return leaveService.insert(leave);
    }

    @PostMapping("/update")
    public ResponseResult update(@RequestBody Leave leave) {
        return leaveService.updateByPrimaryKey(leave);
    }

    @GetMapping("/list")
    public String getData(@RequestParam(value = "offset", defaultValue = "0") Integer offset,
                          @RequestParam(value = "limit", defaultValue = "10") Integer limit) {
        return leaveService.selectByPage(offset, limit);
    }

    @GetMapping("/get/{id}")
    public ResponseResult get(@PathVariable("id") Integer id) {
        return leaveService.selectByPrimaryKey(id);
    }

}