package com.gavin.controller;

import com.gavin.model.Offer;
import com.gavin.service.OfferService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class OfferController {
    @Resource
    private OfferService offerService;

    @RequestMapping("/add_offer")
    public String add_offer(Offer offer, Model model) throws Exception {
        if (offerService.addOffer(offer)) {
            model.addAttribute("success", "发送成功");
            return "add_offer";
        }
        return "error";
    }

    @RequestMapping("/show_offer")
    public String show_offer(HttpSession session)throws Exception{
        List<Offer> offerList = offerService.getOffers();
        session.setAttribute("offerList",offerList);
        return "show_offer";
    }
}
