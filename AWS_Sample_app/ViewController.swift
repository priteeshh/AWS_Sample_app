//
//  ViewController.swift
//  AWS_Sample_app
//
//  Created by Preeteesh Remalli on 04/10/18.
//  Copyright © 2018 Preeteesh Remalli. All rights reserved.
//

import UIKit
import AWSAuthCore
import AWSAuthUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func emailLoginBtnTapped(_ sender: Any) {
        showSignIn()
    }
    @IBAction func fbLoginBtnTapped(_ sender: Any) {
    }
    @IBAction func googleLoginBtnTapped(_ sender: Any) {
    }
    func showSignIn() {
        if !AWSSignInManager.sharedInstance().isLoggedIn {
            AWSAuthUIViewController
                .presentViewController(with: self.navigationController!,
                                       configuration: nil,
                                       completionHandler: { (provider: AWSSignInProvider, error: Error?) in
                                        if error != nil {
                                            print("Error occurred: \(String(describing: error))")
                                        } else {
                                            // Sign in successful.
                                        }
                })
        }
    }
}

