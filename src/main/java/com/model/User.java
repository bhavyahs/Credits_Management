package com.model;

import java.io.Serializable;

public class User implements Serializable {
    String name;
    String email;
    long current_credit;

    long creditAmount;
    long creditToSend;
    String toUser;

    public User(){

    }
    public User(String name,String email,long current_credit){
        this.name=name;
        this.email=email;
        this.current_credit=current_credit;
    }

    public String getName()
    {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {

        return email;
    }

    public void setEmail(String email)
    {
        this.email = email;
    }

    public long getCurrent_credit() {

        return current_credit;
    }

    public void setCurrent_credit(long current_credit)
    {
        this.current_credit = current_credit;
    }

    public long getCreditAmount() {
        return creditAmount;
    }

    public void setCreditAmount(long creditAmount) {
        this.creditAmount = creditAmount;
    }

    public long getCreditToSend() {
        return creditToSend;
    }

    public void setCreditToSend(long creditToSend) {
        this.creditToSend = creditToSend;
    }

    public String getToUser() {
        return toUser;
    }

    public void setToUser(String toUser) {
        this.toUser = toUser;
    }
}

