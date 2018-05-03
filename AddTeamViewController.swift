//
//  AddTeamViewController.swift
//  tabView
//
//  Created by Michael McKay  on 4/11/18.
//  Copyright © 2018 Michael McKay . All rights reserved.
//

import UIKit

class AddTeamViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addTeam(_ sender: Any) {
        // Post the Team to Firebase
        
        // Dismiss Popover
        presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancelTeam(_ sender: Any) {
        //Dismiss popover
        presentingViewController?.dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
