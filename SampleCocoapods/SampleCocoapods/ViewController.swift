//
//  ViewController.swift
//  SampleCocoapods
//
//  Created by VibeLabMac8 on 26/08/22.
//  Copyright © 2022 VibeLabMac8. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onPushButton(_ sender: Any) {
        Alamofire.request("https://httpbin.org/get").response {
            response in
            debugPrint(response)
        }
    }
}

