const cds = require ('@sap/cds')
module.exports = cds.service.impl (function() {

  // Get the CSN definition for Expenses from the db schema for sub-sequent queries
  // ( Note: we explicitly specify the namespace to support embedded reuse )
  const { Expenses } = this.entities('expenses');

  this.before(['READ'], 'Expenses',  req => {
  
    if (!req.user) return req.reject(400, 'You must be identified to read an expense');

    //filter by current user
    let query = req.query;
    query.SELECT.where?.push('and', {ref:['CreatedBy']}, '=', {val:req.user.id});        
  })
})