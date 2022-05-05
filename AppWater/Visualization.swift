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
    @EnvironmentObject var user: User
    @State var AllTotal = 0
    @State private var selectDate = Date()
    
    
    var body: some View {
        ZStack{
            Image("クイズ機能背景案-1")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            VStack{
                VStack{
                    Text("現在の節水料")
                        .font(.largeTitle)
                        .bold()
                    HStack{
                        
                        Text("\(user.MonthTotal)L")
                            
                        
                        //節水量リセット機能
                        Button(action: {
                            user.MonthTotal = 0
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
                if user.MonthTotal < 10{
                    Image("コップ1")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .clipShape(Circle())
                    Text("コップいっぱい")
                        .bold()
                        .offset(y:50)
                }else if user.MonthTotal < 50{
                    Image("コップ2")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .clipShape(Circle())
                    Text("ペットボトルいっぱい")
                        .bold()
                        .offset(y:50)
                }else if user.MonthTotal < 100{
                    Image("バケツ")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .clipShape(Circle())
                    Text("バケツいっぱい")
                        .bold()
                        .offset(y:50)
                }else if user.MonthTotal < 200{
                    Image("お風呂")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .clipShape(Circle())
                    Text("お風呂いっぱい")
                        .bold()
                        .offset(y:50)
                }else if user.MonthTotal < 300{
                    Image("飛行機窓")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .clipShape(Circle())
                    Text("コップいっぱい")
                        .bold()
                        .offset(y:50)
                }else{
                    Image("飛行機窓")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .clipShape(Circle())
                    Text("コップいっぱい")
                        .bold()
                        .offset(y:50)
                }
                NavigationLink(destination: SelectView()){
                    ZStack{
                        Color.blue
                            .frame(width:110,height: 110)
                            .cornerRadius(15)
                        Text("選ぶ")
                            .foregroundColor(.red)
                    }
                    //遷移後のボタンのtextを”戻る”にする
                    .navigationTitle("戻る")
                    
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
