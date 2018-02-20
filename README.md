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

#### Automatic Row Height
```javascript
override func viewDidLoad() {
    super.viewDidLoad()
    tableView.estimatedRowHeight = 70
    tableView.rowHeight = UITableViewAutomaticDimension
}
```

#### Checkbox (accessoryType)
```javascript
var SelectedData = [String:String]()

func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    if MyTable.cellForRow(at: indexPath)?.accessoryType == UITableViewCellAccessoryType.checkmark{
        MyTable.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.none
         /*Release Selected Data*/
        SelectedData[TableData[indexPath.row]] = nil
    }else{
        MyTable.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.checkmark
        /*Store Selected Data*/
        SelectedData[TableData[indexPath.row]] = TableData[indexPath.row]
    }
}
```

#### Get Last Index of Rows (Load more purpose)
```javascript
var IsLoading : Bool = false

func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
    /*Index started from 0*/
    let LastRow = indexPath.row + 1;
    if self.MyDatas?.count == LastRow{
        if(self.IsLoading == false){
            self.IsLoading = true
            self.LoadMoreData()
        }
    }
}

func LoadMoreData(){
    /*REST OF ASYNC CODE GOES HERE*/
    for Data in GetDataFromAsync{
        self.MyDatas?.append(Data)
    }
    self.ProcessTable.reloadData()
    self.IsLoading = false
}
```

#### No Border Style
```javascript
self.tableView.separatorStyle = UITableViewCellSeparatorStyle.none
```
