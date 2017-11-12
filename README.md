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
#### Initialize
 
```javascript
struct CustomData{
	var Name 	 : String
	var Phone 	: String
	var Email 	: String

	init(Name : String = "", Phone : String = "", Email : String = ""){
		self.Name 	= Name
		self.Phone 	= Phone
		self.Email 	= Email
	}
}

var Data = [Int : CustomData]()

for X in 1...10{
	Data[X] = CustomData(Name : "Sumon", Phone : "0192xxxxxxx", Email : "sumon@...com")
}

print(Data)
```
