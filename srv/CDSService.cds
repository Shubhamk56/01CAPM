using { sk.db.CDSVendor } from '../db/CDSViews';

service CDSService
{
    entity CDSView as
        projection on CDSVendor.VendorCDS;
}
