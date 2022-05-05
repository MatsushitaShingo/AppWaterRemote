//
//  AppWaterApp.swift
//  AppWater
//
//  Created by 松下慎吾 on 2022/03/15.
//

import SwiftUI

@main
struct AppWaterApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(User()) 
        }
    }
}
