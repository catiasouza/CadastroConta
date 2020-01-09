//
//  RegisterViewController.swift
//  CadastroConta
//
//  Created by Cátia Souza on 08/01/20.
//  Copyright © 2020 Cátia Souza. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var tfRepeat: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

   
    @IBAction func registerButton(_ sender: Any) {
        
        let email = tfEmail.text
        let password = tfPassword.text
        let passwordRepeat = tfRepeat.text
        
        // CHECK FOR EMPTY FIELDS
        if (email!.isEmpty || password!.isEmpty){
            alertMessage(message: "Preencha todos os campos!")
            return
        }
        if(password! != passwordRepeat!){
            alertMessage(message: "Senha não confere")
            return
        }
        
        //STORE DATA
        UserDefaults.standard.set(email, forKey:"email")
        UserDefaults.standard.set(password, forKey:"password")
        UserDefaults.standard.synchronize()
        
        var alert = UIAlertController(title: "Alert", message: "Registro com sucesso.", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { (action) in
            
            self.dismiss(animated: true, completion: nil)
        }
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }
    func alertMessage(message: String){
        var alert = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }
}
