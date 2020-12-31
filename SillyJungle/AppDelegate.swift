//
//  AppDelegate.swift
//  SillyJungle
//
//  Created by Zhang, Chloe on 12/30/20.
//

import UIKit
import Firebase
import FirebaseUI
import GoogleSignIn

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, GIDSignInDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()
        
        // Initialize Google sign-in
        GIDSignIn.sharedInstance().clientID = FirebaseApp.app()?.options.clientID
        GIDSignIn.sharedInstance().delegate = self
        // If user already sign in, restore sign-in state.
        GIDSignIn.sharedInstance()?.restorePreviousSignIn()
        return true
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any]) -> Bool {
        return GIDSignIn.sharedInstance().handle(url)
    }
    
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error?) {
    }
    
}
