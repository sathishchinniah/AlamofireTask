//
//  CustomTableViewCell.swift
//  AlamofireTask
//
//  Created by Sathish Chinniah on 25/01/17.
//  Copyright © 2017 Sathish chinniah. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var ContentName: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
