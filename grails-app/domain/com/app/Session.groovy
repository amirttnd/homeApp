package com.app

import com.app.constants.Constants
import com.app.enums.Status
import org.grails.databinding.BindingFormat

class Session {
    String nickName

    Date startDate = new Date()

    Date endDate
    Status status = Status.ACTIVE

    Date dateCreated
    Date lastUpdated

    List<Product> products

    static hasMany = [products: Product]

    static constraints = {
        endDate nullable: true
    }
}
