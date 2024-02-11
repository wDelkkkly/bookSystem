package com.wly.service.impl;

import com.wly.mapper.ReaderMapper;
import com.wly.pojo.Reader;
import com.wly.service.ReaderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReaderServiceImpl implements ReaderService {
    @Autowired
    ReaderMapper readerMapper;
    public Reader queryUserByNameAndPassword(String username, String password) {
        return readerMapper.queryUserByNameAndPassword(username,password);
    }

    public List<Reader> list() {
        return readerMapper.list();
    }

    public int addReader(Reader reader) {
        return readerMapper.addReader(reader);
    }

    public int deleteReader(int id) {
        return readerMapper.deleteReader(id);
    }

    public Reader getReaderById(int id) {
        return readerMapper.getReaderById(id);
    }

    public int updateReader(Reader reader) {
        return readerMapper.updateReader(reader);
    }

}
