//
//  ThirdViewController.swift
//  ToastBug
//
//  Created by Mani Malekmohammadi on 12/7/15.
//  Copyright © 2015 mani. All rights reserved.
//

import UIKit
import LocalAuthentication
import JLToast

class ThirdViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        JLToast.makeText("Welcome to Third View Controller!", delay: 0, duration: 1.0).show()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func touchIDAuthentication() {
        let context = LAContext()
        var error: NSError?
        let reasonString = "Authentication is needed to complete the action."
        
        if context.canEvaluatePolicy(LAPolicy.DeviceOwnerAuthenticationWithBiometrics, error: &error) {
            [context .evaluatePolicy(LAPolicy.DeviceOwnerAuthenticationWithBiometrics, localizedReason: reasonString, reply: { (success: Bool, evalPolicyError: NSError?) -> Void in
                self.performSegueWithIdentifier("toForthViewController", sender: self)
            })]
        }
        else{
            // If the security policy cannot be evaluated then show a short message depending on the error.
            switch error!.code{
                
            case LAError.TouchIDNotEnrolled.rawValue:
                print("TouchID is not enrolled")
                
            case LAError.PasscodeNotSet.rawValue:
                print("A passcode has not been set")
                
            default:
                // The LAError.TouchIDNotAvailable case.
                print("TouchID not available")
            }
            
            // Optionally the error description can be displayed on the console.
            print(error?.localizedDescription)
        }
    }
}
