//
//  ContactTableViewCell.swift
//  secondDayWorkshop
//
//  Created by KUET-CSE on 4/29/18.
//  Copyright © 2018 KUET-CSE. All rights reserved.
//

import UIKit

class ContactTableViewCell: UITableViewCell {

    @IBOutlet weak var namelbl: UILabel!
    @IBOutlet weak var emaillbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
