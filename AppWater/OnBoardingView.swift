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
            Image("キャラたかし")
                .tag(0)
            Image("キャラナンちゃん")
                .tag(1)
            Image("キャラコウくん")
                .tag(2)
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
