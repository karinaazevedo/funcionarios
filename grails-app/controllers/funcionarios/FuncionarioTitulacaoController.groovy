package funcionarios



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class FuncionarioTitulacaoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond FuncionarioTitulacao.list(params), model:[funcionarioTitulacaoInstanceCount: FuncionarioTitulacao.count()]
    }

    def show(FuncionarioTitulacao funcionarioTitulacaoInstance) {
        respond funcionarioTitulacaoInstance
    }

    def create() {
        respond new FuncionarioTitulacao(params)
    }

    @Transactional
    def save(FuncionarioTitulacao funcionarioTitulacaoInstance) {
        if (funcionarioTitulacaoInstance == null) {
            notFound()
            return
        }

        if (funcionarioTitulacaoInstance.hasErrors()) {
            respond funcionarioTitulacaoInstance.errors, view:'create'
            return
        }

        funcionarioTitulacaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'funcionarioTitulacao.label', default: 'FuncionarioTitulacao'), funcionarioTitulacaoInstance.id])
                redirect funcionarioTitulacaoInstance
            }
            '*' { respond funcionarioTitulacaoInstance, [status: CREATED] }
        }
    }

    def edit(FuncionarioTitulacao funcionarioTitulacaoInstance) {
        respond funcionarioTitulacaoInstance
    }

    @Transactional
    def update(FuncionarioTitulacao funcionarioTitulacaoInstance) {
        if (funcionarioTitulacaoInstance == null) {
            notFound()
            return
        }

        if (funcionarioTitulacaoInstance.hasErrors()) {
            respond funcionarioTitulacaoInstance.errors, view:'edit'
            return
        }

        funcionarioTitulacaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'FuncionarioTitulacao.label', default: 'FuncionarioTitulacao'), funcionarioTitulacaoInstance.id])
                redirect funcionarioTitulacaoInstance
            }
            '*'{ respond funcionarioTitulacaoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(FuncionarioTitulacao funcionarioTitulacaoInstance) {

        if (funcionarioTitulacaoInstance == null) {
            notFound()
            return
        }

        funcionarioTitulacaoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'FuncionarioTitulacao.label', default: 'FuncionarioTitulacao'), funcionarioTitulacaoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'funcionarioTitulacao.label', default: 'FuncionarioTitulacao'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
