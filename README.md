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
