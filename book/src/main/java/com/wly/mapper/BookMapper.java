package com.wly.mapper;

import com.wly.pojo.Book;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BookMapper {

    List<Book>listBook();

    int addBook(Book book);

    int delete(int id);

    Book getBookById(int id);

    int updateBook(Book book);

    List<Book> FindBook(String findname);

    int borrowBook(Book book);

    int backBook(Book book);

}
