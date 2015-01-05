import UIKit

class ExpenseListViewController : UITableViewController, UITableViewDataSource, UITableViewDelegate {
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellReuseID = "Basic"
        if let cell = tableView.dequeueReusableCellWithIdentifier(cellReuseID) as? UITableViewCell {
            return self.configureCell(cell, indexPath: indexPath)
        } else {
            return UITableViewCell(style: .Default, reuseIdentifier: cellReuseID);
        }
    }
    
    func configureCell(cell: UITableViewCell, indexPath: NSIndexPath) -> UITableViewCell {
        cell.textLabel.text = "Row \(indexPath.row)"
        return cell
    }
    
}