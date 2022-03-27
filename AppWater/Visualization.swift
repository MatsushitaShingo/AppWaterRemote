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
    @State var NowWaterSaving = 0
    @State private var selectDate = Date()
    
    var body: some View {
        
        VStack{
            VStack{
                Text("現在の節水料")
                    .font(.largeTitle)
                    .bold()
                Text("\(self.NowWaterSaving)L")
                    .onAppear{
                        guard let userdefaults = UserDefaults.standard.value(forKey: "RecordData")as? Int else {return}
                        self.NowWaterSaving = userdefaults
                    }
                //カレンダー表示
                DatePicker("日付",selection:$selectDate,displayedComponents: .date)
                    .labelsHidden()
                    .padding()
            }.frame(width: 250, height:160, alignment: .bottomTrailing)
                .border(Color.red, width: 2) .offset(x:-400,y:-100)
            //画面の中央で節水量に応じて画像を切り替える
            if NowWaterSaving < 10{
                Image("夜景")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .clipShape(Circle())
                Text("コップいっぱい")
                    .offset(y:50)
            }else if NowWaterSaving < 50{
                Image("水族館")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .clipShape(Circle())
                Text("ペットボトルいっぱい")
                    .offset(y:50)
            }else if NowWaterSaving < 100{
                Image("飛行機窓")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .clipShape(Circle())
                Text("お風呂いっぱい")
                    .offset(y:50)
            }else if NowWaterSaving < 200{
                Image("")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .clipShape(Circle())
                Text("コップいっぱい")
                    .offset(y:50)
            }else if NowWaterSaving < 300{
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
            //選ぶボタンでselectviewのモーダル表示を行う
            Button(action: {
                self.isShowingView1.toggle()
            }){
                ZStack{
                    Color.blue
                        .frame(width:110,height: 110)
                    Text("選ぶ").foregroundColor(.red)
                }
            }.fullScreenCover(isPresented: $isShowingView1){
                selectView()
            }.offset(x:300,y:50)
        }
    }
}

struct selectView:View{
    
    @State fileprivate var isShowingView: Bool = false
    @State fileprivate var record = 0
    @State fileprivate var select1 = 1
    @State fileprivate var select2 = 5
    @State fileprivate var select3 = 10
    @State fileprivate var select4 = 50
    @State fileprivate var select5 = 100
    @State fileprivate var select6 = 500
    @State fileprivate var select7 = 1000
    @State fileprivate var select8 = 5000
    @Environment(\.dismiss) var dismiss
    let userdefaults = UserDefaults.standard
    
    var body: some View {
        
        VStack{
            //記録するボタンを押すと、record変数の値を保存してVisualizationで値を取り出せる状態にする
            Button(action: {
                            dismiss()
                            UserDefaults.standard.set(self.record,forKey: "RecordData")
                            
                        }){
                            ZStack{
                                Color.blue
                                    .frame(width:110,height: 110)
                                Text("記録する").foregroundColor(.red)
                            }
                        }.fullScreenCover(isPresented: $isShowingView){
                        }.offset(y:-100)
            
            VStack{
                HStack{
                    Button{
                        record = select1
                    }label: {
                        Text("トイレ")
                            .foregroundColor(.red)
                            .font(.largeTitle)
                            .background(Circle()
                                .fill(Color.blue)
                                .frame(width:80, height:80))
                    }
                    Button{
                        record = select2
                    }label: {
                        Text("お風呂")
                            .foregroundColor(.red)
                            .font(.largeTitle)
                            .background(Circle()
                                .fill(Color.blue)
                                .frame(width:80, height:80))
                    }
                    Button{
                        record = select3
                    }label: {
                        Text("シャワ")
                            .foregroundColor(.red)
                            .font(.largeTitle)
                            .background(Circle()
                                .fill(Color.blue)
                                .frame(width:80, height:80))
                    }
                    Button{
                        record = select4
                    }label: {
                        Text("歯磨き")
                            .foregroundColor(.red)
                            .font(.largeTitle)
                            .background(Circle()
                                .fill(Color.blue)
                                .frame(width:80, height:80))
                    }
                }.offset(y:-50)
                HStack{
                    Button{
                        record = select5
                    }label: {
                        Text("洗顔ー")
                            .foregroundColor(.red)
                            .font(.largeTitle)
                            .background(Circle()
                                .fill(Color.blue)
                                .frame(width:80, height:80))
                    }
                    Button{
                        record = select6
                    }label: {
                        Text("水まき")
                            .foregroundColor(.red)
                            .font(.largeTitle)
                            .background(Circle()
                                .fill(Color.blue)
                                .frame(width:80, height:80))
                    }
                    Button{
                        record = select7
                    }label: {
                        Text("お風呂")
                            .foregroundColor(.red)
                            .font(.largeTitle)
                            .background(Circle()
                                .fill(Color.blue)
                                .frame(width:80, height:80))
                    }
                    Button{
                        record = select8
                    }label: {
                        Text("トイレ")
                            .foregroundColor(.red)
                            .font(.largeTitle)
                            .background(Circle()
                                .fill(Color.blue)
                                .frame(width:80, height:80))
                    }
                }
            }
        }
    }
}

struct Visualization_Previews: PreviewProvider {
    static var previews: some View {
        Visualization()
        //日本語として表示する
            .environment(\.locale, Locale(identifier: "ja_JP"))
            .previewInterfaceOrientation(.landscapeRight)
    }
}
