package com.didihan.ssm;

import com.didihan.ssm.utils.DateUtils;

import java.util.Date;

public class notice {
    private int number;
    private String title;
    private String notice;
    private Date date;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getNotice() {
        return notice;
    }

    public void setNotice(String notice) {
        this.notice = notice;
    }

    public String getDate() {
        String datetos = "";
        datetos = DateUtils.date2String(date,"yyyy-MM-dd");
        return datetos;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public notice() {
    }

    public notice(int number, String title, String notice, Date date) {
        this.number = number;
        this.title = title;
        this.notice = notice;
        this.date = date;
    }

    @Override
    public String toString() {
        return "notice{" +
                "number=" + number +
                ", title='" + title + '\'' +
                ", notice='" + notice + '\'' +
                ", date=" + date +
                '}';
    }
}
