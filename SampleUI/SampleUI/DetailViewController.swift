//
//  DetailViewController.swift
//  SampleUI
//
//  Created by VibeLabMac8 on 20/08/22.
//  Copyright © 2022 VibeLabMac8. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var labelKey: UILabel!
    @IBOutlet weak var labelValue: UILabel!
    
    var contentTable: ContentTable?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelKey.text = contentTable?.keyName
        labelValue.text = contentTable?.valueName
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
