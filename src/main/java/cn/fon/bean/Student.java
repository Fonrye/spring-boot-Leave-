package cn.fon.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author Fonrye
 * @version 1.0
 * @creat by IntelliJ IDEA
 * @date 2021/4/2 14:59
 **/
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "sys_student")
public class Student {

    @Id
    private Integer id;

    @Column(name = "stuID")
    private String stuID;

    @Column(name = "classID")
    private String classID;

    @Column(name = "stuName")
    private String stuName;

    @Column(name = "sex")
    private String sex;

    @Column(name = "address")
    private String address;

    @Column(name = "stuTel")
    private String stuTel;

    @Column(name = "contact")
    private String contact;

    @Column(name = "contactTel")
    private String contactTel;


}
