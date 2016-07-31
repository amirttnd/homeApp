package com.app



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class BorrowController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Borrow.list(params), model:[borrowInstanceCount: Borrow.count()]
    }

    def show(Borrow borrowInstance) {
        respond borrowInstance
    }

    def create() {
        respond new Borrow(params)
    }

    @Transactional
    def save(Borrow borrowInstance) {
        if (borrowInstance == null) {
            notFound()
            return
        }

        if (borrowInstance.hasErrors()) {
            respond borrowInstance.errors, view:'create'
            return
        }

        borrowInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'borrow.label', default: 'Borrow'), borrowInstance.id])
                redirect borrowInstance
            }
            '*' { respond borrowInstance, [status: CREATED] }
        }
    }

    def edit(Borrow borrowInstance) {
        respond borrowInstance
    }

    @Transactional
    def update(Borrow borrowInstance) {
        if (borrowInstance == null) {
            notFound()
            return
        }

        if (borrowInstance.hasErrors()) {
            respond borrowInstance.errors, view:'edit'
            return
        }

        borrowInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Borrow.label', default: 'Borrow'), borrowInstance.id])
                redirect borrowInstance
            }
            '*'{ respond borrowInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Borrow borrowInstance) {

        if (borrowInstance == null) {
            notFound()
            return
        }

        borrowInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Borrow.label', default: 'Borrow'), borrowInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'borrow.label', default: 'Borrow'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
