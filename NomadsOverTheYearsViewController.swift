//
//  NomadsOverTheYearsViewController.swift
//  Nomads Ultimate
//
//  Created by Michael McKay  on 4/24/18.
//  Copyright © 2018 Michael McKay . All rights reserved.
//

import UIKit

class NomadsOverTheYearsViewController: UIViewController {

    @IBOutlet weak var mainScrollView: UIScrollView!
    
    var imageArray = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        mainScrollView.frame = view.frame
        
        imageArray =  [#imageLiteral(resourceName: "georgiasouthern"),#imageLiteral(resourceName: "gs2015-1"), #imageLiteral(resourceName: "gs2015-2"), #imageLiteral(resourceName: "gs2015-3"), #imageLiteral(resourceName: "gs2015-4"), #imageLiteral(resourceName: "gs2015-5"), #imageLiteral(resourceName: "gs2015-6"), #imageLiteral(resourceName: "gs2015-7"), #imageLiteral(resourceName: "gs2015-8"), #imageLiteral(resourceName: "gs2015-9"), #imageLiteral(resourceName: "gs2015-10"), #imageLiteral(resourceName: "gs2015-11"), #imageLiteral(resourceName: "southerns2"),#imageLiteral(resourceName: "clemson2015"),#imageLiteral(resourceName: "chucktown2015"), #imageLiteral(resourceName: "sectionals2015"), #imageLiteral(resourceName: "crosby"), #imageLiteral(resourceName: "regionals2015")]
        
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
