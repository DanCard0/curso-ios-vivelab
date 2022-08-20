//
//  RegisterFormViewController.swift
//  SampleUI
//
//  Created by VibeLabMac8 on 19/08/22.
//  Copyright © 2022 VibeLabMac8. All rights reserved.
//

import UIKit

class RegisterFormViewController: UIViewController {

    @IBOutlet weak var buttonSend: UIButton!
    @IBOutlet weak var labelFirstName: UILabel!
    @IBOutlet weak var labelLastName: UILabel!
    @IBOutlet weak var labelAge: UILabel!
    @IBOutlet weak var labelPhone: UILabel!
    @IBOutlet weak var labelPassword: UILabel!
    @IBOutlet weak var textFieldFirstName: UITextField!
    @IBOutlet weak var textFieldLastName: UITextField!
    @IBOutlet weak var textFieldAge: UITextField!
    @IBOutlet weak var textFieldPhone: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    
    var array = ["- Datos Ingresados -"]
    
    @IBOutlet weak var tableRegister: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableRegister.delegate = self
        tableRegister.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sendForm(_ sender: Any) {
        let valueFirstName: String = textFieldFirstName.text ?? ""
        labelFirstName.text = "Nombre: " + valueFirstName
        array.append("Nombre: " + valueFirstName)
        
        let valueLastName: String = textFieldLastName.text ?? ""
        labelLastName.text = "Apellido: " + valueLastName
        array.append("Apellido: " + valueLastName)
        
        let valueAge: String = textFieldAge.text ?? ""
        labelAge.text = "Edad: " + valueAge
        array.append("Edad: " + valueAge)
        
        let valuePhone: String = textFieldPhone.text ?? ""
        labelPhone.text = "Teléfono: " + valuePhone
        array.append("Teléfono: " + valuePhone)
        
        let valuePassword: String = textFieldPassword.text ?? ""
        labelPassword.text = "Contraseña: " + valuePassword
        array.append("Contraseña: " + valuePassword)
        
        tableRegister.reloadData()
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

extension RegisterFormViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "name", for: indexPath) as! TableCellView
        cell.labelCell.text = array[indexPath.row]
        return cell
    }
}
