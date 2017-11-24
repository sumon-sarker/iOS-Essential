# iOS-Essential [UIActivityIndicatorView]

####  UIActivityIndicatorView
 - ActivityIndicator for Waiting Task

```javascript
var MyIndicator: UIActivityIndicatorView = UIActivityIndicatorView()

func whoAmI() {
    ...
    MyIndicator.center = self.ProgressHelper.center
    MyIndicator.hidesWhenStopped = true
    MyIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.whiteLarge
    view.addSubview(activityIndicator)
    MyIndicator.startAnimating()
    ...
    ...
    MyIndicator.startAnimating()
    ...
}
```
