//
//  YoutubeViewController.swift
//  Nomads Ultimate
//
//  Created by Michael McKay  on 4/25/18.
//  Copyright © 2018 Michael McKay . All rights reserved.
//

import UIKit

class YoutubeViewController: UIViewController {

    @IBOutlet weak var youtubeWebView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let url = URL(string: "https://www.youtube.com/user/tjapex59")
        
        youtubeWebView.loadRequest(URLRequest(url: url!))
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
