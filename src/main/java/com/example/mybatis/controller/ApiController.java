package com.example.mybatis.controller;

import com.example.mybatis.model.Homework;
import com.example.mybatis.model.Student;
import com.example.mybatis.model.StudentHomework;
import com.example.mybatis.service.AllSServiceImpl;
import com.example.mybatis.service.AllTServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
public class ApiController {
    private final AllSServiceImpl allSService;
    private final AllTServiceImpl allTService;

    @Autowired
    public ApiController(AllSServiceImpl allSService,AllTServiceImpl allTService) {

        this.allSService = allSService;
        this.allTService = allTService;
    }
///////////////////////////////////////////////学生更新页面
    public void update1(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String s=req.getParameter("sId");
        long l = Long.parseLong(s);
        List<Homework> list2 = allSService.selectAll3();
        if(null == list2 || list2.size() <= 0){
            req.setAttribute("flag",false);
        }else{
            req.setAttribute("flag",true);
            List<StudentHomework> list3=new ArrayList<StudentHomework>();
            List<Homework> list4=new ArrayList<Homework>();
            for (Homework h : list2){
                StudentHomework sh=allSService.find1(l,h.getId());
                if(sh==null){
                    //w未提交的作业
                    list4.add(h);
                }else{
                    list3.add(sh);
                }
            }
                req.setAttribute("list3",list3);
                req.setAttribute("list4",list4);
            }
        req.getRequestDispatcher("/SSubmit.jsp").forward(req,resp);
    }


    @RequestMapping("/login")

    public void login (HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        System.out.println("11");
        List<Student> list= allSService.login(req);
        if(null == list || list.size() <= 0){
            req.getRequestDispatcher("/Login.jsp").forward(req,resp);
           // return "login";
        }else{
            update1(req,resp);
            req.getRequestDispatcher("/SSubmit.jsp").forward(req,resp);
          //  return "login";
        }

    }
    @RequestMapping("/Tlogin")
    public void Tlogin (HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        System.out.println("22");
       // List<Student> list= allSService.login(req);
        boolean b=allTService.login(req);
        if(b==true){
            req.getRequestDispatcher("/TChoose.jsp").forward(req,resp);
           // return "TChoose";

        }else{
            req.getRequestDispatcher("/TLogin.jsp").forward(req,resp);
         //   return "TLogin";
        }

    }

    @RequestMapping("/TRegister")
    public void TRegister (HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        System.out.println("33");
        // List<Student> list= allSService.login(req);
        boolean b=allTService.addTeacher(req);
        if(b==true){
            req.getRequestDispatcher("/TChoose.jsp").forward(req,resp);
            //return "TRegister";
        }else{
            //update1(req,resp);
            req.getRequestDispatcher("/TRegister.jsp").forward(req,resp);
           // return "TRegister";
        }

    }

    //学生选择功能界面跳转到作业列表
    @RequestMapping("/submit1")
    public void submit1 (HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        update1(req,resp);
    //    return "submit";
        //req.getRequestDispatcher("/SSubmit.jsp").forward(req,resp);
    }

    //学生查看的作业列表跳转到提交界面
    @RequestMapping("/submit2")
    public void submit2 (HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        req.getRequestDispatcher("/SSubmit2.jsp").forward(req,resp);
       // return "submit2";
    }

    //作业提交执行
    @RequestMapping("/SubmitHomeworkServlet")
    public void submitHomework(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        req.setCharacterEncoding("utf-8");
        boolean j= allSService.deleteStudentHomework(req);
        boolean i = allSService.addHomework(req);

        if(i==true && j==true){
            //完成数据库操作，返回响应给jsp
            System.out.println("true");

        }else{
            System.out.println("false");
        }
        update1(req,resp);
     //   return "SubmitHomeworkServlet";
    }

    //////////////////////////////////////////////////////////////////////////老师

    public void update2(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Homework> list3 = allSService.selectAll3();
        List<Student> list2=allTService.selectAll2();
        for (Student s:list2){
            System.out.println(s.getName());
            System.out.println(s.getCreateTime());
        }
        List<StudentHomework> list1=allTService.selectAll1();

        req.setAttribute("list3",list3);
        req.setAttribute("list2",list2);
        req.setAttribute("list1",list1);

    }

