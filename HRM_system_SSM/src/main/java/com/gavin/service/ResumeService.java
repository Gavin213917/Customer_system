package com.gavin.service;


import com.gavin.model.Resume;

public interface ResumeService {
    boolean addResume(Resume resume);

    boolean deleteResume(Resume resume);

    boolean updateResume(Resume resume);

    Resume getResume(Resume resume);

}
