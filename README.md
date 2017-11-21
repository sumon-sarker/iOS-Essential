# iOS-Essential [Decodable]

#### Associative Data Array
```javascript
[
    "title"=>"Hello Users",
    "image"=>"users.png",
    "hello"=>[
        "World"=>"Jane",
        "Complex"=>[
            "hey"=>"Buddy"
        ]
    ]
]
```
#### Decodable Data Structure
```javascript
struct MyData : Decodable{
    let title : String
    let image : String
    let hello : Hello?
}

struct Hello : Decodable{
    let World   : String
    let Complex : Complex?
}

struct Complex : Decodable{
    let hey : String
}
```

#### Tasks
 - struct Name : Decodable { ... }
 - JSONDecoder().decode(DecodableStruct, from : ResponseData)

```javascript
func HeyDecoder() {
    let url = URL(string: "http://localhost:8888/ios-api/api.php")
    let session = URLSession.shared
    let task = session.dataTask(with: url!) { (data, _, _) in
       guard let data = data else{ return }
        do{
            //IF Array [MyData].self
            let inf = try JSONDecoder().decode([MyData].self, from : data)
            for i in inf{
                print(i)
            }
            //IF Single MyData.self
        }catch{
            print("Decode Error!")
        }
     }
     task.resume()
}
```

# iOS-Essential [Encodable]

#### Encodable Data Structure
```javascript
struct MyData : Encodable{
    let title : String
    let image : String
    let hello : Hello?
}

struct Hello : Encodable{
    let World   : String
    let Complex : Complex?
}

struct Complex : Encodable{
    let hey : String
}
```

#### Tasks
 - struct Name : Encodable { ... }
 - JSONEncoder().encode(EncodeStructName)

```javascript
func HeyEncoder() {
    let PostData    = MyData(
        title: "Title",
        image: "Image",
        hello: Hello(
            World: "World String",
            Complex: Complex(
                hey: "Jimmy"
            )
        )
    )
    do{
        let encoded = try JSONEncoder().encode(PostData)
        RequestUrl.httpBody = encoded
    }catch _{
        print("Encoding Error!")
    }
    
    URLSession.shared.dataTask(with: req) { (data, _, _) in
        if let returnData = String(data: data!, encoding: .utf8) {
            print(returnData)
        } else {
            print("Parse error!")
        }
    }.resume()
}
```
