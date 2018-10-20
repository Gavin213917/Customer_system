package com.gavin.service.impl;

import com.gavin.dao.ResumeDao;
import com.gavin.model.Resume;
import com.gavin.service.ResumeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class ResumeServiceImpl implements ResumeService {
    @Resource
    private ResumeDao resumeDao;

    public boolean addResume(Resume resume) {
        if (null == resume) {
            return false;
        }
        return resumeDao.addResume(resume);
    }

    public boolean deleteResume(Resume resume) {
        if (null == resume) {
            return false;
        }
        return resumeDao.deleteResume(resume);
    }

    public boolean updateResume(Resume resume) {
        if (null == resume) {
            return false;
        }
        return resumeDao.updateResume(resume);
    }

    public Resume getResume(Resume resume) {
        if (null == resume) {
            return null;
        }
        return resumeDao.getResume(resume);
    }
}
