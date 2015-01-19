import Foundation

class SessionManager {
    
    var mutableExpenseCollection = [Expense]()
    
    func expenses() -> [Expense] {
        return self.mutableExpenseCollection
    }
    
    func addExpense(newExpense: Expense) {
        self.mutableExpenseCollection.append(newExpense)
    }
    
}