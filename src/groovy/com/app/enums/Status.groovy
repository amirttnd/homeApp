package com.app.enums

enum Status {
    CLOSED("Closed"), ACTIVE("Active"), PENDING("Pending")
    String value

    Status(String value) {
        this.value = value
    }

    public static Status getStatus(String value) {
        for (Status status : Status.values()) {
            if (status.value == value) {
                return status;
            }
        }
    }
}
