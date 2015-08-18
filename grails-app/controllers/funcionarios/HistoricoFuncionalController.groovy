package funcionarios



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class HistoricoFuncionalController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond HistoricoFuncional.list(params), model:[historicoFuncionalInstanceCount: HistoricoFuncional.count()]
    }

    def show(HistoricoFuncional historicoFuncionalInstance) {
        respond historicoFuncionalInstance
    }

    def create() {
        respond new HistoricoFuncional(params)
    }

    @Transactional
    def save(HistoricoFuncional historicoFuncionalInstance) {
        if (historicoFuncionalInstance == null) {
            notFound()
            return
        }

        if (historicoFuncionalInstance.hasErrors()) {
            respond historicoFuncionalInstance.errors, view:'create'
            return
        }

        historicoFuncionalInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'historicoFuncional.label', default: 'HistoricoFuncional'), historicoFuncionalInstance.id])
                redirect historicoFuncionalInstance
            }
            '*' { respond historicoFuncionalInstance, [status: CREATED] }
        }
    }

    def edit(HistoricoFuncional historicoFuncionalInstance) {
        respond historicoFuncionalInstance
    }

    @Transactional
    def update(HistoricoFuncional historicoFuncionalInstance) {
        if (historicoFuncionalInstance == null) {
            notFound()
            return
        }

        if (historicoFuncionalInstance.hasErrors()) {
            respond historicoFuncionalInstance.errors, view:'edit'
            return
        }

        historicoFuncionalInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'HistoricoFuncional.label', default: 'HistoricoFuncional'), historicoFuncionalInstance.id])
                redirect historicoFuncionalInstance
            }
            '*'{ respond historicoFuncionalInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(HistoricoFuncional historicoFuncionalInstance) {

        if (historicoFuncionalInstance == null) {
            notFound()
            return
        }

        historicoFuncionalInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'HistoricoFuncional.label', default: 'HistoricoFuncional'), historicoFuncionalInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'historicoFuncional.label', default: 'HistoricoFuncional'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
