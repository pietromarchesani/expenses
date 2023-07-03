using expenses as exp from '../db/data-model';

annotate exp.Expenses with {
    date @title : 'Date';
    value @title : 'Value';
    currency @title : 'Currency';
    type @title : 'Expense Type';
}