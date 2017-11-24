# iOS-Essential [DispatchQueue]

####  Execute task in main thread
 - DispatchQueue.main.async(execute: { ... })

```javascript
func whoAmI() {
    ...
    DispatchQueue.main.async(execute: {
     /*Magic goes here*/
    })
    ...
}
```

####  Execute task in Main Thread after Time Interval
 - DispatchQueue.main.asyncAfter(deadline: .now() + 10.0, execute: { ... })

```javascript
func whoAmI() {
    ...
    DispatchQueue.main.asyncAfter(deadline: .now() + 10.0, execute: {
        /*Magic goes here*/
    })
    ...
}

let deadlineTime = DispatchTime.now() + .seconds(10)
func whoAmI() {
    ...
    DispatchQueue.main.asyncAfter(deadline: deadlineTime, execute: {
        /*Magic goes here*/
    })
    ...
}
```
