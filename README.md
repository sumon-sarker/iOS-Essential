# iOS-Essential [UITableView]

#### numberOfRowsInSection
 - func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { ... }
```javascript
override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 5
}
```

#### cellForRowAt
 - func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{ ... }
```javascript
override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cells", for: indexPath)
    ...
    return cell;
}
```

#### cellForRowAt
 - func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) { ... }
```javascript
override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
   let Index = indexPath.row
}
```

#### How to set Remote Data to Tableview
```javascript
override func viewDidLoad() {
    super.viewDidLoad()
    self.RemoteData()
}

func RemoteData(){
  ...
  DispatchQueue.main.async {
      self.tableView.reloadData()
  }
  ...
}
```

#### Row automatic Height
```javascript
override func viewDidLoad() {
    super.viewDidLoad()
    tableView.estimatedRowHeight = 70
    tableView.rowHeight = UITableViewAutomaticDimension
}
```
