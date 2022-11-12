//
//  CharaEc.swift
//  AppWater
//
//  Created by 松下慎吾 on 2022/11/13.
//

import SwiftUI

struct CharaEcp: View {
    var body: some View {
        VStack{
            Image("キャラ説明")
                .resizable()
                .ignoresSafeArea()
        } .customBackButton()
    }
}

struct CharaEcp_Previews: PreviewProvider {
    static var previews: some View {
        CharaEcp()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
