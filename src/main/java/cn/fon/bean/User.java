package cn.fon.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Id;
import javax.persistence.Table;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "sys_instructor")
public class User {

    @Id
    private Integer id;

    private String name;

    private String depid;

    private String telephone;

    private String address;
}