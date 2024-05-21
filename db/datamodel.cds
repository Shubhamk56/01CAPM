namespace sk.db;

using { cuid , managed } from '@sap/cds/common';

using { sk.common } from './common';

//Like SE11
context datamodel {

entity vendor {
    key NODE_ID : String(36); 
    	VENDOR_ID	 : String(10);
        VENDOR_NAME	 : String(50);
        EMAIL : String(50);
        ADDRESS_ID : Association to  address;
        poheader : Association to one poheader on poheader.VENDOR_ID = $self;

}

annotate vendor with {
    VENDOR_ID @title : '{i18n>v_code}';
    VENDOR_NAME @title : '{i18n>v_name}';
};

entity address {
    key NODE_ID : String(36);	
    STREET	 : String(50);
    COUNTRY	 : String(30);
    POST_CODE : String(10);
vendor : Association to one vendor on vendor.ADDRESS_ID = $self;
}

entity employee : cuid, managed {

NAMEFIRST : String(50);
NAMELAST : String(50);
GENDER : common.Gender;
PHONE : String(10);

}

entity poheader : cuid , managed {
    PONUMBER : String(10);
    PRNUMBER : String(10);
    DOCTYPE : String(2);
    AMOUNT : String(10);
    VENDOR_ID : Association to vendor;
}

entity poitem :   cuid , managed , common.Amount {
        PONUMBER : String(10);
        POITEM : String(5);
        PLANT : String(4);
        MATERIAL : Association to materialText;
        CURRENCY_CODE : String(3);
        
}

entity materialText  : cuid {
    MATERIAL : String(10);
    DESCRIPTION : String(50);
   // poitem  : Association to many poitem.MATERIAL = $self;
}



}


