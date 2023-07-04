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

type ExpenseType: String enum {
    Food;
    Hotel;
    Flight;
}