import RealmSwift
import UIKit


class ViewController: UIViewController {

    var tasks = ["Do a Jumping Jack at DesertHacks" , "Dance crazy infront of your crush", "Throw your friend's computer"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeuReusableCell(withIdentifier: "MyTab", for: indexPath)
        cell.textLabel?.text = "\(indexPath.row)"
        return cell
    }
}

