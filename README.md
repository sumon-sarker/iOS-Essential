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

#### From Internal Source
```javascript
extension UIImageView {
    func LazyLoader(link:String) {
        URLSession.shared.dataTask( with: NSURL(string:link)! as URL, completionHandler: {
            (data, response, error) -> Void in
            DispatchQueue.main.async() {
                if let data = data {
                    self.image = UIImage(data: data)
                }
            }
        }).resume()
    }
}

class ViewController: UIViewController {
    
    func viewDidLoad() {
       cell.CellImage.image = UIImage(named: "dummyImageFromAssets")
       cell.CellImage.LazyLoader(link: "ImageUrlHere")
    }
}
```
