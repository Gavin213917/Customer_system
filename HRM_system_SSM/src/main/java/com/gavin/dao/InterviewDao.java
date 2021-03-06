package com.gavin.dao;

import com.gavin.model.Interview;

import java.util.List;

public interface InterviewDao {
    boolean addInterview(Interview interview);

    boolean deleteInterview(Interview interview);

    boolean updateInterview(Interview interview);

    Interview getInterview(Interview interview);

    List<Interview> getInterviewAll();
}
