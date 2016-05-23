//
//  InfoView2Controller.swift
//  Hw10
//
//  Created by Steven Wang on 2016/5/23.
//  Copyright © 2016年 ka666wang. All rights reserved.
//

import UIKit

class InfoView2Controller: UIViewController {

    var girlType:GirlType!
    
    var name:String!
    

    
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func backBut(sender: AnyObject) {
        
        
        let controller = self.presentingViewController as! FirstViewController
        switch self.girlType! {
        case .GirlJapan:
            controller.updateDic = ["category":"girl1",
                                    "name":self.textField.text!]
        case .GirlChina:
            controller.updateDic = ["category":"girl2",
                                    "name":self.textField.text!]
        case .GirlUSA:
            controller.updateDic = ["category":"girl3",
                                    "name":self.textField.text!]
        }
    
         self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    
    
    
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
        
        
        self.textField.text = self.name

        
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
