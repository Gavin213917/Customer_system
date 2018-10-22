package com.gavin.service;

import com.gavin.model.Interview;

public interface InterviewService {
    boolean addInterview(Interview interview);

    boolean deleteInterview(Integer u_id);

    boolean updateInterview(Integer u_id);

    Interview getInterview(Integer u_id);
}
