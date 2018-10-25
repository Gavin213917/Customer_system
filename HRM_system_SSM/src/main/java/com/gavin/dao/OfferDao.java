package com.gavin.dao;

import com.gavin.model.Offer;

import java.util.List;

public interface OfferDao {
    boolean addOffer(Offer offer);

    Offer getOffer(Offer offer);

    List<Offer> getOffers();
}
