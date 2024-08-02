//
//  customcell.swift
//  contact list
//
//  Created by syeda manahil fatima on 02/08/2024.
//

import Foundation
import SwiftUI

class customcell: UITableViewCell {
    let contactname = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(contactname)
        contactname.frame = CGRect(x: 70, y: -25, width: 150, height: 100)
        self.backgroundColor = UIColor.black
        contactname.textColor = UIColor.white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
