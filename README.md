# iOS-Essential [Associative Array]

#### Structure
 - struct StructureName{ ... }
 
```javascript
struct Data{
    var Name : String
    var Age  : Int
}

var AssocArray1 = [Int : Data]()

AssocArray1[0] = Data(Name : "Sumon Sarker", Age : N)
AssocArray1[1] = Data(Name : "Another Sarker", Age : N)

for (key,val) in AssocArray1 as [Int : Data]{
    print(val.Name,val.Age)
}
```
