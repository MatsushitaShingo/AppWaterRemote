//
//  VisulalizationViewTest.swift
//  AppWater
//
//  Created by 松下慎吾 on 2022/05/07.
//

import SwiftUI

struct VisulalizationViewTest: View {
    
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
                        Color(red:0.2,green:0.9, blue:0.8)
                            .frame(width:280,height: 280)
                            .cornerRadius(30)
                            .shadow(color: .gray, radius: 3, x: 10, y: 10)
                        VStack{
                            Text("節水量")
                            Text("\(waterData.MonthTotal)L")
                            }
                    }
                    
                    ZStack{
                        Color(red:0.2,green:0.9, blue:0.8)
                            .frame(width:280,height: 280)
                            .cornerRadius(30)
                            .shadow(color: .gray, radius: 3, x: 10, y: 10)
                        VStack{
                            Text("コップいっぱい")
                            //画面の中央で節水量に応じて画像を切り替える
                            if waterData.MonthTotal < 10{
                                Image("コップ1")
                                    .resizable()
                                    .frame(width: 300, height: 200)
                                    .clipShape(Circle())
                                Text("コップいっぱい")
                                    .bold()
                                    .offset(y:50)
                            }else if waterData.MonthTotal < 50{
                                Image("コップ2")
                                    .resizable()
                                    .frame(width: 300, height: 200)
                                    .clipShape(Circle())
                                Text("ペットボトルいっぱい")
                                    .bold()
                                    .offset(y:50)
                            }else if waterData.MonthTotal < 100{
                                Image("バケツ")
                                    .resizable()
                                    .frame(width: 300, height: 200)
                                    .clipShape(Circle())
                                Text("バケツいっぱい")
                                    .bold()
                                    .offset(y:50)
                            }else if waterData.MonthTotal < 200{
                                Image("お風呂")
                                    .resizable()
                                    .frame(width: 300, height: 200)
                                    .clipShape(Circle())
                                Text("お風呂いっぱい")
                                    .bold()
                                    .offset(y:50)
                            }else if waterData.MonthTotal < 300{
                                Image("飛行機窓")
                                    .resizable()
                                    .frame(width: 300, height: 200)
                                    .clipShape(Circle())
                                Text("コップいっぱい")
                                    .bold()
                                    .offset(y:50)
                            }else{
                                Image("飛行機窓")
                                    .resizable()
                                    .frame(width: 300, height: 200)
                                    .clipShape(Circle())
                                Text("コップいっぱい")
                                    .bold()
                                    .offset(y:50)
                            }
//                            Image("コップ背景")
//                                .resizable()
//                                .frame(width: 300, height: 200)
//                                .clipShape(Circle())
                        }
                    }
                    ZStack{
                        Color.red
                            .frame(width:280,height: 280)
                            .cornerRadius(30)
                            .shadow(color: .gray, radius: 3, x: 10, y: 10)
                        Text("達成率")
                            .foregroundColor(.white)
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

struct VisulalizationViewTest_Previews: PreviewProvider {
    static var previews: some View {
        VisulalizationViewTest()
        //カレンダーを日本語として表示する
            .environment(\.locale, Locale(identifier: "ja_JP"))
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
