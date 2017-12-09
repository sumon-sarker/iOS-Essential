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
