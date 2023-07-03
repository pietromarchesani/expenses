namespace expenses;
using { Currency, managed, cuid } from '@sap/cds/common';

entity Expenses: managed, cuid {
    date: Date;
    value: Decimal;
    currency: Currency;
    type: ExpenseType;
}

type ExpenseType: String enum {
    Food;
    Hotel;
    Flight;
}