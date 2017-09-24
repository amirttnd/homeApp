package com.home.enums;

public enum Status {

    ACTIVE("Active"), CLOSED("Closed");

    String value;

    Status(String value) {
        this.value = value;
    }

    public static Status findByName(String name) {
        Status status = null;
        for (Status s : Status.values()) {
            if (s.value.equals(name)) {
                status = s;
                break;
            }
        }
        return status;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }
}
