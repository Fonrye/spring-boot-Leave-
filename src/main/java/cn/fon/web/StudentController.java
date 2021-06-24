package cn.fon.web;

import cn.fon.bean.Student;
import cn.fon.dto.ResponseResult;
import cn.fon.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.xml.ws.Service;

/**
 *
 * @author Fonrye
 * @version 1.0
 * @creat by IntelliJ IDEA
 * @date 2021/4/2 16:04
 *
 **/
@RestController
@RequestMapping("/student")
public class StudentController {
    @Autowired
    private StudentService studentService;

    @PostMapping("/insert")
    public ResponseResult insert(@RequestBody Student student) {
        return studentService.insert(student);
    }

    @PostMapping("/update")
    public ResponseResult update(@RequestBody Student student) {
        return studentService.updateByPrimaryKey(student);
    }

    @PostMapping("/delete")
    public ResponseResult delete(@RequestParam("id") Integer id) {
        return studentService.deleteByPrimaryKey(id);
    }

    @PostMapping("/deleteByIds")
    public ResponseResult deleteByIds(@RequestParam("ids") String ids) {
        return studentService.deleteByIds(ids);
    }

    @GetMapping("/get/{id}")
    public ResponseResult get(@PathVariable("id") Integer id) {
        return studentService.selectByPrimaryKey(id);
    }

    @GetMapping("/list")
    public String getData(@RequestParam(value = "offset", defaultValue = "0") Integer offset,
                          @RequestParam(value = "limit",defaultValue = "10") Integer limit,
                          @RequestParam(value = "stuName", required = false) String stuName,
                          @RequestParam(value = "stuID", required = false) String stuID,
                          @RequestParam(value = "classID", required = false) String classID) {
        return studentService.selectByPage(offset, limit, stuName, stuID, classID);
    }

}
