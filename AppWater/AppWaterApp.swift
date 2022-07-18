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
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(WaterData())
            // ManagedObjectContextを環境変数に追加
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
