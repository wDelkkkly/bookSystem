package com.wly.service;

import com.wly.pojo.Admin;

import java.util.List;


public interface AdminService {
     Admin queryUserByNameAndPassword(String username, String password);

     List<Admin> list();

     //添加
     int addAdmin(Admin admin);

     //删除
     int deleteAdmin(int id);

     //根据id获取book对象
     Admin getAdminById(int id);

     //更新
     int updateAdmin(Admin admin);

}
