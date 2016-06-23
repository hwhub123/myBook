//
//  BookTableViewCell.swift
//  MyBook
//
//  Created by MF839-014 on 2016. 6. 23..
//  Copyright © 2016년 MF839-014. All rights reserved.
//

import UIKit

class BookTableViewCell: UITableViewCell {

    @IBOutlet weak var coverImageView: UIImageView!
    
    
    @IBOutlet weak var bookTitle: UILabel!
    
    @IBOutlet weak var bookWriter: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
