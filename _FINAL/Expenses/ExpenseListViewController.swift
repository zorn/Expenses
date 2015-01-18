import UIKit

class ExpenseListViewController : UITableViewController, UITableViewDataSource, UITableViewDelegate {
    
    var expenseCollection = NSMutableArray()
    
    // MARK: - UIViewController
    
    override func viewDidLoad() {
        self.expenseCollection.addObject(Expense(name: "Test Expense 1"))
        self.expenseCollection.addObject(Expense(name: "Test Expense 2"))
        self.expenseCollection.addObject(Expense(name: "Test Expense 3"))
        self.expenseCollection.addObject(Expense(name: "Test Expense 4"))
        super.viewDidLoad()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let identifier = segue.identifier {
            if (identifier == "test") {
                
            }
        }
    }
    
    // MARK: - UITableViewDataSource
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return expenseCollection.count;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // FIXME: What I don't like about this implementation is that I'm duplicating the "desgin" of the "Basic" cell in the storyboard and here in the else branch. I want to keep the storyboard version as it lets me make a segue. Preferably I'd have the app crash if the storyboard design was not available. I could do that by explicitly unpacking the optional I get back from dequeueReusableCellWithIdentifier but that feels "wrong" -- feedback welcome.
        let cellReuseID = "Basic"
        if let cell = tableView.dequeueReusableCellWithIdentifier(cellReuseID) as? UITableViewCell {
            return self.configureCell(cell, indexPath: indexPath)
        } else {
            let newCell = UITableViewCell(style: .Default, reuseIdentifier: cellReuseID);
            return self.configureCell(newCell, indexPath: indexPath)
        }
    }
    
    // MARK: - Private
    
    func configureCell(cell: UITableViewCell, indexPath: NSIndexPath) -> UITableViewCell {
        let expense = self.expenseCollection.objectAtIndex(indexPath.row) as Expense
        cell.textLabel.text = expense.name
        return cell
    }
    
}