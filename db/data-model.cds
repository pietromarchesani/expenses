namespace expenses;
using { Currency, managed, cuid, sap } from '@sap/cds/common';
using from '@sap/cds-common-content';

entity Expenses: managed, cuid {
    description: String(255);
    amount: Decimal;
    currency: Currency;
    expenseType: ExpenseType;
    date: Date;
    project: Project;
 }

type Project: Association to Projects;

// annotate Expenses with @odata.draft.enabled;

type ExpenseType: Association to ExpenseTypes;

// new code list for regions
entity ExpenseTypes : sap.common.CodeList {
  key code : String(6) @title : 'Expense Type code';
}

entity Projects {
  key code : String(20);
  description : String(255);
}

// annotate Projects with @odata.draft.enabled;