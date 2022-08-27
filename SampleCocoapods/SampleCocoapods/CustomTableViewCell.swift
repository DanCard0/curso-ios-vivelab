//
//  CustomTableViewCell.swift
//  SampleCocoapods
//
//  Created by VibeLabMac8 on 27/08/22.
//  Copyright © 2022 VibeLabMac8. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var imageItem: UIImageView!
    @IBOutlet weak var label1Item: UILabel!
    @IBOutlet weak var label2Item: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
