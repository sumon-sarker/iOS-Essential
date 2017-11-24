# iOS-Essential [String]

####  Data to String
 - String(data: data!, encoding: .utf8)

```javascript
func whoAmI() {
    ...
    if let returnData = String(data: data!, encoding: .utf8) {
        print(returnData)
    } else {
        print("Parse error!")
    }
    ...
}
```
