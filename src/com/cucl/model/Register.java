package com.cucl.model;

public class Register {
    String subject,sec;

    public Register(String subject, String sec) {
        this.subject = subject;
        this.sec = sec;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getSec() {
        return sec;
    }

    public void setSec(String sec) {
        this.sec = sec;
    }
}