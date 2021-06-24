package cn.fon.web;

import cn.fon.bean.Course;
import cn.fon.bean.User;
import cn.fon.dto.ResponseResult;
import cn.fon.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/course")
public class CourseController {

    @Autowired
    private CourseService courseService;

    @PostMapping("/insert")
    public ResponseResult insert(@RequestBody Course course) {
        return courseService.insert(course);
    }

    @PostMapping("/update")
    public ResponseResult update(@RequestBody Course course) {
        return courseService.updateByPrimaryKey(course);
    }

    @PostMapping("/delete")
    public ResponseResult delete(@RequestParam("id") Integer id) {
        return courseService.deleteByPrimaryKey(id);
    }

    @PostMapping("/deleteByIds")
    public ResponseResult deleteByIds(@RequestParam("ids") String ids) {
        return courseService.deleteByIds(ids);
    }

    @GetMapping("/get/{id}")
    public ResponseResult get(@PathVariable("id") Integer id) {
        return courseService.selectByPrimaryKey(id);
    }

    @GetMapping("/list")
    public String getData(@RequestParam(value = "offset", defaultValue = "0") Integer offset,
                          @RequestParam(value = "limit",defaultValue = "10") Integer limit,
                          @RequestParam(value = "name", required = false) String hour,
                          @RequestParam(value = "telephone", required = false) String year){
        return courseService.selectByPage(offset, limit, hour, year);
    }
}