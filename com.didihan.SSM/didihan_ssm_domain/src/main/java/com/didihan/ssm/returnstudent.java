package com.didihan.ssm;

public class returnstudent {
    private int number;
    private String name;
    private String system;
    private String classrom;
    private String pay;
    private int room;

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

    public String getPay() {
        return pay;
    }

    public void setPay(String pay) {
        this.pay = pay;
    }

    public int getRoom() {
        return room;
    }

    public void setRoom(int room) {
        this.room = room;
    }

    public returnstudent(int number, String name, String system, String classrom, String pay, int room) {
        this.number = number;
        this.name = name;
        this.system = system;
        this.classrom = classrom;
        this.pay = pay;
        this.room = room;
    }

    public returnstudent() {
    }

    @Override
    public String toString() {
        return "returnstudent{" +
                "number=" + number +
                ", name='" + name + '\'' +
                ", system='" + system + '\'' +
                ", classrom='" + classrom + '\'' +
                ", pay=" + pay +
                ", room=" + room +
                '}';
    }
}
