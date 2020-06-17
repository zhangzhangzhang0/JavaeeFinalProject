package com.example.mybatis.service;

import com.example.mybatis.model.Student;
import com.example.mybatis.model.StudentHomework;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

public interface AllTService {
    boolean login(HttpServletRequest req);
    void checkHW(HttpServletRequest req, HttpServletResponse resp);
    void checkHW2(HttpServletRequest req, HttpServletResponse resp);
    void checkHW3(HttpServletRequest req, HttpServletResponse resp);
    boolean deleteStudent(HttpServletRequest req);
    boolean editHomework(HttpServletRequest req);
    boolean addStudent(HttpServletRequest req);
    boolean addTeacher(HttpServletRequest req);
    void check(HttpServletRequest req, HttpServletResponse resp);
    boolean addHomework(HttpServletRequest req);
    List<Student> selectAll2();
    List<StudentHomework> selectAll1();
    List<StudentHomework> find12(Long homeworkId);


}
