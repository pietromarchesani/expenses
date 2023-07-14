using from '../common';
using ExpenseService as service from '../../srv/expense-services';

 // Expenses List Report Page
 annotate service.Expenses with @(UI : {
    SelectionFields : [expenseType_code],
    Identification : [{Value : ID}],
    // Define the table columns
    LineItem : [
       {Value : ID},
       {Value : description,
           Label : '{i18n>description}'},
       {Value : amount,
           Label : '{i18n>amount}'},
       {Value : currency_code,
           Label : '{i18n>Currency}'},
       {Value : expenseType_code,
           Label : '{i18n>ExpenseType}'},
       {Value : project_code,
           Label : '{i18n>Project}',
           ![@UI.Importance] : #High},
       {Value: date,
           Label : '{i18n>date}'},
    ],
 });

  // Expenses Object Report Page
 annotate service.Expenses with @(UI : {
   HeaderInfo : {
       TypeName : '{i18n>Expense}',
       TypeNamePlural : '{i18n>Expenses}',
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
        Label : '{i18n>Main}',
        Target : '@UI.FieldGroup#Main',
     }],
     FieldGroup #Main : {Data : [
       {Value : description,
           Label : '{@i18n>description}'},
       {Value : amount,
           Label : '{@i18n>amount}'},
       {Value: currency_code,
           Label : '{i18n>Currency}'},
       {Value : expenseType_code,
           Label : '{i18n>ExpenseType}'},
       {Value : project_code,
           $Type: 'UI.DataFieldWithNavigationPath',
           Label : '{i18n>Project}',
           Target : toProject},
       {Value : date,
           Label : '{@i18n>date}'},
    ]},
 });


 // Expenses List Report Page
 annotate service.Projects with @(UI : {
    SelectionFields : [description],
    Identification : [{Value : code}],
    // Define the table columns
    LineItem : [
       {Value : code},
       {Value : description},
    ],
 });
annotate service.Expenses with {
    currency @Common.ValueList : {
        Label : '{i18n>Currency}',
        CollectionPath : 'Currencies',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : currency_code,
                ValueListProperty : 'code',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'descr',
            },
        ],
    }
};


annotate service.Expenses with {
    expenseType @Common.Label : '{i18n>ExpenseType}'
};
annotate service.Expenses with {
    project @Common.Text : {
            $value : project.code,
            ![@UI.TextArrangement] : #TextOnly,
        }
};

