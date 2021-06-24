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
 * @date 2021/4/6 15:51
 **/

@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "sys_classes")
public class Classes {

    @Id
    private Integer id;

    @Column(name = "classID")
    private String classID;

    @Column(name = "className")
    private String className;

    @Column(name = "depID")
    private String depID;

    @Column(name = "major")
    private String major;

    @Column(name = "grade")
    private String grade;

//    classID,className,depID,major,grade
}
