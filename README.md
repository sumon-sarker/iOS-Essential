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
	var Name 	: String
	var Phone 	: String
	var Email 	: String
	var Photos 	= [Int : String]()

	init(Name : String = "", Phone : String = "", Email : String = "", Photos : [Int : String]){
		self.Name 	= Name
		self.Phone 	= Phone
		self.Email 	= Email
		self.Photos     = Photos
	}
}

var Data = [Int : CustomData]()
var Pto  = [Int : String]()

Pto[0] = "PhotoURL1"
Pto[1] = "PhotoURL2"

for X in 0...10{
	Data[X] = CustomData(Name : "Sumon", Phone : "email.com", Email : "01920025943", Photos : Pto)
}

for (X,Y) in Data{
	print(X,Y)
}
```
