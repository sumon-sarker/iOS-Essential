# iOS-Essential [UITabBar]

####  UITabBar Item Action
 - func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem){ ... }

```javascript
class YourClassName: UIViewController, UITabBarDelegate {

    override func viewDidLoad(){
        super.viewDidLoad()
        <YOUR-TAB-BAR-NAME>.delegate = self 
    }

    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        let SelectedTabIndex = tabBar.items?.index(of: item)
        print("Code Goes Here With SelectedTabIndex \(SelectedTabIndex)")
    }
}
```
