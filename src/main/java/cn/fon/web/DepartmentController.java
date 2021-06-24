package cn.fon.web;

import cn.fon.bean.Department;
import cn.fon.dto.ResponseResult;
import cn.fon.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/department")
public class DepartmentController {

    @Autowired
    private DepartmentService departmentService;

    @PostMapping("/insert")
    public ResponseResult insert(@RequestBody Department department) {
        return departmentService.insert(department);
    }

    @PostMapping("/update")
    public ResponseResult update(@RequestBody Department department) {
        return departmentService.updateByPrimaryKey(department);
    }

    @PostMapping("/delete")
    public ResponseResult delete(@RequestParam("id") Integer id) {
        return departmentService.deleteByPrimaryKey(id);
    }

    @PostMapping("/deleteByIds")
    public ResponseResult deleteByIds(@RequestParam("ids") String ids) {
        return departmentService.deleteByIds(ids);
    }

    @GetMapping("/get/{id}")
    public ResponseResult get(@PathVariable("id") Integer id) {
        return departmentService.selectByPrimaryKey(id);
    }

    @GetMapping("/list")
    public String getData(@RequestParam(value = "offset", defaultValue = "0") Integer offset,
                          @RequestParam(value = "limit", defaultValue = "10") Integer limit,
                          @RequestParam(value = "depID", required = false) String depID) {
        return departmentService.selectByPage(offset, limit, depID);
    }
}