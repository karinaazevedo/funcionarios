package grails.plugin.databasesession



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PersistentSessionAttributeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PersistentSessionAttribute.list(params), model:[persistentSessionAttributeInstanceCount: PersistentSessionAttribute.count()]
    }

    def show(PersistentSessionAttribute persistentSessionAttributeInstance) {
        respond persistentSessionAttributeInstance
    }

    def create() {
        respond new PersistentSessionAttribute(params)
    }

    @Transactional
    def save(PersistentSessionAttribute persistentSessionAttributeInstance) {
        if (persistentSessionAttributeInstance == null) {
            notFound()
            return
        }

        if (persistentSessionAttributeInstance.hasErrors()) {
            respond persistentSessionAttributeInstance.errors, view:'create'
            return
        }

        persistentSessionAttributeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'persistentSessionAttribute.label', default: 'PersistentSessionAttribute'), persistentSessionAttributeInstance.id])
                redirect persistentSessionAttributeInstance
            }
            '*' { respond persistentSessionAttributeInstance, [status: CREATED] }
        }
    }

    def edit(PersistentSessionAttribute persistentSessionAttributeInstance) {
        respond persistentSessionAttributeInstance
    }

    @Transactional
    def update(PersistentSessionAttribute persistentSessionAttributeInstance) {
        if (persistentSessionAttributeInstance == null) {
            notFound()
            return
        }

        if (persistentSessionAttributeInstance.hasErrors()) {
            respond persistentSessionAttributeInstance.errors, view:'edit'
            return
        }

        persistentSessionAttributeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PersistentSessionAttribute.label', default: 'PersistentSessionAttribute'), persistentSessionAttributeInstance.id])
                redirect persistentSessionAttributeInstance
            }
            '*'{ respond persistentSessionAttributeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PersistentSessionAttribute persistentSessionAttributeInstance) {

        if (persistentSessionAttributeInstance == null) {
            notFound()
            return
        }

        persistentSessionAttributeInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PersistentSessionAttribute.label', default: 'PersistentSessionAttribute'), persistentSessionAttributeInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'persistentSessionAttribute.label', default: 'PersistentSessionAttribute'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
