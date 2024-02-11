package com.wly.controller;

import com.wly.pojo.Admin;
import com.wly.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    private AdminService adminService;

    @RequestMapping("/allAdmin")
    public String list(Model model){
        List<Admin> list = adminService.list();
        model.addAttribute("list",list);
        return "allAdmin";
    }

    @RequestMapping("/toAddAdmin")
    public String preAdd(){
        return "addAdmin";
    }

    @RequestMapping("/addAdmin")
    public String addAdmin(Admin admin){
        int i = adminService.addAdmin(admin);
        return "redirect:/admin/allAdmin";
    }

    @RequestMapping("/deleteAdmin/{id}")
    public String delete(@PathVariable int id){
        int i = adminService.deleteAdmin(id);
        return "redirect:/admin/allAdmin";
    }

    @RequestMapping("/toUpdateAdmin/{id}")
    public String preUpdateAdmin(@PathVariable int id, Model model){
        Admin admin=adminService.getAdminById(id);
        model.addAttribute("admin",admin);
        return "updateAdmin";
    }

    @RequestMapping("/updateAdmin")
    public String updateAdmin(Admin admin){
        int i = adminService.updateAdmin(admin);
        return "redirect:/admin/allAdmin";
    }
}
