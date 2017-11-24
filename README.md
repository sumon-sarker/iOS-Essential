# iOS-Essential [DispatchQueue]

####  Execute code in Main Thread
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

####  Execute code in Main Thread after Time Duration
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
