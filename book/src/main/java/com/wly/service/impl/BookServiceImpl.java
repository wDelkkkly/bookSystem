package com.wly.service.impl;

import com.wly.mapper.BookMapper;
import com.wly.pojo.Book;
import com.wly.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookServiceImpl implements BookService {

    @Autowired
    private BookMapper bookMapper;

    public List<Book> list() {
        List<Book> list = bookMapper.listBook();
        return list;
    }

    public int addBook(Book book) {
        int i = bookMapper.addBook(book);
        return i;
    }

    public int deleteBook(int id) {
        int delete = bookMapper.delete(id);
        return delete;
    }

    public Book getBookById(int id) {
        return bookMapper.getBookById(id);
    }

    public int updateBook(Book book) {
        return bookMapper.updateBook(book);
    }

    public List<Book> FindBook(String findame) {
        return bookMapper.FindBook(findame);
    }

    public int borrowBook(Book book) {
        return bookMapper.borrowBook(book);
    }

    public int backBook(Book book) {
        return bookMapper.backBook(book);
    }
}
