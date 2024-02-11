package com.wly.mapper;

import com.wly.pojo.Reader;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ReaderMapper {
    Reader queryUserByNameAndPassword(@Param("username") String username, @Param("password") String password);

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
