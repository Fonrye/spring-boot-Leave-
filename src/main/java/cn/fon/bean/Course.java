package cn.fon.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "sys_course")
public class Course {

    @Id
    private Integer id;

    @Column(name = "courseName")
    private String courseName;

    @Column(name = "courseID")
    private String courseID;

    @Column(name = "classID")
    private String classID;

    @Column(name = "year")
    private String year;

    @Column(name = "term")
    private String term;

    @Column(name = "hour")
    private String hour;
}