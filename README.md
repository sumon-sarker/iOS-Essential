# iOS-Essential [extension]
Extensions add new functionality to an existing class, structure, enumeration, or protocol type. This includes the ability to extend types for which you do not have access to the original source code.

#### Syntax
 - extension Type { ... }
```javascript
extension String {
   ...
}
```

#### Initializers
```javascript
struct Size {
    var width = 0.0, height = 0.0
}
struct Point {
    var x = 0.0, y = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
}
```

#### Methods
```javascript
extension Int {
    func repetitions(task: () -> Void) {
        for _ in 0..<self {
            task()
        }
    }
}

3.repetitions {
    print("Hello!")
}
// Hello!
// Hello!
// Hello!
```
#### Example
```javascript
extension String{
	var Add : String {
		return self + " Newly Added"
	}
}

let x = "Hello"
print("\(x.Add)")
```

