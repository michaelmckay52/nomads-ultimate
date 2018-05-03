//
//  AddPlayerViewController.swift
//  Nomads Ultimate
//
//  Created by Michael McKay  on 5/2/18.
//  Copyright © 2018 Michael McKay . All rights reserved.
//

import UIKit
import FirebaseDatabase

class AddPlayerViewController: UIViewController, UITextFieldDelegate{
    
    
    @IBOutlet weak var nameNoSpaceTxt: UITextField!
    @IBOutlet weak var nameSpaceTxt: UITextField!
    @IBOutlet weak var hometownTxt: UITextField!
    @IBOutlet weak var birthdayTxt: UITextField!
    @IBOutlet weak var heightTxt: UITextField!
    @IBOutlet weak var weightTxt: UITextField!
    @IBOutlet weak var experienceTxt: UITextField!
    @IBOutlet weak var numberTxt: UITextField!
    @IBOutlet weak var addPlayerButton: UIButton!
    var ref:DatabaseReference?
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addPlayer(_ sender: Any) {
        let alert = UIAlertController(title: "Player Added", message: "You have successfully added a player to the roster", preferredStyle: .alert)
        let post = ["Name": nameSpaceTxt.text,
                    "Birthday": birthdayTxt.text,
                    "Hometown": hometownTxt.text,
                    "Height": heightTxt.text,
                    "Weight": weightTxt.text,
                    "Experience": experienceTxt.text,
                    "Number": numberTxt.text]
        ref?.child("nomadsRoster").child(nameSpaceTxt.text!).setValue(post)
        
        alert.addAction(UIAlertAction(title: "Close", style: .default, handler: nil))
        self.present(alert, animated: true)
        nameSpaceTxt.text?.removeAll()
        nameNoSpaceTxt.text?.removeAll()
        hometownTxt.text?.removeAll()
        heightTxt.text?.removeAll()
        weightTxt.text?.removeAll()
        experienceTxt.text?.removeAll()
        numberTxt.text?.removeAll()
        birthdayTxt.text?.removeAll()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        nameNoSpaceTxt.resignFirstResponder()
        return(true)
    }

}
