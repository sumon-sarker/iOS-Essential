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
UIView.transition(with: View1, duration: 3, options: [.transitionCurlDown,.showHideTransitionViews], animations: {
    ...
}) { (complete) in
    ...
}
```
 - With Multiple View
```javascript
UIView.transition(from: View1, to: View2, duration: 0.3, options: [.transitionFlipFromRight,.showHideTransitionViews])
```
