import UIKit
import XCTest

class SessionManagerTests: XCTestCase {

    func testSessionManagerStartsWithAnEmptyExpenseCollection() {
        let sessionManager = SessionManager()
        XCTAssert(sessionManager.expenses().count == 0, "???");
    }
    
    func testSessionManagerCanAddExpense() {
        let sessionManager = SessionManager()
        let carExpense = Expense(name: "Bought a car")
        sessionManager.addExpense(carExpense)
        XCTAssert(sessionManager.expenses().count == 1, "???");
        if let foundExpenseIndex = find(sessionManager.expenses(), carExpense) {
            XCTAssertEqual(foundExpenseIndex, 0, "???")
        } else {
            XCTFail("should always be able to find expense")
        }
        
        let boatExpense = Expense(name: "Bought a boat")
        sessionManager.addExpense(boatExpense)
        XCTAssert(sessionManager.expenses().count == 2, "???");
        if let foundExpenseIndex = find(sessionManager.expenses(), boatExpense) {
            XCTAssertEqual(foundExpenseIndex, 1, "???")
        } else {
            XCTFail("should always be able to find expense")
        }

    }



}
