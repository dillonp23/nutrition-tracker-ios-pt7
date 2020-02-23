//
//  LSLMainViewController.swift
//  Nutrition Tracker
//
//  Created by Michael Stoffer on 2/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit
import KeychainSwift

class LSLMainViewController: UIViewController {

    @IBOutlet var signInButton: CustomButton!
    @IBOutlet var signUpButton: CustomButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signUpButton.layer.borderWidth = 1
        signUpButton.layer.borderColor = UIColor(red: 0.424, green: 0.388, blue: 1, alpha: 1).cgColor
    }
}
