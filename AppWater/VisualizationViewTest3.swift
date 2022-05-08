//
//  VisualizationViewTest3.swift
//  AppWater
//
//  Created by 松下慎吾 on 2022/05/07.
//

import SwiftUI

struct VisualizationViewTest3: View {
    var body: some View {
        VStack{
            
            ZStack{
                Color.yellow
                    .frame(width:600,height: 400)
                    .cornerRadius(50)
                    .shadow(color: .gray, radius: 3, x: 10, y: 10)
                
                Image("コップ背景")
                    .resizable()
                    .frame(width: 600, height: 400)
                    .clipShape(Circle())
            }
            
            NavigationLink(destination: SelectView()){
                ZStack{
                    Color.blue
                        .frame(width:800,height: 110)
                        .cornerRadius(30)
                        .shadow(color: .gray, radius: 3, x: 10, y: 10)
                    Text("きろくする")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .bold()
                }
                //遷移後のボタンのtextを”戻る”にする
                .navigationTitle("戻る")
            }
        }
    }
}

struct VisualizationViewTest3_Previews: PreviewProvider {
    static var previews: some View {
        VisualizationViewTest3()
    }
}
