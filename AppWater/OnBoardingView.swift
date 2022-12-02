//
//  OnBoardingView.swift
//  AppWater
//
//  Created by 松下慎吾 on 2022/11/24.
//

import SwiftUI

struct OnBoardingView: View {
    @State private var currentTab = 0
    var body: some View {
        
        TabView(selection: $currentTab,
                       content:  {
            Image("onboardingはじめ")
                .ignoresSafeArea()
                .tag(0)
            Image("onboarding動画")
                .ignoresSafeArea()
                .tag(1)
            Image("onboardingクイズ")
                .ignoresSafeArea()
                .tag(2)
//            Image("onboarding可視化")
//                .tag(3)
//            Image("onboarding使ってみよう")
//                .tag(4)
        })
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
