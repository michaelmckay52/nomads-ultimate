//
//  helpViewController.swift
//  Nomads Ultimate
//
//  Created by Michael McKay  on 4/25/18.
//  Copyright © 2018 Michael McKay . All rights reserved.
//

import UIKit
import MessageUI

class helpViewController: UIViewController, MFMailComposeViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendEmail(_ sender: Any) {
        let mailComposeViewController = configureMailController()
        if MFMailComposeViewController.canSendMail() {
            self.present(mailComposeViewController, animated: true, completion: nil)
        } else {
            showMailError()
        }
    }
    
    func configureMailController() -> MFMailComposeViewController {
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.mailComposeDelegate = self
    mailComposerVC.setToRecipients(["mmckay1253@gmail.com", "simpsonnl@appstate.edu"])
        mailComposerVC.setSubject("Contact Us")
        mailComposerVC.setMessageBody("", isHTML: false)
        
        return mailComposerVC
        
    }
    
    func showMailError() {
        let sendMailErrorAlert = UIAlertController(title: "Could not sent email", message: "Your device could not send email", preferredStyle: .alert)
        
        let dismiss = UIAlertAction(title: "ok", style: .default, handler: nil)
        
        sendMailErrorAlert.addAction(dismiss)
        self.present(sendMailErrorAlert, animated: true, completion: nil)
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
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
