package com.gavin.dao;

import com.gavin.model.Resume;

import java.util.List;

public interface ResumeDao {
    boolean addResume(Resume resume);

    boolean deleteResume(Resume resume);

    boolean updateResume(Resume resume);

    List<Resume> getResume(Resume resume);
}
