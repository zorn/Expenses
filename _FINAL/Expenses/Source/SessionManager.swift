import Foundation

class SessionManager {
    
    var mutableExpenseCollection = [Int: Expense]()
    var nextExpenseID = 1 as Int
    
    func expenses() -> [Expense] {
        return [Expense](self.mutableExpenseCollection.values)
    }
    
    func addExpense(newExpense: Expense) {
        
    }
    
}