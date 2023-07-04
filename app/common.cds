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
    description @title: 'Description';
    date @title : 'Date';
    amount @title : 'Amount';
    currency @title : 'Currency';
    expenseType @title : 'Expense Type';
}