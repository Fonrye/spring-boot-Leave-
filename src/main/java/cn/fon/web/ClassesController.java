package cn.fon.web;

import cn.fon.bean.Classes;
import cn.fon.dto.ResponseResult;
import cn.fon.service.ClassesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * @author Fonrye
 * @version 1.0
 * @creat by IntelliJ IDEA
 * @date 2021/4/8 15:26
 **/
@RestController
@RequestMapping("/classes")
public class ClassesController {
    @Autowired
    private ClassesService classesService;

    @PostMapping("/insert")
    public ResponseResult insert(@RequestBody Classes classes) {
        return classesService.insert(classes);
    }

    @PostMapping("/update")
    public ResponseResult update(@RequestBody Classes classes) {
        return classesService.updateByPrimaryKey(classes);
    }

    @PostMapping("/delete")
    public ResponseResult delete(@RequestParam("id") Integer id) {
        return classesService.deleteByPrimaryKey(id);
    }

    @PostMapping("/deleteByIds")
    public ResponseResult deleteByIds(@RequestParam("ids") String ids) {
        return classesService.deleteByIds(ids);
    }

    @GetMapping("/get/{id}")
    public ResponseResult get(@PathVariable("id") Integer id) {
        return classesService.selectByPrimaryKey(id);
    }

    @GetMapping("/list")
    public String getData(@RequestParam(value = "offset", defaultValue = "0") Integer offset,
                          @RequestParam(value = "limit", defaultValue = "10") Integer limit,
                          @RequestParam(value = "className", required = false) String className,
                          @RequestParam(value = "major", required = false) String major,
                          @RequestParam(value = "grade", required = false) String grade) {
        return classesService.selectByPage(offset, limit, className, major, grade);
    }
}
