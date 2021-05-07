//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by 徐中伟 on 2021/4/16.
//

import SwiftUI
import UIKit
import UserNotifications

@main
struct ToDoListApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: UIResponder, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions:[UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound], completionHandler: {(success, error) in
            if success {
                print("success")
            }
            if error != nil {
                print("error")
            }
        })
        
        return true
    }
}
