package grails.plugin.databasesession



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PersistentSessionAttributeValueController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PersistentSessionAttributeValue.list(params), model:[persistentSessionAttributeValueInstanceCount: PersistentSessionAttributeValue.count()]
    }

    def show(PersistentSessionAttributeValue persistentSessionAttributeValueInstance) {
        respond persistentSessionAttributeValueInstance
    }

    def create() {
        respond new PersistentSessionAttributeValue(params)
    }

    @Transactional
    def save(PersistentSessionAttributeValue persistentSessionAttributeValueInstance) {
        if (persistentSessionAttributeValueInstance == null) {
            notFound()
            return
        }

        if (persistentSessionAttributeValueInstance.hasErrors()) {
            respond persistentSessionAttributeValueInstance.errors, view:'create'
            return
        }

        persistentSessionAttributeValueInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'persistentSessionAttributeValue.label', default: 'PersistentSessionAttributeValue'), persistentSessionAttributeValueInstance.id])
                redirect persistentSessionAttributeValueInstance
            }
            '*' { respond persistentSessionAttributeValueInstance, [status: CREATED] }
        }
    }

    def edit(PersistentSessionAttributeValue persistentSessionAttributeValueInstance) {
        respond persistentSessionAttributeValueInstance
    }

    @Transactional
    def update(PersistentSessionAttributeValue persistentSessionAttributeValueInstance) {
        if (persistentSessionAttributeValueInstance == null) {
            notFound()
            return
        }

        if (persistentSessionAttributeValueInstance.hasErrors()) {
            respond persistentSessionAttributeValueInstance.errors, view:'edit'
            return
        }

        persistentSessionAttributeValueInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PersistentSessionAttributeValue.label', default: 'PersistentSessionAttributeValue'), persistentSessionAttributeValueInstance.id])
                redirect persistentSessionAttributeValueInstance
            }
            '*'{ respond persistentSessionAttributeValueInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PersistentSessionAttributeValue persistentSessionAttributeValueInstance) {

        if (persistentSessionAttributeValueInstance == null) {
            notFound()
            return
        }

        persistentSessionAttributeValueInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PersistentSessionAttributeValue.label', default: 'PersistentSessionAttributeValue'), persistentSessionAttributeValueInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'persistentSessionAttributeValue.label', default: 'PersistentSessionAttributeValue'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
