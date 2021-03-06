//
//  JointSummitViewController.swift
//  tabView
//
//  Created by Michael McKay  on 4/3/18.
//  Copyright © 2018 Michael McKay . All rights reserved.
//

import UIKit

class JointSummitViewController: UIViewController {
    
    @IBOutlet weak var mainScrollView: UIScrollView!
    
    var imageArray = [UIImage]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainScrollView.frame = view.frame
        
        imageArray =  [#imageLiteral(resourceName: "js1"),#imageLiteral(resourceName: "js2"),#imageLiteral(resourceName: "js3") ]
        
        for i in 0..<imageArray.count{
            let imageView = UIImageView()
            imageView.image = imageArray[i]
            imageView.contentMode = .scaleAspectFit
            let xPosition = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPosition, y: 0, width: self.mainScrollView.frame.width, height: self.mainScrollView.frame.height)
            
            mainScrollView.contentSize.width = mainScrollView.frame.width * CGFloat(i + 1)
            mainScrollView.addSubview(imageView)
        }
        

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
