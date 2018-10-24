package com.gavin.controller;

import com.gavin.service.PositionService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
public class PositionController {
    @Resource
    private PositionService positionService;

    @RequestMapping("/add_position")
    public String add_position()throws Exception{
        return "";
    }
}
