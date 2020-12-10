package com.didihan.ssm;

public class stid {
    String number;

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public stid(String number) {
        this.number = number;
    }

    public stid() {
    }

    @Override
    public String toString() {
        return "stid{" +
                "number='" + number + '\'' +
                '}';
    }
}
