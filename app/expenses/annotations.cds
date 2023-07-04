using ExpenseService as service from '../../srv/expense-services';

 // Expenses List Report Page
 annotate service.Expenses with @(UI : {
    SelectionFields : [expenseType],
    Identification : [{Value : ID}],
    // Define the table columns
    LineItem : [
       {Value : ID},
       {Value : description},
       {Value : amount},
       {Value : currency_code},
       {Value : expenseType},
       {Value: date},
    ],
 });