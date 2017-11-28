import UIKit

struct Sections : Decodable{
    let SectionTitle    : String?
    let SectionImage    : String?
    let RowData         : [Rows?]?
}

struct Rows : Decodable{
    let Image    : String?
    let Label    : String?
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let SectionData = [
        Sections(
            SectionTitle : "Section 1",
            SectionImage : "menu",
            RowData : [
                Rows(Image: "menu", Label: "Label 1")
            ]
        ),
        Sections(
            SectionTitle : "Section 2",
            SectionImage : "menu",
            RowData : [
                Rows(Image: "menu", Label: "Label 1"),
                Rows(Image: "menu", Label: "Label 2")
            ]
        )
    ]
    /*Set How Many Sections*/
    func numberOfSections(in tableView: UITableView) -> Int {
        return SectionData.count
    }
    /*Set Custom Header Height*/
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 70
    }
    /*Set Custom Header View Using .xib file*/
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let Header = Bundle.main.loadNibNamed("TableViewCell", owner: self, options: nil)?.first as! TableViewCell
        Header.SectionImage.image   = UIImage(named: SectionData[section].SectionImage!)
        Header.SectionTitle.text    = SectionData[section].SectionTitle!
        return Header
    }
    /*Set Rows For Every Sections*/
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (SectionData[section].RowData?.count)!
    }
    /*Set Row View For Every Sections*/
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        cell.textLabel?.text    = SectionData[indexPath.section].RowData![indexPath.row]?.Label
        cell.imageView?.image   = UIImage(named: (SectionData[indexPath.section].RowData![indexPath.row]?.Image)!)
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
