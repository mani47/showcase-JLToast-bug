//
//  FifthViewController.swift
//  ToastBug
//
//  Created by Mani Malekmohammadi on 12/7/15.
//  Copyright © 2015 mani. All rights reserved.
//

import UIKit
import JLToast

class FifthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        JLToast.makeText("Welcome to Fifth View Controller!", delay: 0, duration: 1.0).show()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
