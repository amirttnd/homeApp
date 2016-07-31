package com.app

import com.app.enums.Status

class Session {
    String nickName
    Date startDate
    Date endDate
    Status status = Status.ACTIVE
    Date dateCreated
    Date lastUpdated

    List<Product> products

    static hasMany = [products: Product]

    static constraints = {
    }
}
