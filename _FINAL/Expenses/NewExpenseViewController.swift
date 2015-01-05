import UIKit

class NewExpenseViewController: UITableViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBAction func save(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func cancel(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
