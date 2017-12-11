# iOS-Essential [UINavigationController]

####  Hide Back Buttons
 - self.navigationItem.setHidesBackButton(true, animated:true);

```javascript
override func viewDidLoad() {
    super.viewDidLoad()
    self.navigationItem.setHidesBackButton(true, animated:true);
}
```

####  Right Button Programmatically
 - UIBarButtonItem()

```javascript
override func viewDidLoad() {
    super.viewDidLoad()

    let rightButtonItem = UIBarButtonItem(
        title  : "Title",
        style  : UIBarButtonItemStyle.done,
        target : self,
        action : #selector(RightButtonAction(sender:))
    )
    self.navigationItem.rightBarButtonItem = rightButtonItem
}

@objc func RightButtonAction(sender : UIBarButtonItem) {
    print("I Am Here ...")
}
```
#### Multiple UIBarButtonItems on right side of Navigation Bar

```javascript
override func viewDidLoad() {
    super.viewDidLoad()

    let editImage   = UIImage(named: "plus")!
    let searchImage = UIImage(named: "search")!

    let editButton   = UIBarButtonItem(image: editImage,  style: .Plain, target: self, action: "didTapEditButton:")
    let searchButton = UIBarButtonItem(image: searchImage,  style: .Plain, target: self, action: "didTapSearchButton:")
    
    navigationItem.rightBarButtonItems = [editButton, searchButton]
}

func didTapEditButton(sender: AnyObject){
    print("I Am EDIT ...")
}

func didTapSearchButton(sender: AnyObject){
    print("I Am SEARCH ...")
}
```
