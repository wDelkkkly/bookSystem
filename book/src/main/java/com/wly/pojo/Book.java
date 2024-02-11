package com.wly.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Book {
    private int bookID;
    private String bookName;
    private int bookCounts;
    private String detail;
}
