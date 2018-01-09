# iOS-Essential [UserDefaults]

####  Store struct to UserDefaults
```javascript
struct Song:Codable {
    var title: String
    var artist: String
}

var songs: [Song] = [
    Song(title: "Title 1", artist: "Artist 1"),
    Song(title: "Title 2", artist: "Artist 2"),
    Song(title: "Title 3", artist: "Artist 3"),
]

UserDefaults.standard.set(try? PropertyListEncoder().encode(songs), forKey:"songs")
```

####  Retrieve struct from UserDefaults
```javascript
if let data = UserDefaults.standard.value(forKey:"songs") as? Data {
    let songs2 = try? PropertyListDecoder().decode(Array<Song>.self, from: data)
}
```


###### [Details about Codable](https://hackernoon.com/everything-about-codable-in-swift-4-97d0e18a2999)
