?-assert(investment(stocks)).
?-assert(investment(combination)).
?-assert(savings_account(adequate)).
?-assert(savings_account(inadequate)).
?-assert(income(adequate)).
?-assert(income(inadequate)).
?-assert(earnings(X,steady)).
?-assert(earnings(X,unsteady)).
?-assert(greater(X,Y)).
?-assert(amount_saved(X)).
?-assert(dependents(X)).


?-assert(investment(savings):-savings_account(inadequate)).
?-assert(investment(stocks):-(savings_account(adequate), income(adequate))).
?-assert(investment(combination):-(savings_account(adequate), income(inadequate))).
?-assert(savings_account(adequate):-(amount_saved(X), dependents(Y), X>5000*Y)).
?-assert(savings_account(inadequate):-(amount_saved(X), dependents(Y), X=<5000*Y)).
?-assert(income(adequate):-(earnings(X, steady), dependents(Y),X>15000+4000*Y)).
?-assert(income(inadequate):-(earnings(X, steady), dependents(Y), X=<15000+4000*Y)).
?-assert(income(inadequate):-(earnings(X, unsteady))).


?-assert(amount_saved(25000)).
?-assert(earnings(35000, steady)).
?-assert(dependents(4)).
