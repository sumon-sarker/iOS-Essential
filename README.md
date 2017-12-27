# iOS-Essential [UICollectionView]
 
```javascript
import UIKit

let OnlineImages = [
    "http://www.stickpng.com/img/nature/clouds/blue-fog"
]

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var Collections: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Collections.delegate    = self
        Collections.dataSource  = self
        
        /*Making 3 columns Grid*/
        let ItemSize    = Collections.bounds.width / 3 - 3
        let layout      = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20, left: 0, bottom: 20, right: 0)
        layout.itemSize = CGSize(width: ItemSize, height: ItemSize)
        
        layout.minimumInteritemSpacing  = 3
        layout.minimumLineSpacing       = 6
        
        Collections.collectionViewLayout = layout
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return OnlineImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = Collections.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        let Url = NSURL(string: OnlineImages[indexPath.item])
        let Img = NSData(contentsOf: Url! as URL)
        cell.CellImage.image = UIImage(data: Img! as Data)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let Data = OnlineImages[indexPath.item]
        performSegue(withIdentifier: "ItemModal", sender: Data)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "ItemModal") {
            let SV = segue.destination as! ModalViewController
            SV.var_name = (sender as! String)
        }
    }

}


class ModalViewController: UIViewController {
    
    var var_name : String?

    override func viewDidLoad() {
        super.viewDidLoad()
        print(var_name as Any)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
```
