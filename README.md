# iOS-Essential [UITextField]

#### UITextField Keyboard Overflow (Solution)
 - Delegate Targeted TextFields to ViewController

```javascript
import UIKit

class LoginController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var LoginScrollView: UIScrollView!
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        LoginScrollView.setContentOffset(CGPoint(x: 0, y: 60), animated: true)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        LoginScrollView.setContentOffset(CGPoint(x: 0, y: 0), animated: true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
```
