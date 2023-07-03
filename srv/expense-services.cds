using expenses as exp from '../db/data-model';

service ExpenseService {

entity Expenses as projection on exp.Expenses;

}