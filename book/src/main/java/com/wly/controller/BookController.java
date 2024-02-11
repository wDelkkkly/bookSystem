package com.wly.controller;

import com.wly.pojo.Book;
import com.wly.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {

    @Autowired
    private BookService bookService;

    @RequestMapping("/allBook")
    public String list(HttpSession session, Model model){
        List<Book> list = bookService.list();
        Object role=session.getAttribute("role");
        boolean showButton = role.equals("admin");
        model.addAttribute("list",list);
        model.addAttribute("showButton", showButton);
        return "allBook2";
    }

    @RequestMapping("/toAddBook")
    public String preAdd(){
        return "addBook";
    }

    @RequestMapping("/addBook")
    public String addBook(Book book){
        int i = bookService.addBook(book);
        return "redirect:/book/allBook";
    }

    @RequestMapping("/deleteBook/{bookID}")
    public String delete(@PathVariable int bookID){
        int i = bookService.deleteBook(bookID);
        return "redirect:/book/allBook";
    }

    @RequestMapping("/toUpdateBook/{id}")
    public String preUpdateBook(@PathVariable int id, Model model){
        Book book=bookService.getBookById(id);
        model.addAttribute("book",book);
        return "updateBook";
    }

    @RequestMapping("/updateBook")
    public String updateBook(Book book){
        int i = bookService.updateBook(book);
        return "redirect:/book/allBook";
    }
    @RequestMapping("/toFindBook")
    public String preFind(){
        return "FindBook";
    }

    @RequestMapping("/FindBook")
    public String FindBook(@RequestParam("findname") String findname,Model mode){
       // String find_name=request.getParameter("findname");
        List<Book> list2 = bookService.FindBook(findname);
        mode.addAttribute("list2",list2);
        return "FindBooks";
    }

    @RequestMapping("/borrowBook/{id}")
    public String borrowBook(@PathVariable int id, Model model){
        Book book=bookService.getBookById(id);
        int i=bookService.borrowBook(book);
        return "borrow_result";
    }
    @RequestMapping("/backBook/{id}")
    public String backBook(@PathVariable int id, Model model){
        Book book=bookService.getBookById(id);
        int i=bookService.backBook(book);
        return "back_result";
    }

}
