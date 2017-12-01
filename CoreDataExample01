import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var DataTable: UITableView!
    
    @IBOutlet weak var Name: UITextField!
    @IBOutlet weak var Email: UITextField!
    /*From Core Data (Users Entity) Objects with fields (name,email)*/
    var AllUsers = [Users]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func GetUsersdata(){
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        do{
            AllUsers = try context.fetch(Users.fetchRequest())
        }catch{
            print("Core Data fetch Error!")
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.GetUsersdata()
    }


    @IBAction func SaveData(_ sender: Any) {
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let task = Users(context: context)
        
        let Name = self.Name.text!
        let Email = self.Email.text!
        
        task.name   = Name
        task.email  = Email
        
        /*Save Data*/
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        /*Update Users and Reload Data*/
        GetUsersdata()
        self.DataTable.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AllUsers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = AllUsers[indexPath.row].name
        return cell
    }
    
}
