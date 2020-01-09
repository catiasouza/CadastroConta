//
//  loginViewController.swift
//  CadastroConta
//
//  Created by Cátia Souza on 08/01/20.
//  Copyright © 2020 Cátia Souza. All rights reserved.
//

import UIKit

class loginViewController: UIViewController{
    
    @IBOutlet weak var passwordLogin: UITextField!
    @IBOutlet weak var emailLogin: UITextField!
    
    
  override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func loginButton(_ sender: Any) {
        let email = emailLogin.text
        let password = passwordLogin.text
        
        let emailUser = UserDefaults.standard.string(forKey: "email")
        let passwordUser = UserDefaults.standard.string(forKey: "password")
        
        if (emailUser == email){
            if(passwordUser == password){
                
                UserDefaults.standard.set(true, forKey: "Catia")
                UserDefaults.standard.synchronize()
                
//             let storyboard = UIStoryboard(name: "Main", bundle: nil)
//                 let controller = storyboard.instantiateViewController(withIdentifier: "login") as! loginViewController
//                
//                 present(controller, animated: true, completion: nil)
             }
            }
           
        }
    }
    

