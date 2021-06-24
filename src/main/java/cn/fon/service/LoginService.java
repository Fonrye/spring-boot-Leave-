package cn.fon.service;

import cn.fon.bean.Account;
import org.apache.ibatis.annotations.Results;

import javax.xml.transform.Result;


public interface LoginService {
     Account login(Account account);
}