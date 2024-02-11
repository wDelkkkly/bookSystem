package com.wly.service;

import com.wly.pojo.Book;

import java.util.List;

public interface BookService {

    //展示book列表
    List<Book> list();

    //添加
    int addBook(Book book);

    //删除
    int deleteBook(int id);

    //根据id获取book对象
    Book getBookById(int id);

    //更新
    int updateBook(Book book);

    //查找图书
    List<Book> FindBook(String findname);

    int borrowBook(Book book);

    int backBook(Book book);

}
