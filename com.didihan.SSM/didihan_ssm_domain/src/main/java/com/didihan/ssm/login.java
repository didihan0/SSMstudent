package com.didihan.ssm;

public class login {
    private String account;
    private String password;
    private String sort;

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

    public String getSort() {
        return sort;
    }

    public void setSort(String sort) {
        this.sort = sort;
    }

    public login(String account, String password, String sort) {
        this.account = account;
        this.password = password;
        this.sort = sort;
    }

    public login() {
    }

    @Override
    public String toString() {
        return "login{" +
                "account='" + account + '\'' +
                ", password='" + password + '\'' +
                ", sort='" + sort + '\'' +
                '}';
    }
}
