//
//  VisulalizationViewTest.swift
//  AppWater
//
//  Created by 松下慎吾 on 2022/05/07.
//

import SwiftUI
import CoreData

struct VisulalizationViewTest: View {
    
    @EnvironmentObject var waterData: WaterData
    @State private var selectDate = Date()
    
    @State var progress: CGFloat = 0.5
    @State var startAnimation:CGFloat = 0
    
    var body: some View {
        ZStack{
            
            //Wave Form Shepe
            Waterwave(progress: progress, waveHeght: 0.03, offset: startAnimation)
                .fill(Color(red:0.754,green:0.887, blue:0.914))
            
            VStack(spacing: 20){
                Text("今日も節水頑張ろう！")
                .foregroundColor(Color(red:0.441,green:0.719, blue:0.75))
                .font(Font.mainFont(size: 40))
                    .bold()
                    .padding()
                    .padding()
                    .frame(width:700,height: 120)
                    .overlay(RoundedRectangle(cornerRadius: 30)
                        .stroke(Color(red:0.441,green:0.719, blue:0.75),lineWidth:8)
                        .shadow(color: .gray, radius: 3, x: 3, y: 3)
                               )
                //カレンダー表示
//                DatePicker("日付",selection:$selectDate,displayedComponents: .date)
//                    .labelsHidden()
                HStack{
                    
                    ZStack{
                        Circle()
                            .fill(Color(red:0.914,green:0.543, blue:0.543))
                            .frame(width:250,height: 250)
                        VStack{
                            //節水量リセット機能
                            Button(action: {
                                waterData.MonthTotal = 0
                                waterData.AllTotal = 0
                                waterData.price = 0
                            }) {
                                Text("リセット")
                                    .font(Font.mainFont(size: 20))
                            }.offset(y:-85)
                            Text("節水量")
                                .foregroundColor(.white)
                                .font(Font.mainFont(size: 30))
                                .offset(y: -80)
                            Text("\(waterData.MonthTotal)L")
                                .font(Font.mainFont(size: 40))
                                .foregroundColor(.white)
                                .bold()
                        }
                    }
                    
                    ZStack{
                        Circle()
                            .fill(Color(red:0.363,green:0.672, blue:0.746))
                            .frame(width:250,height: 250)
                        VStack{
                            Text("ペットボトル")
                                .font(Font.mainFont(size: 30))
                                .foregroundColor(.white)
                            HStack{
                                Text("\(waterData.MonthTotal*2)")
                                    .font(Font.mainFont(size: 40))
                                    .foregroundColor(.white)
                                    .bold()
                                Text("本分")
                                    .font(Font.mainFont(size: 30))
                                    .foregroundColor(.white)
                            }
                            Text("節水したよ！")
                                .font(Font.mainFont(size: 30))
                                .foregroundColor(.white)
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
                        Circle()
                            .fill(Color(red:0.923,green:0.742, blue:0.402))
                            .frame(width:250,height: 250)
                        VStack{
                            Text("料金")
                                .foregroundColor(.white)
                                .font(Font.mainFont(size: 30))
                                .offset(y:-60)
                            Text("\(waterData.price)円")
                                .foregroundColor(.white)
                                .font(Font.mainFont(size: 40))
                                .bold()
//                            Text("〇〇円")
//                                .foregroundColor(.white)
//                                .font(Font.mainFont(size: 30))
//                            Button(action: {
//                                waterData.UntilGoleMount = 0
//                            }) {
//                                Text("リセット")
//                            }.offset(y:-80)
//                            Text("達成まであと...")
//                                .font(.title)
//                                .offset(y:-60)
//                            if waterData.MonthTotal < waterData.GoleMount + 1{
//                                Text("\(waterData.UntilGoleMount)L")
//                                    .font(.largeTitle)
//                                    .bold()
//                            }else{
//                                Text("達成おめでとう！")
//                                    .font(.largeTitle)
//                                    .bold()
//                            }
                        }
                    }
                }
                .padding()
                .padding()
                HStack(spacing: 80){
                    NavigationLink(destination: SettingPage()){
                        ZStack{
                            Color.white
                                .frame(width:120,height: 120)
                                .cornerRadius(30)
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            Image(systemName: "gearshape.fill")
                                .resizable()
                                .frame(width:70,height: 70)
                                .foregroundColor(Color(red:0.441,green:0.719, blue:0.75))
                        }.offset(y:30)
                        //遷移後のボタンのtextを”記録の結果”にする
                        .navigationTitle("記録の結果")
                        .navigationBarTitleDisplayMode(.inline)
                    }
//                    ZStack{
//                        Circle()
//                            .fill(Color.yellow)
//                            .frame(width:200,height: 200)
//                        Circle()
//                            .fill(Color.white)
//                            .frame(width:180,height: 180)
//                        VStack{
//                        Text("節水できた料金")
//                            .offset(y:-40)
//                            Text("\(waterData.price)円")
//                                .font(.largeTitle)
//                                .bold()
//                        }
//                    }
//                    ZStack{
//                        Color.white
//                            .frame(width:530,height: 200)
//                            .cornerRadius(30)
//                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
//                        Text("これまでのあゆみ")
//                            .bold()
//                            .offset(x:-150,y:-70)
//                        VStack{
//                            Text("今までの合計")
//                                .offset(x:130,y:-70)
//                            Text("\(waterData.AllTotal)L")
//                                .offset(x:130,y:-65)
//                        }
//                    }
//                }
                
                NavigationLink(destination: SelectView()){
                    ZStack{
//                        Color(red:0.075,green:0.516, blue:0.635)
//                            .frame(width:850,height: 110)
//                            .cornerRadius(30)
//                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                        ZStack{
                            Color.white
                                .frame(width:500,height: 120)
                                .cornerRadius(30)
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            Text("記録する")
                                .font(Font.mainFont(size: 40))
                                .bold()
                                .foregroundColor(Color(red:0.441,green:0.719, blue:0.75))
                        }
//                        Text("節水しよう！")
//                            .foregroundColor(.white)
//                            .font(.largeTitle)
//                            .bold()
                    }
                    //遷移後のボタンのtextを”記録の結果”にする
                    .navigationTitle("記録の結果")
                    .navigationBarTitleDisplayMode(.inline)
                }
                    NavigationLink(destination: contentview()){
                ZStack{
                    Color.white
                        .frame(width:120,height: 120)
                        .cornerRadius(30)
                        .shadow(color: .gray, radius: 3, x: 5, y: 5)
                    Image(systemName: "chart.line.uptrend.xyaxis")
                        .resizable()
                        .frame(width:70,height: 70)
                        .foregroundColor(Color(red:0.441,green:0.719, blue:0.75))
                }.offset(y:30)
                }
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
        // ManagedObjectContextを環境変数に設定
            .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
struct Waterwave: Shape{
    var progress: CGFloat
    //Wave Height
    var waveHeght: CGFloat
    //Intiol Animation Start
    var offset: CGFloat
    //Enabling Animation
    var animatableData: CGFloat{
        get{offset}
        set{offset = newValue}
    }
    
    func path(in rect: CGRect) -> Path{
        return Path{path in path.move(to: .zero)
        //Drawing waves using Sine
            let progressHeight: CGFloat = (1 - progress) * rect.height
            let height = waveHeght * rect.height
            
            for value in stride(from: 0, to: rect.width, by: 2){
                let x: CGFloat = value
                let sine: CGFloat = sin(Angle(degrees: value + offset).radians)
                let y: CGFloat = progressHeight + (height * sine)
                
                path.addLine(to:CGPoint(x: x,y: y))
            }
            
            //Bottom Portion
            path.addLine(to: CGPoint(x:rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
        }
    }
}
