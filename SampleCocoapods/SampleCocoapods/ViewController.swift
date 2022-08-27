//
//  ViewController.swift
//  SampleCocoapods
//
//  Created by VibeLabMac8 on 26/08/22.
//  Copyright © 2022 VibeLabMac8. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

class ViewController: UIViewController {
    let decoder = JSONDecoder()
    
    @IBOutlet weak var table: UITableView!
    
    var dataList: GitHubResponseArray = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
        
        Alamofire.request("https://api.github.com/repositories").response {
            response in
            //debugPrint(response)
            
            do {
                let data = try self.decoder.decode(GitHubResponseArray.self, from: response.data!)
                dump(data)
                self.dataList = data
                self.table.reloadData()
            } catch let error as NSError {
                print("Fail: \(error.localizedDescription)")
            } catch {
                print("Fail: \(error)")
            }
        }
    }

    @IBAction func onPushButton(_ sender: Any) {
        
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.label1Item.text = dataList[indexPath.row].name
        cell.label2Item.text = dataList[indexPath.row].welcomeDescription
        
        Alamofire.request(dataList[indexPath.row].owner.avatarURL).responseImage(completionHandler: { (response) in
            if let image = response.result.value {
                DispatchQueue.main.async {
                    cell.imageItem?.image = image
                }
            }
        })
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // goTo(content: array[indexPath.row])
    }
}
