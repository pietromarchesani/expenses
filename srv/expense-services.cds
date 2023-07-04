using expenses as exp from '../db/data-model';

@path: 'service/expenses'
service ExpenseService {

entity Expenses as projection on exp.Expenses;

}