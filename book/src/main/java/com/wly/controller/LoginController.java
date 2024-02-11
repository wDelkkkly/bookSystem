package com.wly.controller;

import com.wly.pojo.Admin;
import com.wly.pojo.Reader;
import com.wly.service.AdminService;
import com.wly.service.ReaderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

//@SuppressWarnings("SpringJavaInjectionPointsAutowiringInspection")
@Controller
@RequestMapping("/login")
public class LoginController {


    @Autowired
    private ReaderService readerService;

    @Autowired
    private AdminService adminService;

    @RequestMapping("/login")
    public String login(){
        return "login";
    }
    @RequestMapping("/checkLogin")
    public String loginIn(HttpServletRequest request, Model model){
        //获取用户名与密码
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String role=request.getParameter("role");
        HttpSession session = request.getSession();
        //验证码正确则判断用户名和密码
        if(role.equals("admin")){//管理员信息
            //用户名和密码是否正确
            Admin admin= adminService.queryUserByNameAndPassword(username,password);
            if(admin==null){//该用户不存在
                model.addAttribute("msg","用户名或密码错误");
                return "login";
            }else{
                session.setAttribute("user",admin);
                session.setAttribute("role","admin");
                model.addAttribute("user",admin);
                return "admin_main";
            }

        }else{//来自读者信息表
            Reader reader= readerService.queryUserByNameAndPassword(username,password);
            if(reader==null){
                model.addAttribute("msg","用户名或密码错误");
                return "login";
            }
            else {
                session.setAttribute("user",reader);
                session.setAttribute("role","reader");
                model.addAttribute("user",reader);
                return "reader_main";
            }

        }
//            return "index";
    }
    @RequestMapping("loginOut")
    public String loginOut(HttpServletRequest request){
        HttpSession session = request.getSession();
        session.invalidate();//注销
        return "login";
    }
}
