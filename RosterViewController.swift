//
//  RosterViewController.swift
//  tabView
//
//  Created by Michael McKay  on 4/17/18.
//  Copyright © 2018 Michael McKay . All rights reserved.
//

import UIKit


class RosterViewController: UIViewController {
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var hometownLbl: UILabel!
    @IBOutlet weak var bithdayLbl: UILabel!
    @IBOutlet weak var experienceLbl: UILabel!
    @IBOutlet weak var numberLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
   // @IBOutlet weak var pic: UIImageView!
    @IBOutlet weak var imageView: UIImageView!
   // @IBOutlet weak var imageView: UIImageView!
    
    
    
    var Roster: roster?
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        nameLbl.text = Roster?.name
        hometownLbl.text = Roster?.homeTown
        imageView.image = Roster?.image
        bithdayLbl.text = Roster?.birthday
        experienceLbl.text = Roster?.experience
        numberLbl.text = Roster?.number
        heightLbl.text = Roster?.height
        weightLbl.text = Roster?.weight
        
        // Download in memory with a maximum allowed size of 1MB (1 * 1024 * 1024 bytes)
        
       
        
        
        
        // Do any additional setup after loading the view.
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

}
