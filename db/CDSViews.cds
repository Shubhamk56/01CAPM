namespace sk.db;

using { sk.db.datamodel } from './datamodel';

context CDSVendor {
    define view VendorCDS  as 
    select from datamodel.vendor{
        key VENDOR_ID  as![Vendor],
        EMAIL as![EmailID],
        VENDOR_NAME as![VendorName],
        EMAIL as![Email],
        key ADDRESS_ID.STREET as![Street] 
    }
}


