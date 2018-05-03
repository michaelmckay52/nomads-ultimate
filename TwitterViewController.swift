//
//  TwitterViewController.swift
//  tabView
//
//  Created by Michael McKay  on 4/16/18.
//  Copyright © 2018 Michael McKay . All rights reserved.
//

import UIKit
import TwitterKit

class TwitterViewController: UIViewController {

    @IBOutlet weak var twitterWebview: UIWebView!
    /** @IBOutlet weak var imgView_profilePic: UIImageView!
    @IBOutlet weak var label_username: UILabel!
    @IBOutlet weak var label_name: UILabel!
    var loginButton : TWTRLogInButton!
    **/
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://twitter.com/Nomads_Ultimate")
        
        twitterWebview.loadRequest(URLRequest(url: url!))
        
        
        /**
        loginButton = TWTRLogInButton {(session, error) in
            if let unwrappedsession = session {
                let client = TWTRAPIClient()
                client.loadUser(withID: (unwrappedsession.userID), completion: { (user, error) in
                    self.label_name.text = user?.name
                    self.label_username.text = unwrappedsession.userName
                    
                    let imgUrl = user?.profileImageURL
                    let url = URL(string: imgUrl!)
                    let data = try?Data (contentsOf: url!)
                    self.imgView_profilePic.image = UIImage (data: data!)
                })
               
            }
            else {
                print("login error")
            }
        }
        loginButton.center = self.view.center
        self.view.addSubview(loginButton)
 **/
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    class ListTimelineViewController: TWTRTimelineViewController {
        override func viewDidLoad() {
            /**
            super.viewDidLoad()
            let client = TWTRAPIClient(); self.dataSource = TWTRListTimelineDataSource(listSlug: "surfing", listOwnerScreenName: "Nomads_Ultimate", apiClient: client)
            **/
           
        }
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
