package com.gavin.service.impl;

import com.gavin.dao.InterviewDao;
import com.gavin.model.Interview;
import com.gavin.service.InterviewService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class InterviewServiceImpl implements InterviewService {
    @Resource
    private InterviewDao interviewDao;


    public boolean addInterview(Interview interview) {
        if (interview == null) {
            return false;
        }
        return interviewDao.addInterview(interview);
    }

    public boolean deleteInterview(Integer u_id) {
        if (u_id <= 0) {
            return false;
        }
        Interview interview = new Interview();
        interview.setU_id(u_id);
        return interviewDao.deleteInterview(interview);
    }

    public boolean updateInterview(Integer u_id) {
        if (u_id <= 0) {
            return false;
        }
        Interview interview = new Interview();
        interview.setU_id(u_id);
        return interviewDao.updateInterview(interview);
    }

    public Interview getInterview(Integer u_id) {
        if (u_id <= 0) {
            return null;
        }
        Interview interview = new Interview();
        interview.setU_id(u_id);
        return interviewDao.getInterview(interview);
    }
}
