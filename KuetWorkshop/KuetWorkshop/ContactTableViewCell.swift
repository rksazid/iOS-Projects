//
//  ContactTableViewCell.swift
//  KuetWorkshop
//
//  Created by Shuvo on 29/4/18.
//  Copyright © 2018 S.M.Moinuddin (Shuvo). All rights reserved.
//

import UIKit

class ContactTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var emailLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
