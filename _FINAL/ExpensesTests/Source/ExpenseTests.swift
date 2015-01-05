import UIKit
import XCTest
import Expenses

class ExpenseTests: XCTestCase {

    func testExpenseCanBeCreatedWithAName() {
        let expectation = "Testing 1 2 3"
        let expense = Expense(name: expectation)
        if let actual = expense.name {
            XCTAssertEqual(actual, expectation)
        } else {
            XCTFail("actual should never be nil");
        }
    }

}
