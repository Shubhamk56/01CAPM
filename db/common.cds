namespace sk.common;

// using { sap, Currency,temporal, managed   } from '@sap/cds/common';

type Gender : String(1) enum{
    male = 'M';
    femele = 'F';
    other = 'O';
};

type AmountT : Decimal(15,2);
// @(
//     Semantics.amount.currencyCode : 'CURRENCY_CODE',
//     sap.unit : 'CURRENCY_CODE'
// );


abstract entity Amount  {
            CURRENCY_CODE : String(4);
        NETAMOUNT : AmountT;
        GROSSAMOUNT : AmountT   ;
        FRIEGHTAMOUNT : AmountT;
}

type phoneNumber : String(30)@assert.format : '/\(?([0-9]{3})\)?([ .-]?)([0-9]{3})\2([0-9]{4})/';
