//
//  ExplainSelect.swift
//  AppWater
//
//  Created by 松下慎吾 on 2022/10/29.
//

import SwiftUI

struct ExplainSelect: View {
    var body: some View {
    
            VStack{
                ScrollView{
                    Image("ボタン説明")
                        .resizable()
                        .ignoresSafeArea()
                }
            }.customBackButton()
        
    }
}

struct ExplainSelect_Previews: PreviewProvider {
    static var previews: some View {
        ExplainSelect()
    }
}
