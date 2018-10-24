package com.gavin.service.impl;

import com.gavin.dao.ResumeDao;
import com.gavin.model.Resume;
import com.gavin.service.ResumeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

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

    public boolean deleteResume(Integer u_id) {
        if (u_id <= 0) {
            return false;
        }
        Resume resume = new Resume();
        resume.setU_id(u_id);
        return resumeDao.deleteResume(resume);
    }

    public boolean updateResume(Resume resume) {
        if (null == resume) {
            return false;
        }
        return resumeDao.updateResume(resume);
    }

    public List<Resume> getResume(Integer u_id) {
        Resume resume = new Resume();
        resume.setU_id(u_id);
        List<Resume> resumeList = resumeDao.getResume(resume);
        if (resumeList.size() != 0) {
            return resumeList;
        }
        return null;
    }
}
