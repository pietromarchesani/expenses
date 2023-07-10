using expenses as exp from '../db/data-model';

annotate exp.Expenses with {
    ID @(
        UI.Hidden,
    );
    createdBy @(
        UI.Hidden,
    );
    createdAt @(
        UI.Hidden,
    );
    modifiedBy @(
        UI.Hidden,
    );
    modifiedAt @(
        UI.Hidden,
    );
    description @title: '{@i18n>description}';
    date @title : '{@i18n>date}';
    amount @title : '{@i18n>amount}';

    expenseType @title: 'Expense Type';

   currency @(Common : {
    // show descr, not code for currency in the context of expenses
    Text            : currency.descr,
    TextArrangement : #TextOnly,
    ValueList       : {
    Label          : 'Currency',
    // this reference the collection/association in the model
    CollectionPath : 'Currencies',
    // these are parameters used during the rendering of the collection data value/list
    Parameters     : [
       {
       $Type : 'Common.ValueListParameterInOut',
       LocalDataProperty : currency_code,
       ValueListProperty : 'code'
       },
       {
       $Type : 'Common.ValueListParameterDisplayOnly',
       ValueListProperty : 'descr'
       }
    ]
    }
   });

    expenseType @(Common : {
    // show descr, not code for currency in the context of expenses
    Text            : expenseType.descr,
    TextArrangement : #TextOnly,
    ValueList       : {
    Label          : 'Expense Type',
    // this reference the collection/association in the model
    CollectionPath : 'ExpenseTypes',
    // these are parameters used during the rendering of the collection data value/list
    Parameters     : [
       {
       $Type : 'Common.ValueListParameterInOut',
       LocalDataProperty : expenseType_code,
       ValueListProperty : 'code'
       },
       {
       $Type : 'Common.ValueListParameterDisplayOnly',
       ValueListProperty : 'descr'
       }
    ]
    }
   });

}