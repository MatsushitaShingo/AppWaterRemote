//
//  SettingPage.swift
//  AppWater
//
//  Created by 松下慎吾 on 2022/05/12.
//

import SwiftUI

struct SettingPage: View {
    @EnvironmentObject var waterData: WaterData
    @State private var editting = false
    @State private var selection = "1㎥~10㎥"
    
    let data = ["41㎥~","31㎥~40㎥","21㎥~30㎥","11㎥~20㎥","1㎥~10㎥"]
    @State var value:Int = 0
    @AppStorage("savepricekey") var saveprice = 16.5
    
    var body: some View {
        ZStack{
            Color(red:0.754,green:0.887, blue:0.914)
                .ignoresSafeArea()
            HStack{
                HStack{
                    VStack{
                        ZStack{
                        Color(red:0.441,green:0.719, blue:0.75)
                        .frame(width:200,height: 80)
                        .cornerRadius(40)
                    Text("今月の目標節水量")
                                .font(Font.mainFont(size: 30))
                        .foregroundColor(Color.white)
                        }
                        ZStack{
                            Color.white
                                .frame(width:300,height: 150)
                                .cornerRadius(30)
                            TextField("数字を入力してください", value: $waterData.GoleMount,formatter: NumberFormatter(),
                                      
                                      onEditingChanged: { begin in
                                /// 入力開始処理
                                if begin {
                                    /// 入力終了処理
                                } else {
                                    self.editting = false   // 編集フラグをオフ
                                    self.editting = true

                                    UserDefaults.standard.set(waterData.GoleMount,forKey: "GoleMountData")
                                }
                            }).foregroundColor(.black)
                                .font(Font.mainFont(size: 40))
                                .keyboardType(.numbersAndPunctuation).multilineTextAlignment(.center).textFieldStyle(RoundedBorderTextFieldStyle())
                                .frame(width: 150, height: 20, alignment: .center)
                            
                        }
                    }
                    Text("L")
                    .font(Font.mainFont(size: 40))
                    .offset(y:60)
                }
            HStack{
                VStack{
                    ZStack{
                        Color(red:0.441,green:0.719, blue:0.75)
                        .frame(width:200,height: 80)
                        .cornerRadius(40)
                    Text("　目標料金　")
                            .font(Font.mainFont(size: 30))
                        .foregroundColor(Color.white)
                    }
                    ZStack{
                        Color.white
                            .frame(width:300,height: 150)
                            .cornerRadius(30)
                        Text("\(Int(waterData.GoleMount) * 148/1000)")
                            .font(Font.mainFont(size: 30))
                    }
                }
                Text("円")
                    .font(Font.mainFont(size: 40))
                    .offset(y:60)
            }
            VStack{
                ZStack{
                    Color(red:0.441,green:0.719, blue:0.75)
                    .frame(width:200,height: 80)
                    .cornerRadius(40)
                Text("水使用量")
                        .font(Font.mainFont(size: 30))
                    .foregroundColor(Color.white)
            }
            ZStack{
                Color.white
                    .frame(width:300,height: 150)
                    .cornerRadius(30)
//                Picker(selection: $selection, label: Text("水道の使用量"))
//                {
//                    Text("41㎥~").tag("41㎥~")
//                    Text("31㎥~40㎥").tag("31㎥~40㎥")
//                    Text("21㎥~30㎥").tag("21㎥~30㎥")
//                    Text("11㎥~20㎥").tag("11㎥~20㎥")
//                    Text("1㎥~10㎥").tag("1㎥~10㎥")
//                }ß
                    Picker("ピッカー",selection: $value,content: {
                        ForEach(0 ..< data.count,id: \.self){n in
                            Text(data[n])
                        }
                    })
                Text("てすと \(value)")
                    .offset(y:50)
                }
            }
            }
        }
        .customBackButton()
        .onDisappear{
            if value == 0{
                saveprice = 242
                //data[0]
            }else if value == 1{
                saveprice = 203.5
            }else if value == 2{
                saveprice = 176
            }else if value == 3{
                saveprice = 148.5
            }else{
                saveprice = 16.5
            }
            print(saveprice)
            print(data)
        }
    }
}

struct SettingPage_Previews: PreviewProvider {
    static var previews: some View {
        SettingPage()
            .previewInterfaceOrientation(.landscapeLeft)
        
    }
}

//.foregroundColor(Color(red:0.443,green:0.722, blue:0.753))
//                        TextField("\(Int(waterData.GoleMount) *  waterData.MonthTotal/1000)", value: $waterData.Golemoney,formatter: NumberFormatter(),
//
//                                  onEditingChanged: { begin in
//                            /// 入力開始処理
//                            if begin {
//                                /// 入力終了処理
//                            } else {
//                                self.editting = false   // 編集フラグをオフ
//                                self.editting = true
//
//                                UserDefaults.standard.set(waterData.Golemoney,forKey: "GolemoneyData")
//                            }
//                        })
//                        .foregroundColor(.green)
//                        .keyboardType(.numbersAndPunctuation).multilineTextAlignment(.center).textFieldStyle(RoundedBorderTextFieldStyle())
//                        .frame(width: 150, height: 20, alignment: .center)
