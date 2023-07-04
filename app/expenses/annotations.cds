using ExpenseService as service from '../../srv/expense-services';

 // Expenses List Report Page
 annotate service.Expenses with @(UI : {
    SelectionFields : [type],
    Identification : [{Value : ID}],
    // Define the table columns
    LineItem : [
       {Value : ID},
       {Value: date},
       {Value : type},
       {Value : value},
       {Value : currency_code},
    ],
 });