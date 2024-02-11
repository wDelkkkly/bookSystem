package com.wly.service;

import com.wly.pojo.Reader;

import java.util.List;


public interface ReaderService {
    Reader queryUserByNameAndPassword(String username, String password);

    List<Reader> list();

    //添加
    int addReader(Reader reader);

    //删除
    int deleteReader(int id);

    //根据id获取book对象
    Reader getReaderById(int id);

    //更新
    int updateReader(Reader reader);
}
