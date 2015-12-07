//
//  SecondViewController.swift
//  ToastBug
//
//  Created by Mani Malekmohammadi on 12/7/15.
//  Copyright © 2015 mani. All rights reserved.
//

import UIKit
import JLToast

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        JLToast.makeText("Welcome to Second View Controller!", delay: 0, duration: 1.0).show()
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
