package uk.ac.shu.webarch.eregister

import org.springframework.dao.DataIntegrityViolationException

class RegistrationEntryController {

    static allowedMethods = [save: "GET", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [registrationEntryInstanceList: RegistrationEntry.list(params), registrationEntryInstanceTotal: RegistrationEntry.count()]
    }

    def create() {
        [registrationEntryInstance: new RegistrationEntry(params)]
    }

    def save() {
        def registrationEntryInstance = new RegistrationEntry(params)
        if (!registrationEntryInstance.save(flush: true)) {
            render(view: "create", model: [registrationEntryInstance: registrationEntryInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'registrationEntry.label', default: 'RegistrationEntry'), registrationEntryInstance.id])
        redirect(action: "show", id: registrationEntryInstance.id)
    }

    def show(Long id) {
        def registrationEntryInstance = RegistrationEntry.get(id)
        if (!registrationEntryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'registrationEntry.label', default: 'RegistrationEntry'), id])
            redirect(action: "list")
            return
        }

        [registrationEntryInstance: registrationEntryInstance]
    }

    def edit(Long id) {
        def registrationEntryInstance = RegistrationEntry.get(id)
        if (!registrationEntryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'registrationEntry.label', default: 'RegistrationEntry'), id])
            redirect(action: "list")
            return
        }

        [registrationEntryInstance: registrationEntryInstance]
    }

    def update(Long id, Long version) {
        def registrationEntryInstance = RegistrationEntry.get(id)
        if (!registrationEntryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'registrationEntry.label', default: 'RegistrationEntry'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (registrationEntryInstance.version > version) {
                registrationEntryInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'registrationEntry.label', default: 'RegistrationEntry')] as Object[],
                          "Another user has updated this RegistrationEntry while you were editing")
                render(view: "edit", model: [registrationEntryInstance: registrationEntryInstance])
                return
            }
        }

        registrationEntryInstance.properties = params

        if (!registrationEntryInstance.save(flush: true)) {
            render(view: "edit", model: [registrationEntryInstance: registrationEntryInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'registrationEntry.label', default: 'RegistrationEntry'), registrationEntryInstance.id])
        redirect(action: "show", id: registrationEntryInstance.id)
    }

    def delete(Long id) {
        def registrationEntryInstance = RegistrationEntry.get(id)
        if (!registrationEntryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'registrationEntry.label', default: 'RegistrationEntry'), id])
            redirect(action: "list")
            return
        }

        try {
            registrationEntryInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'registrationEntry.label', default: 'RegistrationEntry'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'registrationEntry.label', default: 'RegistrationEntry'), id])
            redirect(action: "show", id: id)
        }
    }
}
