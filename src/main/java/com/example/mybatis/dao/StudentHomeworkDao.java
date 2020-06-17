package com.example.mybatis.dao;

import com.example.mybatis.model.StudentHomework;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface StudentHomeworkDao {

    boolean addHomework(StudentHomework sh);
    boolean editHomework(Long studentId, Long homeworkId, Long score);
    boolean deleteHomework(Long studentId);
    boolean deleteHomework2(Long studentId,Long homeworkId);
    StudentHomework find1(Long studentId, Long homeworkId);
    List<StudentHomework> find12(Long homeworkId);
    List<StudentHomework> selectAll1();
}
