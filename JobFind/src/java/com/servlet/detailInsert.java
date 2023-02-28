package com.servlet;

public class detailInsert {

    int id;
    int uid;
    String university;
    String school;
    String adress;
    String city;
    String state;
    String zip;
    String qualification;
  public detailInsert()
  {
      
  }
    public detailInsert(int id, int uid, String university, String school, String adress, String city, String state, String zip, String qualification) {
        this.id = id;
        this.uid = uid;
        this.university = university;
        this.school = school;
        this.adress = adress;
        this.city = city;
        this.state = state;
        this.zip = zip;
        this.qualification = qualification;
    }

    public detailInsert(int uid, String university, String school, String adress, String city, String state, String zip, String qualification) {
    
        this.uid = uid;
        this.university = university;
        this.school = school;
        this.adress = adress;
        this.city = city;
        this.state = state;
        this.zip = zip;
        this.qualification = qualification;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getUniversity() {
        return university;
    }

    public void setUniversity(String university) {
        this.university = university;
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
    }

    public String getAdress() {
        return adress;
    }

    public void setAdress(String adress) {
        this.adress = adress;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getZip() {
        return zip;
    }

    public void setZip(String zip) {
        this.zip = zip;
    }

    public String getQualification() {
        return qualification;
    }

    public void setQualification(String qualification) {
        this.qualification = qualification;
    }

}
