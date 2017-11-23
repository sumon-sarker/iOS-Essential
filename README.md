# iOS-Essential [DispatchQueue]

####  Execute code in Main Thread
 - DispatchQueue.main.async(execute: { ... })

```javascript
func whoAmI() {
    ...
    DispatchQueue.main.async(execute: {
     //Work Needs to be done here
    })
    ...
}
```
