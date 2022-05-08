//
//  VisualizationViewTest2.swift
//  AppWater
//
//  Created by 松下慎吾 on 2022/05/07.
//

import SwiftUI

struct VisualizationViewTest2: View {
    
    @EnvironmentObject var waterData: WaterData
    @State private var selectDate = Date()
    
    
    var body: some View {
        ZStack{
            Color(red:0.9,green:0.9, blue:0.7)
                .ignoresSafeArea()
            VStack(spacing: 20){
                
                //カレンダー表示
                DatePicker("日付",selection:$selectDate,displayedComponents: .date)
                    .labelsHidden()
                
                HStack{
                    ZStack{
                        Color.red
                            .frame(width:250,height: 250)
                            .cornerRadius(30)
                            .shadow(color: .gray, radius: 3, x: 10, y: 10)
                        Text("達成率")
                            .foregroundColor(.white)
                    } .padding(.trailing)
                    ZStack{
                        Color(red:0.2,green:0.9, blue:0.8)
                            .frame(width:500,height: 250)
                            .cornerRadius(30)
                            .shadow(color: .gray, radius: 3, x: 10, y: 10)
                        HStack{
                            VStack{
                                Text("コップいっぱい")
                                    .offset(x:-40,y:8)
                                Image("コップ背景")
                                    .resizable()
                                    .frame(width: 350, height: 200)
                                    .clipShape(Circle())
                            }.offset(x:-50)
                            VStack{
                                Text("節水量")
                                    .offset(x:-80,y:-78)
                                Text("L")
                                    .foregroundColor(.white)
                                    .font(.largeTitle)
                                    .bold()
                                }
                        }
                    }
                }
                
                HStack(spacing: 80){
                    ZStack{
                        Color.white
                            .frame(width:500,height: 200)
                            .cornerRadius(30)
                            .shadow(color: .gray, radius: 3, x: 10, y: 10)
                        Text("これまでのあゆみ")
                            .bold()
                            .offset(x:-150,y:-70)
                    }
                    ZStack{
                        Circle()
                            .fill(Color.yellow)
                            .frame(width:200,height: 200)
                        Circle()
                            .fill(Color.white)
                            .frame(width:180,height: 180)
                    }
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
}

struct VisualizationViewTest2_Previews: PreviewProvider {
    static var previews: some View {
        VisualizationViewTest2()
        //カレンダーを日本語として表示する
            .environment(\.locale, Locale(identifier: "ja_JP"))
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
