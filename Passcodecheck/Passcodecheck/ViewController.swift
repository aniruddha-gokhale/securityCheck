//
//  ViewController.swift
//  Passcodecheck
//
//  Created by GDB Consultants on 03/03/17.
//  Copyright © 2017 GDB Technologies Pvt Ltd. All rights reserved.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true);
        
        if (devicePasscodeSet()) {
            print("device passcode is set")
            
        }else{
            print("device passcode is not set")
            self.showalert();
            
            
        }
    }
    
    
    
    
    
    
    //check passcode
    
    private func devicePasscodeSet() -> Bool {
        //checks to see if devices (not apps) passcode has been set
        return LAContext().canEvaluatePolicy(.deviceOwnerAuthentication, error: nil)
    }
    
    func showalert() {
        
        let alert=UIAlertController(title: "Warning", message: "Your iphone passcode is not set.kindly go to 'Settings/Touch ID & Passcode' and set passcode to secure your data", preferredStyle: UIAlertControllerStyle.alert);
        //show it
        
       // alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
        show(alert, sender: self);
    }


}

