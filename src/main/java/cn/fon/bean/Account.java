package cn.fon.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 登陆验证
 * @author Fonrye
 * @version 1.0
 * @creat by IntelliJ IDEA
 * @date 2021/4/8 16:35
 **/

@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "sys_account")
public class Account {

    @Id
    private Integer id;

    @Column(name = "admin")
    private String admin;

    @Column(name = "pwd")
    private String pwd;

    @Column(name = "role")
    private String role;



}
