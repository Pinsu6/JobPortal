/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.help;

public class Bookmark {

    private int id;
    private int buid;
    private int pbid;

    public Bookmark() {
    }

    public Bookmark( int buid, int pbid) {
       
        this.buid = buid;
        this.pbid = pbid;
    }
    public Bookmark(int id, int buid, int pbid) {
        this.id = id;
        this.buid = buid;
        this.pbid = pbid;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getBuid() {
        return buid;
    }

    public void setBuid(int buid) {
        this.buid = buid;
    }

    public int getPbid() {
        return pbid;
    }

    public void setPbid(int pbid) {
        this.pbid = pbid;
    }

}
