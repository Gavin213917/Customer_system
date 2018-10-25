package com.gavin.service;

import com.gavin.model.Offer;

import java.util.List;

public interface OfferService {
    boolean addOffer(Offer offer);

    Offer getOffer(Integer u_id);

    List<Offer> getOffers();
}
