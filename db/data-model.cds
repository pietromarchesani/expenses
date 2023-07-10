namespace expenses;
using { Currency, managed, cuid, sap } from '@sap/cds/common';
using from '@sap/cds-common-content';

entity Expenses: managed, cuid {
    description: String(255);
    amount: Decimal;
    currency: Currency;
    expenseType: ExpenseType;
    date: Date;
 }

annotate Expenses with @odata.draft.enabled;

type ExpenseType: Association to ExpenseTypes;

// new code list for regions
entity ExpenseTypes : sap.common.CodeList {
  key code : String(6) @title : 'Expense Type code';
}