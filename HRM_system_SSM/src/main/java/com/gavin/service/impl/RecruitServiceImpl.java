package com.gavin.service.impl;

import com.gavin.dao.RecruitDao;
import com.gavin.model.Recruit;
import com.gavin.service.RecruitService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class RecruitServiceImpl implements RecruitService {
    @Resource
    private RecruitDao recruitDao;

    public boolean addRecruit(Recruit recruit) {
        if (recruit == null) {
            return false;
        }
        return recruitDao.addRecruit(recruit);
    }

    public boolean deleteRecruit(Integer rec_id) {
        if (rec_id <= 0) {
            return false;
        }
        Recruit recruit = new Recruit();
        recruit.setRec_id(rec_id);
        return recruitDao.deleteRecruit(recruit);
    }

    public boolean updateRecruit(Recruit recruit) {
        if (recruit == null) {
            return false;
        }
        return recruitDao.updateRecruit(recruit);
    }

    public Recruit getRecruit(Recruit recruit) {
        if (recruit == null) {
            return null;
        }
        return recruitDao.getRecruit(recruit);
    }

    public List<Recruit> getRecruitAll() {
        List<Recruit> recruits = recruitDao.getRecruitAll();
        if (recruits.size() != 0) {
            return recruits;
        }
        return null;
    }
}
