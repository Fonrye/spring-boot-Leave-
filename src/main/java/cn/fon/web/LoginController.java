package cn.fon.web;

import cn.fon.bean.Account;
import cn.fon.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/")
public class LoginController {
    @Autowired
    private LoginService loginService;

    //登陆
    @PostMapping("/login")
    public String login(@RequestParam String admin, @RequestParam String pwd, @RequestParam String role) {
        Account param = new Account();
        param.setAdmin(admin);
        param.setPwd(pwd);
        param.setRole(role);
        Account account = loginService.login(param);
        if (account.getRole().equals("1")) {
            System.out.println("1页面跳转进去了");
            return "/stuleave";//1返回学生
        }
        if (account.getRole().equals("2")) {
            System.out.println("2页面跳转进去了");
            return "/index";//2返回管理员

        }
        if (account.getRole().equals("3")) {
            System.out.println("3页面跳转进去了");
            return "/student";//3返回辅导员
        }
        System.out.println("页面跳转进去了");
        return null;
    }

}