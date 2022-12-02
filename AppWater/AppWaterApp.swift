//
//  AppWaterApp.swift
//  AppWater
//
//  Created by 松下慎吾 on 2022/03/15.
//

import SwiftUI

@main
struct AppWaterApp: App {
    // 永続コンテナのコントローラー生成
    let persistenceController = PersistenceController.shared

    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            LaunchScreen()
                .environmentObject(WaterData())
                .environmentObject(EnvironmentData())
                //.environmentObject(QuizEnvironmentData())
            // ManagedObjectContextを環境変数に追加=containerのcontextを使えるようにする
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        // 起動時に1回だけやる処理をここに記述する
        
        return true
    }
}
