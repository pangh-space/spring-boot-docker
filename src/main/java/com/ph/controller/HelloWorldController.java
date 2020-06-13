package com.ph.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Description HelloWorldController
 * @Author pangh
 * @Date 2020年06月10日
 * @Version v1.0.0
 */
@RestController
@RequestMapping("/hello")
public class HelloWorldController {

    @GetMapping("/helloWorld")
    public String helloWorld(){
        return "Hello World";
    }

}