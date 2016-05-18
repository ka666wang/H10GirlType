//
//  segueViewController.swift
//  Hw10
//
//  Created by Steven Wang on 2016/5/18.
//  Copyright © 2016年 ka666wang. All rights reserved.
//

import UIKit

class segueViewController: UIViewController {

    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let Controller = segue.destinationViewController as! Info2ViewController
        
        switch segue.identifier! {
            
        case "showgirl1":
            Info2ViewController.girlType = .GirlJapan
        case "showgirl2":
            
        case "showgirl3":
            
        default:
            break
            
        }
        }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
