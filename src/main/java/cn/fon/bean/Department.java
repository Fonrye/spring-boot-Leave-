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
 * @date 2021/4/8 16:35
 **/

@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "sys_department")
public class Department {

    @Id
    private Integer id;

    @Column(name = "depID")
    private String depID;

    @Column(name = "depName")
    private String depName;

}
