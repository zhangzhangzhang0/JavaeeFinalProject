package com.example.mybatis.dao;


import com.example.mybatis.model.Teacher;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TeacherDao {
    List<Teacher> find4(Long id, String pw);
    boolean addTeacher(Teacher t);
}
