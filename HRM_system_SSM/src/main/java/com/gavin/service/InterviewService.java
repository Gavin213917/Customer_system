package com.gavin.service;

import com.gavin.model.Interview;

import java.util.List;

public interface InterviewService {
    boolean addInterview(Interview interview);

    boolean deleteInterview(Integer u_id);

    boolean updateInterview(Interview interview);

    Interview getInterview(Integer u_id);

    List<Interview> getInterviewAll();
}
