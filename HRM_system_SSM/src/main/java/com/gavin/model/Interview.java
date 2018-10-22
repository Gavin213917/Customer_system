package com.gavin.model;

import java.io.Serializable;
import java.util.Date;

public class Interview implements Serializable {
    private Integer iview_id;
    private Integer u_id;//用户id
    private Integer iview_status;//发送状态，1代表已发送，0代表未发送
    private Date iview_time;//面试时间

    public Interview() {
    }

    public Integer getIview_id() {
        return iview_id;
    }

    public void setIview_id(Integer iview_id) {
        this.iview_id = iview_id;
    }

    public Integer getU_id() {
        return u_id;
    }

    public void setU_id(Integer u_id) {
        this.u_id = u_id;
    }

    public Integer getIview_status() {
        return iview_status;
    }

    public void setIview_status(Integer iview_status) {
        this.iview_status = iview_status;
    }

    public Date getIview_time() {
        return iview_time;
    }

    public void setIview_time(Date iview_time) {
        this.iview_time = iview_time;
    }

    @Override
    public String toString() {
        return "Interview{" +
                "iview_id=" + iview_id +
                ", u_id=" + u_id +
                ", iview_status=" + iview_status +
                ", iview_time=" + iview_time +
                '}';
    }
}
