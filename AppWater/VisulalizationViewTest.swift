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
            Color(red:0.953,green:0.965, blue:0.847)
                .ignoresSafeArea()
            NavigationLink(destination: SettingPage()){
                ZStack{
                    Image(systemName: "gearshape.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width:50,height: 50)
//                        Text("設定")
//                            .foregroundColor(.white)
//                            .font(.largeTitle)
//                            .bold()
                }
                //遷移後のボタンのtextを”記録の結果”にする
                .navigationTitle("記録の結果")
                .navigationBarTitleDisplayMode(.inline)
            }.offset(x:480,y:-350)
            VStack(spacing: 20){
                
                //カレンダー表示
//                DatePicker("日付",selection:$selectDate,displayedComponents: .date)
//                    .labelsHidden()
                
                HStack{
                    ZStack{
                        Color(red:0.443,green:0.722, blue:0.753)
                            .frame(width:260,height: 260)
                            .cornerRadius(30)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                        VStack{
                            //節水量リセット機能
                            Button(action: {
                                waterData.MonthTotal = 0
                                waterData.AllTotal = 0
                                waterData.price = 0
                            }) {
                                Text("リセット")
                            }.offset(y:-85)
                            Text("今月の節水量")
                                .font(.title)
                                .offset(y: -80)
                            Text("\(waterData.MonthTotal)L")
                                .font(.largeTitle)
                                .bold()
                        }
                    }
                    
                    ZStack{
                        Color(red:0.443,green:0.722, blue:0.753)
                            .frame(width:260,height: 260)
                            .cornerRadius(30)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                        VStack{
                            Text("ペットボトル")
                                .font(.title)
                            HStack{
                                Text("\(waterData.MonthTotal*2)")
                                    .font(.largeTitle)
                                    .bold()
                                Text("本分")
                                    .font(.title)
                            }
                            Text("節水したよ！")
                                .font(.title)
                            //画面の中央で節水量に応じて画像を切り替える
//                            if waterData.MonthTotal < 10{
//                                Text("コップいっぱい")
//                                    .font(.title)
//                                Image("コップ1")
//                                    .resizable()
//                                    .frame(width: 300, height: 200)
//                                    .clipShape(Circle())
//                            }else if waterData.MonthTotal < 50{
//                                Text("ペットボトルいっぱい")
//                                    .font(.title)
//                                Image("コップ2")
//                                    .resizable()
//                                    .frame(width: 300, height: 200)
//                                    .clipShape(Circle())
//                            }else if waterData.MonthTotal < 100{
//                                Text("バケツいっぱい")
//                                    .font(.title)
//                                Image("バケツ")
//                                    .resizable()
//                                    .frame(width: 300, height: 200)
//                                    .clipShape(Circle())
//                            }else if waterData.MonthTotal < 200{
//                                Text("お風呂いっぱい")
//                                    .font(.title)
//                                Image("お風呂")
//                                    .resizable()
//                                    .frame(width: 300, height: 200)
//                                    .clipShape(Circle())
//                            }else if waterData.MonthTotal < 300{
//                                Text("コップいっぱい")
//                                    .font(.title)
//                                Image("飛行機窓")
//                                    .resizable()
//                                    .frame(width: 300, height: 200)
//                                    .clipShape(Circle())
//                            }else{
//                                Text("コップいっぱい")
//                                    .font(.title)
//                                Image("飛行機窓")
//                                    .resizable()
//                                    .frame(width: 300, height: 200)
//                                    .clipShape(Circle())
//
//                            }
                            //                            Image("コップ背景")
                            //                                .resizable()
                            //                                .frame(width: 300, height: 200)
                            //                                .clipShape(Circle())
                        }
                    }
                    .padding()
                    ZStack{
                        Color(red:0.886,green:0.643, blue:0.65)
                            .frame(width:260,height: 260)
                            .cornerRadius(30)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                        VStack{
                            Button(action: {
                                waterData.UntilGoleMount = 0
                            }) {
                                Text("リセット")
                            }.offset(y:-80)
                            Text("達成まであと...")
                                .font(.title)
                                .offset(y:-60)
                            if waterData.MonthTotal < waterData.GoleMount + 1{
                                Text("\(waterData.UntilGoleMount)L")
                                    .font(.largeTitle)
                                    .bold()
                            }else{
                                Text("達成おめでとう！")
                                    .font(.largeTitle)
                                    .bold()
                            }
                        }
                    }
                }
                
                HStack(spacing: 80){
                    ZStack{
                        Circle()
                            .fill(Color.yellow)
                            .frame(width:200,height: 200)
                        Circle()
                            .fill(Color.white)
                            .frame(width:180,height: 180)
                        VStack{
                        Text("節水できた料金")
                            .offset(y:-40)
                            Text("\(waterData.price)円")
                                .font(.largeTitle)
                                .bold()
                        }
                    }
                    ZStack{
                        Color.white
                            .frame(width:530,height: 200)
                            .cornerRadius(30)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                        Text("これまでのあゆみ")
                            .bold()
                            .offset(x:-150,y:-70)
                        VStack{
                            Text("今までの合計")
                                .offset(x:130,y:-70)
                            Text("\(waterData.AllTotal)L")
                                .offset(x:130,y:-65)
                        }
                    }
                }
                
                
                NavigationLink(destination: SelectView()){
                    ZStack{
//                        Color(red:0.075,green:0.516, blue:0.635)
//                            .frame(width:850,height: 110)
//                            .cornerRadius(30)
//                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                        ZStack{
                            Circle()
                                .fill(Color.yellow)
                                .frame(width:100,height: 100)
                            Image(systemName: "pencil")
                                .resizable()
                                .scaledToFit()
                                .frame(width:50,height: 50)
                                
                        }
//                        Text("節水しよう！")
//                            .foregroundColor(.white)
//                            .font(.largeTitle)
//                            .bold()
                    }
                    //遷移後のボタンのtextを”記録の結果”にする
                    .navigationTitle("記録の結果")
                    .navigationBarTitleDisplayMode(.inline)
                }.offset(x:400,y:20)
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
