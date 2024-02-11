package com.wly.controller;

import com.wly.pojo.Reader;
import com.wly.service.ReaderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/reader")
public class ReaderController {
    @Autowired
    private ReaderService readerService;

    @RequestMapping("/allReader")
    public String list(Model model){
        List<Reader> list = readerService.list();
        model.addAttribute("list",list);
        return "allReader";
    }

    @RequestMapping("/toAddReader")
    public String preAdd(){
        return "addReader";
    }

    @RequestMapping("/addReader")
    public String addReader(Reader reader){
        int i = readerService.addReader(reader);
        return "redirect:/reader/allReader";
    }

    @RequestMapping("/deleteReader/{id}")
    public String delete(@PathVariable int id){
        int i = readerService.deleteReader(id);
        return "redirect:/reader/allReader";
    }

    @RequestMapping("/toUpdateReader/{id}")
    public String preUpdateReader(@PathVariable int id, Model model){
        Reader reader=readerService.getReaderById(id);
        model.addAttribute("reader",reader);
        return "updateReader";
    }

    @RequestMapping("/updateReader")
    public String updateReader(Reader reader){
        int i = readerService.updateReader(reader);
        return "redirect:/reader/allReader";
    }
}
