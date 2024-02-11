package com.wly.mapper;

import com.wly.pojo.Admin;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AdminMapper {

    Admin queryUserByNameAndPassword(@Param("username") String username, @Param("password") String password);

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
