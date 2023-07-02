package com.entity;


public class UploadMessage {
    private String url;
    private String alt;
    private String href;

    public UploadMessage() {
    }

    public UploadMessage(String url, String alt, String href) {
        this.url = url;
        this.alt = alt;
        this.href = href;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getAlt() {
        return alt;
    }

    public void setAlt(String alt) {
        this.alt = alt;
    }

    public String getHref() {
        return href;
    }

    public void setHref(String href) {
        this.href = href;
    }
}

