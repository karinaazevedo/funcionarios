package grails.plugin.databasesession



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PersistentSessionController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PersistentSession.list(params), model:[persistentSessionInstanceCount: PersistentSession.count()]
    }

    def show(PersistentSession persistentSessionInstance) {
        respond persistentSessionInstance
    }

    def create() {
        respond new PersistentSession(params)
    }

    @Transactional
    def save(PersistentSession persistentSessionInstance) {
        if (persistentSessionInstance == null) {
            notFound()
            return
        }

        if (persistentSessionInstance.hasErrors()) {
            respond persistentSessionInstance.errors, view:'create'
            return
        }

        persistentSessionInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'persistentSession.label', default: 'PersistentSession'), persistentSessionInstance.id])
                redirect persistentSessionInstance
            }
            '*' { respond persistentSessionInstance, [status: CREATED] }
        }
    }

    def edit(PersistentSession persistentSessionInstance) {
        respond persistentSessionInstance
    }

    @Transactional
    def update(PersistentSession persistentSessionInstance) {
        if (persistentSessionInstance == null) {
            notFound()
            return
        }

        if (persistentSessionInstance.hasErrors()) {
            respond persistentSessionInstance.errors, view:'edit'
            return
        }

        persistentSessionInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PersistentSession.label', default: 'PersistentSession'), persistentSessionInstance.id])
                redirect persistentSessionInstance
            }
            '*'{ respond persistentSessionInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PersistentSession persistentSessionInstance) {

        if (persistentSessionInstance == null) {
            notFound()
            return
        }

        persistentSessionInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PersistentSession.label', default: 'PersistentSession'), persistentSessionInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'persistentSession.label', default: 'PersistentSession'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
