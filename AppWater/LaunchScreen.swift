//
//  LaunchScreen.swift
//  AppWater
//
//  Created by 松下慎吾 on 2022/10/12.
//

import SwiftUI

struct LaunchScreen: View {
    @State private var isLoading = true
    @State private var opacity = false

    var body: some View {
        if isLoading {
            ZStack {
                Image("飯村研究室ロゴ_Hi-Res")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .scaleEffect(opacity ? 1:0.9)
                    .opacity(opacity ? 0.4:1)
                    .animation(.linear(duration: 1.5), value: opacity)
                    
                Text("©2022 Iimura Lab., Pref. Univ. of Kumamoto")
                    .font(.system(size: 40))
                    .offset(y:200)
                    .opacity(opacity ? 0.4:1)
                    .animation(.linear(duration: 1.7), value: opacity)
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                    withAnimation {
                        isLoading = false
                    }
                }
                self.opacity.toggle()
            }
        } else {
            ContentView()
        }
    }
}

struct LaunchScreen_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreen()
    }
}
