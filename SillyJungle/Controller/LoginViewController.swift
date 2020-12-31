//
//  LoginViewController.swift
//  SillyJungle
//
//  Created by Zhang, Chloe on 12/30/20.
//

import FirebaseUI
import GoogleSignIn

class LoginViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GIDSignIn.sharedInstance()?.presentingViewController = self
    }

    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
    }
    
}
