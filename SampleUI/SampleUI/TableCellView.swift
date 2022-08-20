//
//  TableCellView.swift
//  SampleUI
//
//  Created by VibeLabMac8 on 19/08/22.
//  Copyright © 2022 VibeLabMac8. All rights reserved.
//

import UIKit

class TableCellView: UITableViewCell {

    @IBOutlet weak var labelCellKey: UILabel!
    @IBOutlet weak var labelCellValue: UILabel!
    @IBOutlet weak var imageCell: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
