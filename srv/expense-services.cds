using expenses as exp from '../db/data-model';

@path: 'service/expenses'
service ExpenseService {

entity Expenses @(restrict : [
            {
                grant : [ 'READ' ],
                to : [ 'ExpenseViewer' ]
            },
            {
                grant : [ '*' ],
                to : [ 'ExpenseManager' ]
            }
        ])
        as projection on exp.Expenses;

}