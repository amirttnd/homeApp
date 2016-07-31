package com.app

import com.app.enums.Status

class Borrow {
    User creditBy
    User debitBy
    Long amount = 0.0
    Date creditDate
    Date dateCreated
    Date lastUpdated
    Status status = Status.ACTIVE

    static constraints = {
    }
}
