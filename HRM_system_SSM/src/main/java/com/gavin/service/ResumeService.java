package com.gavin.service;


import com.gavin.model.Resume;

import java.util.List;

public interface ResumeService {
    boolean addResume(Resume resume);

    boolean deleteResume(Integer u_id);

    boolean updateResume(Resume resume);

    List<Resume> getResume(Integer u_id);

}
