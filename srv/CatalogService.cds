using { sk.db.datamodel } from '../db/datamodel';


service CatalogService {

    entity employeeSet as projection on datamodel.employee;
    entity vendor as projection on datamodel.vendor;
    entity address as projection on datamodel.address;

    @cds.redirection.target
    entity ven @( title : 'Vendor Ex' )
    as projection on datamodel.vendor{
        *,
        ADDRESS_ID : redirected to address
    }
}