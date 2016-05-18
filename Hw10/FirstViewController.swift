//
//  FirstViewController.swift
//  Hw10
//
//  Created by Steven Wang on 2016/5/17.
//  Copyright © 2016年 ka666wang. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

 
    
    

    
    @IBAction func avBut(sender: AnyObject) {
    let controller = self.storyboard?.instantiateViewControllerWithIdentifier("InfoViewControllerIdentity") as! InfoViewController
        controller.girlType = .GirlJapan
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    
    @IBAction func tvBut(sender: AnyObject) {
    let controller = self.storyboard?.instantiateViewControllerWithIdentifier("InfoViewControllerIdentity") as! InfoViewController
        controller.girlType = .GirlChina
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    
    @IBAction func movieBut(sender: AnyObject) {
    let controller = self.storyboard?.instantiateViewControllerWithIdentifier("InfoViewControllerIdentity") as! InfoViewController
        controller.girlType = .GirlUSA
        self.presentViewController(controller, animated: true, completion: nil)
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
