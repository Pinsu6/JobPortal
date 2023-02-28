package com.help;

public class msg {

    private String message;
    private String css;

    public msg(String message, String css) {
        this.message = message;
        this.css = css;

    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getCss() {
        return css;
    }

    public void setCss(String css) {
        this.css = css;
    }

}
