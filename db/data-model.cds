namespace expenses;
using { Currency, managed, cuid } from '@sap/cds/common';

entity Expenses: managed, cuid {
    description: String(255);
    amount: Decimal;
    currency: Currency;
    expenseType: ExpenseType;
    date: Date;
 }

type ExpenseType: String enum {
    Food;
    Hotel;
    Flight;
}