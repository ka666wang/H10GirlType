//
//  Info2ViewController.swift
//  Hw10
//
//  Created by Steven Wang on 2016/5/18.
//  Copyright © 2016年 ka666wang. All rights reserved.
//

import UIKit

enum GirlTypeSegue {
    case GirlJapan, GirlChina, GirlUSA
}


class Info2ViewController: UIViewController {

    @IBOutlet weak var image2View: UIImageView!

    var girlTypeSegue:GirlTypeSegue!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        switch self.girlTypeSegue! {
            
            case .GirlJapan:
            self.image2View.image=UIImage(named: "girl1")
            case .GirlChina:
            self.image2View.image=UIImage(named: "girl2")
            case .GirlUSA:
            self.image2View.image=UIImage(named: "girl3")
            

        
        
        
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
