package com.wly.service.impl;

import com.wly.mapper.AdminMapper;
import com.wly.pojo.Admin;
import com.wly.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminServiceImpl implements AdminService {
    @Autowired
    AdminMapper adminMapper;
    public Admin queryUserByNameAndPassword(String username, String password) {
        Admin admin=adminMapper.queryUserByNameAndPassword(username,password);
        return admin;
    }

    public List<Admin> list() {
        return adminMapper.list();
    }

    public int addAdmin(Admin admin) {
        return adminMapper.addAdmin(admin);
    }

    public int deleteAdmin(int id) {
        return adminMapper.deleteAdmin(id);
    }

    public Admin getAdminById(int id) {
        return adminMapper.getAdminById(id);
    }

    public int updateAdmin(Admin admin) {
        return adminMapper.updateAdmin(admin);
    }

}
