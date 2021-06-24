package cn.fon.web;

import cn.fon.bean.Leave;
import cn.fon.service.LeaveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
public class SiteController {

    @Autowired
    LeaveService leaveService;

    @GetMapping("/")
    public String login() {
        return "login";
    }

    @GetMapping("/error")
    public String error() {
        return "error";
    }

    @GetMapping("/index")
    public String index() {
        return "index";
    }

    @GetMapping("/success")
    public String success() {
        return "index";
    }

//    @GetMapping("/login")
//    public String login() {
//        return "login";
//    }

    @GetMapping("/student")
    public String student() {
        return "student";
    }

    @GetMapping("/classes")
    public String classes() {
        return "classes";
    }

    @GetMapping("/department")
    public String department() {
        return "department";
    }

    @GetMapping("/course")
    public String course() {
        return "course";
    }

    @GetMapping("/leave")
    public String leave() {
        return "leave";
    }

    @GetMapping("/stuleave")
    public String stuleave() {
        return "stuleave";
    }



}
