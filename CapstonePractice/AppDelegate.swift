//
//  AppDelegate.swift
//  CapstonePractice
//
//  Created by Yundong Lee on 2022/03/21.
//

import UIKit
import FirebaseCore
import GoogleSignIn
import Firebase

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        FirebaseApp.configure()
        
        UITabBar.appearance().backgroundColor = .gray
        UITabBar.appearance().standardAppearance.backgroundColor = .gray
        UITabBar.appearance().scrollEdgeAppearance?.backgroundColor = .gray
        
        
        
//        UIColor(red: 12/255, green: 18/255, blue: 29/255, alpha: 1)
        
        let myColor = UIColor(red: 12/255, green: 18/255, blue: 29/255, alpha: 1)
            
        let barAppearance = UINavigationBarAppearance()
        barAppearance.backgroundColor = myColor
        barAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        
        
        

        let navigationBar = UINavigationBar.appearance()
    
        navigationBar.standardAppearance = barAppearance
        navigationBar.scrollEdgeAppearance = barAppearance // f
        
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }

    

}

// Firebase ?????? ?????????

extension AppDelegate {
    @available(iOS 9.0, *)
    func application(_ application: UIApplication, open url: URL,
                     options: [UIApplication.OpenURLOptionsKey: Any])
      -> Bool {
      return GIDSignIn.sharedInstance.handle(url)
          
    }
}

