package com.ciis.test.jqgrid;

import com.ciis.base.jqgrid.ViewPage;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentSkipListMap;

/**
 * Created with IntelliJ IDEA.
 * UserBean: zhangdajun
 * Date: 14-3-18
 * Time: 下午12:52
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping(value = "/book")
public class BookController {
    private final Map<Integer, Book> books = new ConcurrentSkipListMap<Integer, Book>();

    @RequestMapping(value = "/getBook",method = RequestMethod.GET)
    public @ResponseBody ViewPage<Book> listBooks(
            @RequestParam(value = "page", required = false, defaultValue = "1") int page,
            @RequestParam(value = "max", required = false, defaultValue = "20") int max) {
        ViewPage<Book> p = new ViewPage<Book>();
        List<Book> bookList = new ArrayList<Book>();
        for(int i = 0 ; i < 10 ; i ++){
            Book book = new Book();
            book.setId("1"+i);
            book.setAuthor("auth"+i);
            book.setAvailable(1);
            book.setPublishedYear(new Date());
            book.setTitle("书"+i);
            bookList.add(book);
        }
        p.setRows(bookList);
        p.setTotal(100);
        p.setMax(20);
        p.setPage(3);
        return p;
    }

    @RequestMapping(value = "/intoBook",method = RequestMethod.GET)
    public String intoBookEdit(){

        return "web/back/gridTest";
    }
}

