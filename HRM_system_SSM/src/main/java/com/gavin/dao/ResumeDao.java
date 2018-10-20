package com.gavin.dao;

import com.gavin.model.Resume;

public interface ResumeDao {
    boolean addResume(Resume resume);

    boolean deleteResume(Resume resume);

    boolean updateResume(Resume resume);

    Resume getResume(Resume resume);
}
