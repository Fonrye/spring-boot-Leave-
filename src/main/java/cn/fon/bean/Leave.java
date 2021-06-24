package cn.fon.bean;

import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.metadata.BaseRowModel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.Value;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "sys_leave")
public class Leave {

    @ExcelProperty(value = "编号",index = 0)
    @Id
    private Integer id;

    @ExcelProperty(value = "请假编号",index = 1)
    @Column(name = "leaveID")
    private String leaveID;

    @ExcelProperty(value = "课程ID",index = 2)
    @Column(name = "courseID")
    private String courseID;

    @ExcelProperty(value = "原因",index = 3)
    @Column(name = "reason")
    private String reason;

    @ExcelProperty(value = "请假天数",index = 4)
    @Column(name = "daynum")
    private String daynum;

    @ExcelProperty(value = "学号",index = 5)
    @Column(name = "stuNo")
    private String stuNo;

    @ExcelProperty(value = "申请时间",index = 6)
    @Column(name = "applytime")
    private String applytime;

    @ExcelProperty(value = "假条状态",index = 7)
    @Column(name = "status")
    private String status; //0:未审核，1：同意，2 不同意

    @ExcelProperty(value = "批准时间",index = 8)
    @Column(name = "audittime")
    private String audittime;
}