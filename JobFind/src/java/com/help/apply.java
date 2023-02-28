package com.help;

public class apply {

    private int id;
    private int post_id;
    private int user_id;
    private int upload_id;
    private String username;
    private String posttitle;
    private int resume_id;
    private int detai_id;
    private String resume;

    public String getResume() {
        return resume;
    }

    public void setResume(String resume) {
        this.resume = resume;
    }

    public int getResume_id() {
        return resume_id;
    }

    public void setResume_id(int resume_id) {
        this.resume_id = resume_id;
    }

    public int getDetai_id() {
        return detai_id;
    }

    public void setDetai_id(int detai_id) {
        this.detai_id = detai_id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPosttitle() {
        return posttitle;
    }

    public void setPosttitle(String posttitle) {
        this.posttitle = posttitle;
    }

    public int getUpload_id() {
        return upload_id;
    }

    public void setUpload_id(int upload_id) {
        this.upload_id = upload_id;
    }

    public apply(int post_id, int user_id) {
        this.post_id = post_id;
        this.user_id = user_id;
    }

    public apply() {
        super();
    }

    public apply(int id, int post_id, int user_id) {
        this.id = id;
        this.post_id = post_id;
        this.user_id = user_id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPost_id() {
        return post_id;
    }

    public void setPost_id(int post_id) {
        this.post_id = post_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

}
