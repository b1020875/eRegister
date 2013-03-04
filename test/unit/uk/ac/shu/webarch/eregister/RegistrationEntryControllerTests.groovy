package uk.ac.shu.webarch.eregister



import org.junit.*
import grails.test.mixin.*

@TestFor(RegistrationEntryController)
@Mock(RegistrationEntry)
class RegistrationEntryControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/registrationEntry/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.registrationEntryInstanceList.size() == 0
        assert model.registrationEntryInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.registrationEntryInstance != null
    }

    void testSave() {
        controller.save()

        assert model.registrationEntryInstance != null
        assert view == '/registrationEntry/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/registrationEntry/show/1'
        assert controller.flash.message != null
        assert RegistrationEntry.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/registrationEntry/list'

        populateValidParams(params)
        def registrationEntry = new RegistrationEntry(params)

        assert registrationEntry.save() != null

        params.id = registrationEntry.id

        def model = controller.show()

        assert model.registrationEntryInstance == registrationEntry
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/registrationEntry/list'

        populateValidParams(params)
        def registrationEntry = new RegistrationEntry(params)

        assert registrationEntry.save() != null

        params.id = registrationEntry.id

        def model = controller.edit()

        assert model.registrationEntryInstance == registrationEntry
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/registrationEntry/list'

        response.reset()

        populateValidParams(params)
        def registrationEntry = new RegistrationEntry(params)

        assert registrationEntry.save() != null

        // test invalid parameters in update
        params.id = registrationEntry.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/registrationEntry/edit"
        assert model.registrationEntryInstance != null

        registrationEntry.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/registrationEntry/show/$registrationEntry.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        registrationEntry.clearErrors()

        populateValidParams(params)
        params.id = registrationEntry.id
        params.version = -1
        controller.update()

        assert view == "/registrationEntry/edit"
        assert model.registrationEntryInstance != null
        assert model.registrationEntryInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/registrationEntry/list'

        response.reset()

        populateValidParams(params)
        def registrationEntry = new RegistrationEntry(params)

        assert registrationEntry.save() != null
        assert RegistrationEntry.count() == 1

        params.id = registrationEntry.id

        controller.delete()

        assert RegistrationEntry.count() == 0
        assert RegistrationEntry.get(registrationEntry.id) == null
        assert response.redirectedUrl == '/registrationEntry/list'
    }
}
