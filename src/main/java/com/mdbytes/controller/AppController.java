package com.mdbytes.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AppController {

    @GetMapping(path = "/about")
    public String getAboutPage() {
        return "/about/index";
    }

    @GetMapping(path = "/contact")
    public String getContactPage() {
        return "/contact/index";
    }

    @GetMapping(path = "/pricing")
    public String getPricingPage() {
        return "/pricing/index";
    }

    @GetMapping(path = "/faq")
    public String getFaqPage() {
        return "/faq/index";
    }

    @GetMapping(path = "/news")
    public String getNewsPage() {
        return "/news/index";
    }
}
