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
