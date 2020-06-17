package com.example.mybatis.model;



import java.util.Date;

/**

 * StudentHomework 数据层，与数据的映射关系
 * 学生提交的作业

 */

public class StudentHomework {
    private Long id;
    private Long studentId;
    private Long homeworkId;
    private Long score;
    private String homeworkTitle;
    private String homeworkContent;
    private Date createTime;
    private Date updateTime;

    public Long getId() { return id; }

    public void setId(Long id) { this.id = id; }

    public Long getStudentId() { return studentId; }

    public void setStudentId(Long studentId) {
        this.studentId = studentId;
    }

    public Long getHomeworkId() {
        return homeworkId;
    }

    public void setHomeworkId(Long homeworkId) {
        this.homeworkId = homeworkId;
    }

    public String getHomeworkTitle() {
        return homeworkTitle;
    }

    public void setHomeworkTitle(String homeworkTitle) {
        this.homeworkTitle = homeworkTitle;
    }

    public String getHomeworkContent() {
        return homeworkContent;
    }

    public void setHomeworkContent(String homeworkContent) {
        this.homeworkContent = homeworkContent;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Long getScore() {
        return score;
    }

    public void setScore(Long score) {
        this.score = score;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

}