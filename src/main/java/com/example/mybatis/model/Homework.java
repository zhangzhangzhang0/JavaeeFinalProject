package com.example.mybatis.model;


import java.util.Date;

/**

 * StudentHomework 数据层，与数据的映射关系
 * 老师布置添加的作业

 */

public class Homework {
    private Long id;
    private Long num;
    private String title;
    private String content;
    private Date createTime;
    private Date updateTime;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getNum() {
        return num;
    }

    public void setNum(Long num) {
        this.num = num;
    }

    public String getHomeworkTitle() {
        return title;
    }

    public void setHomeworkTitle(String title) { this.title = title; }

    public String getHomeworkContent() {
        return content;
    }

    public void setHomeworkContent(String content) {
        this.content = content;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
}
