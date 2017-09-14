package com.kiminotes.hello;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author <a href="mailto:gang.lvg@alibaba-inc.com">kimi</a> 2017-09-14
 */
@RestController
public class Hello {

    @RequestMapping("/")
    public String hello() {
        return "Hello from Spring Boot";
    }

}
