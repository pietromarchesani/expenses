using expenses as exp from '../db/data-model';

annotate exp.Expenses with {
    description @title: 'Description';
    date @title : 'Date';
    amount @title : 'Amount';
    currency @title : 'Currency';
    expenseType @title : 'Expense Type';
}