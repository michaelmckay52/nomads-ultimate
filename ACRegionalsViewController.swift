//
//  ACRegionalsViewController.swift
//  Nomads Ultimate
//
//  Created by Michael McKay  on 5/1/18.
//  Copyright © 2018 Michael McKay . All rights reserved.
//

import UIKit

class ACRegionalsViewController: UIViewController {

    @IBOutlet weak var mainScrollView: UIScrollView!
    
    var imageArray = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
        mainScrollView.frame = view.frame
        
        imageArray =  [#imageLiteral(resourceName: "regionals2"), #imageLiteral(resourceName: "regionals3"), #imageLiteral(resourceName: "regionals4"), #imageLiteral(resourceName: "regionals5"), #imageLiteral(resourceName: "regionals6"), #imageLiteral(resourceName: "regionals7"), #imageLiteral(resourceName: "regionals8"), #imageLiteral(resourceName: "regionals9"), #imageLiteral(resourceName: "regionals10"), #imageLiteral(resourceName: "regionals11"), #imageLiteral(resourceName: "regionals12"), #imageLiteral(resourceName: "regionals13"), #imageLiteral(resourceName: "regionals14"), #imageLiteral(resourceName: "regionals15"), #imageLiteral(resourceName: "regionals16"), #imageLiteral(resourceName: "regionals17"), #imageLiteral(resourceName: "regionals18"), #imageLiteral(resourceName: "regionals19"), #imageLiteral(resourceName: "regionals20"), #imageLiteral(resourceName: "regionals21"), #imageLiteral(resourceName: "regionals22"), #imageLiteral(resourceName: "regionals23"), #imageLiteral(resourceName: "regionals24"), #imageLiteral(resourceName: "regionals25"), #imageLiteral(resourceName: "regionals26"), #imageLiteral(resourceName: "regionals27"), #imageLiteral(resourceName: "regionals28") ]
   
        for i in 0..<imageArray.count{
            let imageView = UIImageView()
            imageView.image = imageArray[i]
            imageView.contentMode = .scaleAspectFit
            let xPosition = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPosition, y: 0, width: self.mainScrollView.frame.width, height: self.mainScrollView.frame.height)
            
            mainScrollView.contentSize.width = mainScrollView.frame.width * CGFloat(i + 1)
            mainScrollView.addSubview(imageView)
        }
        
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
