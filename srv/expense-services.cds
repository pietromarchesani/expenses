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

// annotate Expenses with @odata.draft.enabled;

entity Projects as projection on exp.Projects;

// annotate Projects with @odata.draft.enabled;

}