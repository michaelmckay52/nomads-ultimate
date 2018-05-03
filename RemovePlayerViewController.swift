//
//  RemovePlayerViewController.swift
//  Nomads Ultimate
//
//  Created by Michael McKay  on 5/2/18.
//  Copyright © 2018 Michael McKay . All rights reserved.
//

import UIKit
import FirebaseDatabase

class RemovePlayerViewController: UIViewController {
    @IBOutlet weak var player: UITextField!
    var ref:DatabaseReference?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
        // Do any additional setup after loading the view.
    }

    @IBAction func removeButton(_ sender: Any) {
        
        let alert = UIAlertController(title: "Player Removed", message: "You have successfully removed a player from the roster", preferredStyle: .alert)
        
        ref?.child("nomadsRoster").child(player.text!).removeValue()
        
        alert.addAction(UIAlertAction(title: "Close", style: .default, handler: nil))
        
        self.present(alert, animated: true)
        
        player.text?.removeAll()
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

}
