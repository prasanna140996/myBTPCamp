using { anubhav.db.master, anubhav.db.transaction } from '../db/datamodel';
using { cappo.cds } from '../db/CDSViews';




service CatalogService @(path: 'CatalogService') {
    //demo
    entity EmployeeSet as projection on master.employees;
    entity AddressSet as projection on master.address;
    entity POs as projection on transaction.purchaseorder
    actions{
        action boost() returns POs;
    };
    function getLargestOrder() returns POs;
    entity POItems as projection on transaction.poitems;
    entity BusinessPartnerSet as projection on master.businesspartner;
    entity ProductSet as projection on master.product;


    //entity ProdItems as projection on cds.CDSViews.ItemView;
    //entity ProductSet as projection on cds.CDSViews.ProductView;


}