    @RequestMapping("/Search")
    public void search(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        update2(req,resp);
        req.getRequestDispatcher("/TSearch.jsp").forward(req,resp);
    }
    @RequestMapping("/Check")
    public void Check(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        String s=req.getParameter("hwId");
        List<Homework>list3 = allSService.selectAll3();
        for (Homework h:list3){
            long l =h.getId();
            List<StudentHomework> list1 = allTService.find12(l);
            Long n=(long)list1.size();
            boolean b=allSService.editHW(l,n);
            System.out.println(b);
        }

        update2(req,resp);
        req.getRequestDispatcher("/TCheck.jsp").forward(req,resp);
    }

    public void Check2(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        String s=req.getParameter("hwId");
        long l = Long.parseLong(s);
        List<StudentHomework> list1 = allTService.find12(l);
        if(null == list1 || list1.size() <= 0){
            req.setAttribute("flag",false);
        }else{
            req.setAttribute("flag",true);
            req.setAttribute("list1",list1);
        }

        req.getRequestDispatcher("/TCheck2.jsp").forward(req,resp);
    }


    @RequestMapping("/CheckHomework")
    public void checkHW (HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        String s=req.getParameter("hwId");
        long l = Long.parseLong(s);
        List<StudentHomework> list1 = allTService.find12(l);

        if(null == list1 || list1.size() <= 0){
            req.setAttribute("flag",false);
        }else{
            req.setAttribute("flag",true);
            req.setAttribute("list1",list1);
        }

        req.getRequestDispatcher("/TCheck2.jsp").forward(req,resp);
    }

    @RequestMapping("/CheckHomework2")
    public void checkHW2 (HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        req.getRequestDispatcher("/TCheck3.jsp").forward(req,resp);
    }

    //作业提交执行
    @RequestMapping("/CheckHomework3")
    public void checkHW3(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        req.setCharacterEncoding("utf-8");
        boolean i=allTService.editHomework(req);

        if(i=true){
            //完成数据库操作，返回响应给jsp
            System.out.println("true");

        }else{
            System.out.println("false");
        }
        Check2(req,resp);
        //req.setAttribute("hwId",hwId);
        //req.getRequestDispatcher("/TCheck2.jsp").forward(req,resp);
    }

    @RequestMapping("/DeleteStudentServlet")
    public void deleteStudent(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        req.setCharacterEncoding("utf-8");
        boolean j=allTService.deleteStudent(req);
        update2(req,resp);
        if(j=true){
            System.out.println("true");
        }else{
            System.out.println("false");
        }
        req.getRequestDispatcher("/TDeleteStudent.jsp").forward(req,resp);

    }

    @RequestMapping("/TDelete")
    public void TDelete (HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        update2(req,resp);
        req.getRequestDispatcher("/TDeleteStudent.jsp").forward(req,resp);
    }

    @RequestMapping("/TAdd")
    public void TAdd(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        update2(req,resp);
        req.getRequestDispatcher("/TAddStudent.jsp").forward(req,resp);
    }

    @RequestMapping("/TADDHomework")
    public void TADDHomework (HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        update2(req,resp);
        req.getRequestDispatcher("/TAddHomework.jsp").forward(req,resp);
    }

    @RequestMapping("/addStudent")
    public void addStudent(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        req.setCharacterEncoding("utf-8");

        boolean i= allTService.addStudent(req);
        update2(req,resp);
        if(i=true){
            System.out.println("true");
            //   out.print("<script>alert('Add Successfully')");
        }else{
            System.out.println("false");
            //   out.print("<script>alert('Failed')");
        }
        req.getRequestDispatcher("/TAddStudent.jsp").forward(req,resp);
    }

    @RequestMapping("/check")
    public void check (HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        System.out.println(req.getParameter("hwId"));
        req.getRequestDispatcher("/TCheckHomework2.jsp").forward(req,resp);
    }

    @RequestMapping("/HomeworkServlet")
    public void addHomework(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        req.setCharacterEncoding("utf-8");

        boolean i=allTService.addHomework(req);
        update2(req,resp);
        if(i=true){
            System.out.println("true");
        }else{
            System.out.println("false");
        }
        req.getRequestDispatcher("/TAddHomework.jsp").forward(req,resp);
    }




























}
