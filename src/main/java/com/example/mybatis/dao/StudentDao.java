package com.example.mybatis.dao;

import com.example.mybatis.model.Student;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface StudentDao {
    boolean addStudent(Student s);
    boolean deleteStudent(Student s);
    List<Student> find2(Long studentId);
    List<Student> selectAll2();

}
