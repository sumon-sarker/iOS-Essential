# iOS-Essential [UIImage]

#### From Internal Source
 - UIImage(named : "string")
 
```javascript
(ImageView) = UIImage(named : "string")
```

#### From External Source
 - NSURL(string: "URL")
 - NSData(contentsOf: NSURL)
 - UIImage(data : NSData as Data)
 
```javascript
let Img     = NSURL(string: Images[indexPath.row])
let data    = NSData(contentsOf: (Img as URL?)!)
(ImageView) = UIImage(data : data! as Data)
```
