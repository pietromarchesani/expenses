using ExpenseService as service from '../../srv/expense-services';

 // Expenses List Report Page
 annotate service.Expenses with @(UI : {
    SelectionFields : [expenseType_code],
    Identification : [{Value : ID}],
    // Define the table columns
    LineItem : [
       {Value : ID},
       {Value : description},
       {Value : amount},
       {Value : currency_code},
       {Value : expenseType_code},
       {Value: date},
    ],
 });

  // Expenses Object Report Page
 annotate service.Expenses with @(UI : {
   HeaderInfo : {
       TypeName : 'Expense',
       TypeNamePlural : 'Expenses',
       Title : {
          $Type : 'UI.DataField',
          Value : description
       },
       Description : {
          $Type : 'UI.DataField',
          Value : expenseType_code
       }
    },
     Facets : [{
        $Type : 'UI.ReferenceFacet',
        Label : 'Main',
        Target : '@UI.FieldGroup#Main',
     }],
     FieldGroup #Main : {Data : [
       {Value : description},
       {Value : amount},
       {Value: currency_code},
       {Value : expenseType_code},
       {Value : date},
    ]},
 });