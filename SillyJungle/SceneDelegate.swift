//
//  SceneDelegate.swift
//  SillyJungle
//
//  Created by Zhang, Chloe on 12/30/20.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let _ = (scene as? UIWindowScene) else { return }
        _ = self.window?.rootViewController
    }
}
