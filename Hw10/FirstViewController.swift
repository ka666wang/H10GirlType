//
//  FirstViewController.swift
//  Hw10
//
//  Created by Steven Wang on 2016/5/17.
//  Copyright © 2016年 ka666wang. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    var updateDic:[String:String] = [:]
        
    
    override func viewWillAppear(animated: Bool) {
        
        super.viewWillAppear(animated)
        let category = self.updateDic["category"]
        if let category = category  {
            switch category {
            case "girl1":
                self.avBut.setTitle(self.updateDic["name"], forState: .Normal)
            case "girl2":
                self.tvBut.setTitle(self.updateDic["name"], forState: .Normal)
            case "girl3":
                self.movieBut.setTitle(self.updateDic["name"], forState: .Normal)
            default:
                break
            }
        }
    }
    

        
    
    @IBAction func showSleepRabbit(sender: AnyObject) {
        
        let controller = self.storyboard?.instantiateViewControllerWithIdentifier("RabbitController")
        self.presentViewController(controller!, animated: true, completion: nil)
        
        
    }
    

    @IBAction func showMoney(sender: AnyObject) {
    
        self.performSegueWithIdentifier("showmoney", sender: nil)
    }
    
    
    @IBOutlet weak var avBut: UIButton!
    
    @IBOutlet weak var tvBut: UIButton!
    
    @IBOutlet weak var movieBut: UIButton!
    
    
    
    @IBAction func avBut(sender: AnyObject) {
    let controller = self.storyboard?.instantiateViewControllerWithIdentifier("InfoView2") as! InfoView2Controller
        controller.girlType = .GirlJapan
        
        let but = sender as! UIButton
        controller.name = but.currentTitle
        
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    
    @IBAction func tvBut(sender: AnyObject) {
    let controller = self.storyboard?.instantiateViewControllerWithIdentifier("InfoView2") as! InfoView2Controller
        controller.girlType = .GirlChina
        let but = sender as! UIButton
        controller.name = but.currentTitle
        
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
  
    
    @IBAction func movieBut(sender: AnyObject) {
    let controller = self.storyboard?.instantiateViewControllerWithIdentifier("InfoView2") as! InfoView2Controller
        controller.girlType = .GirlUSA
        
        let but = sender as! UIButton
        controller.name = but.currentTitle
        
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
