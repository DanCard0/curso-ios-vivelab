//
//  ViewController.swift
//  SampleUI
//
//  Created by VibeLabMac8 on 13/08/22.
//  Copyright © 2022 VibeLabMac8. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelFirstView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelFirstView.text = "App first view"
        // Do any additional setup after loading the view.
    }


    @IBAction func pushButton(_ sender: Any) {
        labelFirstView.text = "Pulsaste el botón!"
    }
}

