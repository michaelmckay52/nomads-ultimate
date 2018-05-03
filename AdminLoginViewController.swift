//
//  AdminLoginViewController.swift
//  tabView
//
//  Created by Michael McKay  on 3/27/18.
//  Copyright © 2018 Michael McKay . All rights reserved.
//

import UIKit
import FirebaseAuth

class AdminLoginViewController: UIViewController {
    
    @IBOutlet weak var loginLabel: UILabel!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    var isLogin:Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   

    @IBAction func loginButtonTapped(_ sender: UIButton) {
        // TODO: Do some form validation on the email and the password
        if let email = emailTextField.text, let pass = passwordTextField.text {
            // Check if it's sign in or register
            if isLogin {
                // sign in the user with Firebase
                Auth.auth().signIn(withEmail: email, password: pass, completion: { (user, error) in
                    
                    // check to make sure user isn't nil
                    if let u = user {
                        //user is found, go to home screen
                        self.performSegue(withIdentifier: "goToHome", sender: self)
                    }
                    else {
                        // error: check error and show message
                        let alert = UIAlertController(title: "Incorrect Login Info", message: "Please try again", preferredStyle: .alert)
                        
                        alert.addAction(UIAlertAction(title: "Close", style: .default, handler: nil))
                        self.present(alert, animated: true)
                    }
                })
            }
            else {
                // Reigster the user with Firebase
                Auth.auth().createUser(withEmail: email, password: pass, completion: { (user, error) in
                    // check that user isn't nil
                    if let u = user {
                        // user is found, go to home screen
                        self.performSegue(withIdentifier: "goToHome", sender: self)
                    }
                    else{
                        // error: check error and show message
                    }
                })
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
