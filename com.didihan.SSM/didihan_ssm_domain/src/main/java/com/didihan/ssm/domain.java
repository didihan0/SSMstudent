package com.didihan.ssm;

import com.didihan.ssm.utils.DateUtils;

import java.util.Date;

/**
 * 学生信息
 */
public class domain {
    private int number;
    private String name;
    private Date both;
    private int report;
    private int pay;
    private String place;
    private String sex;
    private String system;
    private String classrom;
    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBoth() {
        String bothstr = "";
        if(both!=null){
            bothstr = DateUtils.date2String(both,"yyyy-MM-dd");
        }
        return bothstr;
    }

    public void setBoth(Date both) {
        this.both = both;
    }

    public String getReport() {
        if (report == 0)
            return "否";
        else
            return "是";
    }

    public void setReport(int report) {
        this.report = report;
    }

    public String getPay() {
        if (pay == 0)
            return "否";
        else
            return "是";
    }

    public void setPay(int pay) {
        this.pay = pay;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public domain(int number, String name, Date both, int report, int pay, String place, String sex, String system, String classrom) {
        this.number = number;
        this.name = name;
        this.both = both;
        this.report = report;
        this.pay = pay;
        this.place = place;
        this.sex = sex;
        this.system = system;
        this.classrom = classrom;
    }

    public domain() {
    }

    @Override
    public String toString() {
        return "domain{" +
                "number=" + number +
                ", name='" + name + '\'' +
                ", both=" + both +
                ", report=" + report +
                ", pay=" + pay +
                ", place='" + place + '\'' +
                ", sex='" + sex + '\'' +
                ", system='" + system + '\'' +
                ", classrom='" + classrom + '\'' +
                '}';
    }

    public String getSystem() {
        return system;
    }

    public void setSystem(String system) {
        this.system = system;
    }

    public String getClassrom() {
        return classrom;
    }

    public void setClassrom(String classrom) {
        this.classrom = classrom;
    }
}
