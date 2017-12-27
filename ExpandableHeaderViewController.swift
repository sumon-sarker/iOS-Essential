//
//  ViewController.swift
//  ExpandableTableView
//
//  Created by Sumon on 27/12/2017.
//  Copyright © 2017 Sumon Sarker. All rights reserved.
//

import UIKit

struct DataTable {
    let SectionTitle    : String!
    let Movies          : [String]!
    var Expanded        : Bool
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, ExpandableHeaderDelegate {

    @IBOutlet weak var CustomTable: UITableView!
    
    var TableData  = [DataTable]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CustomTable.delegate    = self
        CustomTable.dataSource  = self
        
        TableData = [
            DataTable(SectionTitle: "Section 1", Movies: [
                    "Movie 1"
                ],Expanded: false),
            DataTable(SectionTitle: "Section 2", Movies: [
                "Movie 1",
                "Movie 2"
                ],Expanded: false),
            DataTable(SectionTitle: "Section 3", Movies: [
                "Movie 1",
                "Movie 2",
                "Movie 3"
                ],Expanded: false)
        ]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func toggleHeader(header: ExpandableHeader, section: Int) {
        TableData[section].Expanded = !TableData[section].Expanded
        
        CustomTable.beginUpdates()
        for i in 0 ..< TableData[section].Movies.count {
            CustomTable.reloadRows(at: [IndexPath(row: i, section: section)], with: .automatic)
        }
        CustomTable.endUpdates()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return TableData.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (TableData[section].Movies?.count)!
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = ExpandableHeader()
        header.CustomInit(title: TableData[section].SectionTitle!, section: section, delegate: self)
        return header
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if TableData[indexPath.section].Expanded {
            return 44
        }else{
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = CustomTable.dequeueReusableCell(withIdentifier: "CustomCell")
        cell?.textLabel?.text = TableData[indexPath.section].Movies?[indexPath.row]
        return cell!
    }

}

