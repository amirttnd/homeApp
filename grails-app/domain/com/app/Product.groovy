package com.app

import com.app.constants.Constants
import org.grails.databinding.BindingFormat
import org.springframework.format.annotation.DateTimeFormat

class Product {
    User user
    String name
    Long price

    @BindingFormat(Constants.BINDING_DATE_FORMAT)
    Date purchaseDate

    Date dateCreated
    Date lastUpdated

    static belongsTo = [session: Session]

    static constraints = {
    }
}
