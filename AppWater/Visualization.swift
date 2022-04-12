//
//  Visualization.swift
//  AppWater
//
//  Created by 松下慎吾 on 2022/03/15.
//

import SwiftUI

struct Visualization: View {
    
    @State private var isShowingView1: Bool = false
    let userdefaults = UserDefaults.standard
    @State var MonthTotal = 0
    @State var AllTotal = 0
    @State private var selectDate = Date()
    
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.white, .yellow]), startPoint: .top, endPoint: .bottom)
                             .ignoresSafeArea()
            VStack{
                VStack{
                    Text("現在の節水料")
                        .font(.largeTitle)
                        .bold()
                    HStack{
                        Text("\(self.MonthTotal)L")
                            .onAppear{
                                guard let userdefaults = UserDefaults.standard.value(forKey: "RecordData")as? Int else {return}
                                //データを加算していく
                                self.MonthTotal += userdefaults
                            }
                        //節水量リセット機能
                        Button(action: {
                            MonthTotal = 0
                        }) {
                            Text("リセット")
                        }
                    }
                    //カレンダー表示
                    DatePicker("日付",selection:$selectDate,displayedComponents: .date)
                        .labelsHidden()
                        .padding()
                }.frame(width: 250, height:160, alignment: .bottomTrailing)
                    .border(Color.red, width: 2) .offset(x:-300,y:-50)
                
                //今までの節水量の合計
                VStack{
                    Text("今までの合計")
                    Text("\(self.AllTotal)L")
                        .onAppear{
                            guard let userdefaults = UserDefaults.standard.value(forKey: "RecordData")as? Int else {return}
                            self.AllTotal += userdefaults
                        }
                }.offset(x:400,y:-200)
                
                
                //画面の中央で節水量に応じて画像を切り替える
                if MonthTotal < 10{
                    Image("夜景")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .clipShape(Circle())
                    Text("コップいっぱい")
                        .offset(y:50)
                }else if MonthTotal < 50{
                    Image("水族館")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .clipShape(Circle())
                    Text("ペットボトルいっぱい")
                        .offset(y:50)
                }else if MonthTotal < 100{
                    Image("飛行機窓")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .clipShape(Circle())
                    Text("お風呂いっぱい")
                        .offset(y:50)
                }else if MonthTotal < 200{
                    Image("水族館")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .clipShape(Circle())
                    Text("コップいっぱい")
                        .offset(y:50)
                }else if MonthTotal < 300{
                    Image("飛行機窓")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .clipShape(Circle())
                    Text("コップいっぱい")
                        .offset(y:50)
                }else{
                    Image("飛行機窓")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .clipShape(Circle())
                    Text("コップいっぱい")
                        .offset(y:50)
                }
                NavigationLink(destination: SelectView()){
                    ZStack{
                        Color.blue
                            .frame(width:110,height: 110)
                        Text("選ぶ")
                            .foregroundColor(.red)
                    }
                }.offset(x:300,y:50)
            }.offset(y:-50)
        }
    }
}


struct Visualization_Previews: PreviewProvider {
    static var previews: some View {
        Visualization()
        //カレンダーを日本語として表示する
            .environment(\.locale, Locale(identifier: "ja_JP"))
            .previewInterfaceOrientation(.landscapeRight)
    }
}
