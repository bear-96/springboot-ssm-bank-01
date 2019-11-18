package com.xwx.springbootssmbank.bean;

public class Log {
    private int logid;
    private String logtype;
    private double logamount;
    private int userid;

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public int getLogid() {
        return logid;
    }

    public void setLogid(int logid) {
        this.logid = logid;
    }

    public String getLogtype() {
        return logtype;
    }

    public void setLogtype(String logtype) {
        this.logtype = logtype;
    }

    public double getLogamount() {
        return logamount;
    }

    public void setLogamount(double logamount) {
        this.logamount = logamount;
    }
}