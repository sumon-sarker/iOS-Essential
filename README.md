# iOS-Essential [UIView]

#### Animation
 - UIView.animate(withDuration: TimeInterval, animations: <() -> Void>)
```javascript
UIView.animate(withDuration: 0.3) {
    /*Magic goes here*/
}
```
 - UIView.animate(withDuration: TimeInterval, animations: <() -> Void>, completion: <((Bool) -> Void)?((Bool) -> Void)?(Bool) -> Void>)
```javascript
UIView.animate(withDuration: 0.3, animations: {
      /*Magic goes here*/
  }) { (result) in
      /*Magic goes here*/
}
```


#### Transition
 - With Single View
```javascript
UIView.transition(with: View1, duration: 3, options: [
    .transitionCurlDown,
    .showHideTransitionViews
  ], animations: {
    ...
}) { (complete) in
    ...
}
```
 - With Multiple View
```javascript
UIView.transition(from: View1, to: View2, duration: 0.3, options: [
    .transitionFlipFromRight,
    .showHideTransitionViews
   ]
)
```

#### Transition Swipe Gester Example
 - With Single View
```javascript
struct Person {
    var PrevIndex   : Int
    var CurIndex    : Int
    var NextIndex   : Int
}
class ViewController: UIViewController {
    @IBOutlet weak var View1: UIView!
    @IBOutlet weak var View2: UIView!
    @IBOutlet weak var View3: UIView!
    @IBOutlet weak var View4: UIView!
    @IBOutlet weak var View5: UIView!
    
    var ViewArray  : [UIView?] = []
    var ViewIndex  = [Int:Person]()
    var CurrentIndex    = 0
    var NextIndex       = 0
    var PrevIndex       = 0
    
    func PrepareIndex(){
        CurrentIndex = ViewArray.count - 1
        ViewIndex[0] = Person(PrevIndex: 4, CurIndex: 0, NextIndex: 1)
        ViewIndex[1] = Person(PrevIndex: 0, CurIndex: 1, NextIndex: 2)
        ViewIndex[2] = Person(PrevIndex: 1, CurIndex: 2, NextIndex: 3)
        ViewIndex[3] = Person(PrevIndex: 2, CurIndex: 3, NextIndex: 4)
        ViewIndex[4] = Person(PrevIndex: 3, CurIndex: 4, NextIndex: 0)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ViewArray       = [View1,View2,View3,View4,View5]
        self.PrepareIndex()
    }
    
    @IBAction func LeftSwipe(_ sender: UISwipeGestureRecognizer) {
        print("Left Swipe")
        CurrentIndex = CurrentIndex % 5;
        self.PrintIndex()
        UIView.transition(from: ViewArray[(self.ViewIndex[CurrentIndex]?.CurIndex)!]!, to: ViewArray[(self.ViewIndex[CurrentIndex]?.NextIndex)!]!, duration: 0.3, options: [.transitionFlipFromRight,.showHideTransitionViews])
        self.CurrentIndex = self.CurrentIndex + 1
    }
    
    @IBAction func RightSwipe(_ sender: UISwipeGestureRecognizer) {
        print("Right Swipe")
        CurrentIndex = CurrentIndex % 5;
        self.PrintIndex()
        UIView.transition(from: ViewArray[(self.ViewIndex[CurrentIndex]?.CurIndex)!]!, to: ViewArray[(self.ViewIndex[CurrentIndex]?.PrevIndex)!]!, duration: 0.3, options: [.transitionFlipFromLeft,.showHideTransitionViews])
        self.CurrentIndex = self.CurrentIndex - 1
        if(self.CurrentIndex<0){
            self.CurrentIndex = ViewArray.count - 1
        }
    }
}
```
