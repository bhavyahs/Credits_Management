package com.model;

import java.io.Serializable;

public class Transfers implements Serializable{
    String credit_from;
    String credit_to;
    long transfered_amount;


    public Transfers(){

    }
    public Transfers(String credit_from,String credit_to,long transfered_amount){
        this.credit_from=credit_from;
        this.credit_to=credit_to;
        this.transfered_amount=transfered_amount;
    }

    public String getCredit_from()
    {
        return credit_from;
    }

    public void setCredit_from(String credit_from) {

        this.credit_from = credit_from;
    }

    public String getCredit_to() {

        return credit_to;
    }

    public void setCredit_to(String credit_to) {

        this.credit_to = credit_to;
    }

    public long getTransfered_amount() {

        return transfered_amount;
    }

    public void setTransfered_amount(long transfered_amount) {

        this.transfered_amount = transfered_amount;
    }

}
