import UIKit

class ExpenseListViewController : UITableViewController, UITableViewDataSource, UITableViewDelegate {
    
    // MARK: - UITableViewDataSource
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // FIXME: What I don't like about this implementation is that I'm duplicating the "desgin" of the "Basic" cell in the storyboard and here in the else branch. I want to keep the storyboard version as it lets me make a segue. Preferably I'd have the app crash if the storyboard design was not available. I could do that by explicitly unpacking the optional I get back from dequeueReusableCellWithIdentifier but that feels "wrong" -- feedback welcome.
        let cellReuseID = "Basic"
        if let cell = tableView.dequeueReusableCellWithIdentifier(cellReuseID) as? UITableViewCell {
            return self.configureCell(cell, indexPath: indexPath)
        } else {
            return UITableViewCell(style: .Default, reuseIdentifier: cellReuseID);
        }
    }
    
    // MARK: - Private
    
    func configureCell(cell: UITableViewCell, indexPath: NSIndexPath) -> UITableViewCell {
        cell.textLabel.text = "Row \(indexPath.row)"
        return cell
    }
    
}