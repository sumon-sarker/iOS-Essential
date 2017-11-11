# iOS-Essential [JSON Parsing]

#### Tasks
 - URL(string : "url")
 - URLSession.shared.dataTask(with: Url!)
 - DispatchQueue.main.async { self.tableView.reloadData() }
 - URLSession.shared.dataTask(with: Url!){ ... }.resume()
 
```javascript
override func viewDidLoad() {
    super.viewDidLoad()
    let JsonUrl = "http://Domain_or_IP/path-to-api"
    let Url = URL(string: JsonUrl)
    URLSession.shared.dataTask(with: Url!) { (data, response, error) in
        if let e = error {
            print(e)
        } else {
            do {
                let Json = try JSONSerialization.jsonObject(with: data!, options: [])
                if let dictionary = Json as? [String: AnyObject]{
                    for (_, value) in dictionary {
                        let obj = value as! [String : String]
                        self.Titles.append(obj["title"]!)
                        self.Images.append(obj["image"]!)
                    }
                    DispatchQueue.main.async {
                        self.tableView.reloadData()
                    }
                }
            } catch _{

            }
        }
    }.resume()
}
```
