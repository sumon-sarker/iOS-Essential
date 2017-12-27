# iOS-Essential [UIViewController]
 
```javascript
import UIKit

class ViewController: UIViewController{

    func MyFunction() {
        let MyData = "Value Is Here"
        performSegue(withIdentifier: "ItemModal", sender: MyData)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        /*`ItemModal` is reUsable Identifier*/
        if (segue.identifier == "ItemModal") {
            let MyObject = segue.destination as! ModalViewController
            MyObject.OtherClassVar = sender
        }
    }
}


class ModalViewController: UIViewController {
    
    var OtherClassVar : String?

    override func viewDidLoad() {
        super.viewDidLoad()
        print(OtherClassVar)
    }
}
```
