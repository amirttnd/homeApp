package com.app

class Product {
    User user
    String Name
    Long price
    Date purchaseDate
    Date dateCreated
    Date lastUpdated

    static belongsTo = [session: Session]

    static constraints = {
    }
}
