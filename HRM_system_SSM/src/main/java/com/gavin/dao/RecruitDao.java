package com.gavin.dao;

import com.gavin.model.Recruit;

import java.util.List;

public interface RecruitDao {
    boolean addRecruit(Recruit recruit);

    boolean deleteRecruit(Recruit recruit);

    boolean updateRecruit(Recruit recruit);

    Recruit getRecruit(Recruit recruit);

    List<Recruit> getRecruitAll();
}
