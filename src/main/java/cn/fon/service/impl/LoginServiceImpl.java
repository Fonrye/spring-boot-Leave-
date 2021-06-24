package cn.fon.service.impl;

import cn.fon.bean.Account;
import cn.fon.mapper.LoginMapper;
import cn.fon.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author Fonrye
 * @version 1.0
 * @creat by IntelliJ IDEA
 * @date 2021/4/18 16:47
 * 登陆
 **/

@Service
public class LoginServiceImpl implements LoginService {
    @Autowired
    private LoginMapper loginMapper;

    public Account login(Account account) {
        String admin = account.getAdmin();
        String pwd = account.getPwd();
        String role = account.getRole();
        Account account1 = loginMapper.login(admin);
        if (account1 == null) {
            return null;
        } else {
            if (account1.getPwd().equals(pwd)) {
                System.out.println("测测试，成功登陆1");
                return account1;
            } else {
                return null;
            }
        }
    }


}
