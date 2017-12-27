//
//  ExpandableHeader.swift
//  ExpandableTableView
//
//  Created by Sumon on 27/12/2017.
//  Copyright © 2017 Sumon Sarker. All rights reserved.
//

import UIKit

protocol ExpandableHeaderDelegate {
    func toggleHeader(header: ExpandableHeader, section : Int)
}

class ExpandableHeader: UITableViewHeaderFooterView {

    var delegate : ExpandableHeaderDelegate?
    var section : Int!
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        self.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(ToggleHeaderAction)))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func ToggleHeaderAction(gestureRecognizer : UITapGestureRecognizer){
        let cell = gestureRecognizer.view as! ExpandableHeader
        delegate?.toggleHeader(header: self, section: cell.section)
    }
    func CustomInit(title: String, section: Int, delegate: ExpandableHeaderDelegate) {
        self.textLabel?.text    = title
        self.section            = section
        self.delegate           = delegate
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.textLabel?.textColor = UIColor.brown
        self.contentView.backgroundColor = UIColor.darkGray
    }
   
}
