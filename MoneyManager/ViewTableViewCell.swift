//
//  ViewTableViewCell.swift
//  MoneyManager
//
//  Created by William Suryadi Tanil on 12/6/16.
//  Copyright © 2016 William Suryadi Tanil. All rights reserved.
//

import UIKit

class ViewTableViewCell: UITableViewCell {
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
