package com.example.mybatis.service;


import com.example.mybatis.dao.HomeworkDao;
import com.example.mybatis.dao.StudentDao;
import com.example.mybatis.dao.StudentHomeworkDao;
import com.example.mybatis.model.Homework;
import com.example.mybatis.model.Student;
import com.example.mybatis.model.StudentHomework;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Service
public class AllSServiceImpl implements AllSService {

    @Resource
    private final HomeworkDao homeworkDao;
    private final StudentDao studentDao;
    private final StudentHomeworkDao studentHomeworkDao;


    @Autowired
    public AllSServiceImpl(HomeworkDao homeworkDao,StudentDao studentDao, StudentHomeworkDao studentHomeworkDao) {
        this.homeworkDao=homeworkDao;
        this.studentDao = studentDao;
        this.studentHomeworkDao = studentHomeworkDao;
    }

    public List<Homework> selectAll3() {
        return homeworkDao.selectAll3();
    }

    @Override
    public List<Student> login(HttpServletRequest req) {
        Student sId = new Student();
        sId.setStudentId(Long.parseLong(req.getParameter("sId")));
        return studentDao.find2(sId.getStudentId());

    }


    @Override
    public boolean addHomework(HttpServletRequest req) {
        StudentHomework sh = new StudentHomework();

        System.out.println("SubmitHomeworkServlet"+Long.parseLong(req.getParameter("sId")));

        sh.setStudentId(Long.parseLong(req.getParameter("sId")));
        sh.setHomeworkId(Long.parseLong(req.getParameter("hwId")));
        sh.setHomeworkTitle(req.getParameter("hwTitle"));
        sh.setHomeworkContent(req.getParameter("finish"));
        Calendar c = Calendar.getInstance();
        Date date = c.getTime();
        sh.setCreateTime(date);

        return studentHomeworkDao.addHomework(sh);

    }


    @Override
    public StudentHomework find1(Long studentId, Long homeworkId) {
        return studentHomeworkDao.find1(studentId,homeworkId);
    }

    @Override
    public boolean editHW(Long homeworkId, Long num) {

        return homeworkDao.editHW(homeworkId,num);
    }

    @Override
    public boolean deleteStudentHomework(HttpServletRequest req) {
        StudentHomework sh = new StudentHomework();
        sh.setStudentId(Long.parseLong(req.getParameter("sId")));
        sh.setHomeworkId(Long.parseLong(req.getParameter("hwId")));

        return studentHomeworkDao.deleteHomework2(sh.getStudentId(),sh.getHomeworkId());
    }

}
