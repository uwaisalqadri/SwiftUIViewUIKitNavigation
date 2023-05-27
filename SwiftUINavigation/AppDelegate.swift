//
//  AppDelegate.swift
//  SwiftUINavigation
//
//  Created by Uwais Alqadri on 27/5/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
    window = UIWindow(frame: UIScreen.main.bounds)
    let view = FirstView(holder: NavStackHolder())
    window?.rootViewController = UINavigationController(rootViewController: view.viewController)
    window?.makeKeyAndVisible()
    
    return true
  }

}

