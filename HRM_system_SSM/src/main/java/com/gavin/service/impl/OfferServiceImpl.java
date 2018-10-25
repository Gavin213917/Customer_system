package com.gavin.service.impl;

import com.gavin.dao.OfferDao;
import com.gavin.model.Offer;
import com.gavin.service.OfferService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class OfferServiceImpl implements OfferService {
    @Resource
    private OfferDao offerDao;

    public boolean addOffer(Offer offer) {
        if (offer == null) {
            return false;
        }
        return offerDao.addOffer(offer);
    }

    public Offer getOffer(Integer u_id) {
        if (u_id <= 0) {
            return null;
        }
        Offer offer = new Offer();
        offer.setU_id(u_id);
        return offerDao.getOffer(offer);
    }

    public List<Offer> getOffers() {
        List<Offer> offerList = offerDao.getOffers();
        if (offerList.size() != 0) {
            return offerList;
        }
        return null;
    }
}
