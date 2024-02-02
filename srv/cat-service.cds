using ComputerShop.db as dataModel from '../db/data-model';

service CatalogService
{
    entity Customers as
        projection on dataModel.Customers;

    entity Computers as
        projection on dataModel.Computers;

    @odata.draft.enabled
    entity Sales as
        projection on dataModel.Sales;

    @readonly
    entity sales_overview as
        projection on dataModel.sales_overview;
}
