package com.didihan.ssm;

public class mm {
    private int number;
    private String account;
    private String password;

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public mm(int number, String account, String password) {
        this.number = number;
        this.account = account;
        this.password = password;
    }

    public mm() {
    }

    @Override
    public String toString() {
        return "mm{" +
                "number=" + number +
                ", account='" + account + '\'' +
                ", password=" + password +
                '}';
    }
}
