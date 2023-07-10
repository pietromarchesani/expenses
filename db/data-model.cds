namespace expenses;
using { Currency, managed, cuid } from '@sap/cds/common';
using from '@sap/cds-common-content';

entity Expenses: managed, cuid {
    description: String(255);
    amount: Decimal;
    currency: Currency;
    expenseType: ExpenseType;
    date: Date;
 }

annotate Expenses with @odata.draft.enabled;

//this is needed, otherwise the enum value will not be validated while insertiing into database
@assert.range
type ExpenseType: String enum {
    FOOD = 'Food';
    HOTEL = 'Hotel';
    FLIGHT = 'Flight';
}