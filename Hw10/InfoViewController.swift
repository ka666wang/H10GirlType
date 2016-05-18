//
//  InfoViewController.swift
//  Hw10
//
//  Created by Steven Wang on 2016/5/17.
//  Copyright © 2016年 ka666wang. All rights reserved.
//

import UIKit


enum GirlType {
    case GirlJapan, GirlChina, GirlUSA
}

class InfoViewController: UIViewController {

    
    @IBAction func backBut(sender: AnyObject) {
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    

    
    
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    var girlType:GirlType!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        

        switch self.girlType! {
            
        case .GirlJapan:
            self.imageView.image=UIImage(named: "girl1")
        case .GirlChina:
            self.imageView.image=UIImage(named: "girl2")
        case .GirlUSA:
            self.imageView.image=UIImage(named: "girl3")
            
        }

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
