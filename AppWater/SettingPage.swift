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
    var body: some View {
        ZStack{
            Color(red:0.443,green:0.722, blue:0.753)
                .ignoresSafeArea()
            ZStack{
                Color.blue
                    .frame(width:1080,height: 100)
                Text("せっていする")
                    .foregroundColor(.white)
                    .font(.largeTitle)
            }.offset(y:320)
            HStack{
                VStack{
                ZStack{
                Color.blue
                    .frame(width:200,height: 80)
                    .cornerRadius(40)
                Text("目標節水量")
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
            }
                    HStack{
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
                            .font(.title)
                            .keyboardType(.numbersAndPunctuation).multilineTextAlignment(.center).textFieldStyle(RoundedBorderTextFieldStyle())
                            .frame(width: 150, height: 20, alignment: .center)
                            Text("L")
                                .font(.largeTitle)
                    }
                }
            
            VStack{
                ZStack{
                Color.blue
                    .frame(width:200,height: 80)
                    .cornerRadius(40)
                Text("　目標料金　")
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                }
                ZStack{
                    Text("目標料金  \(Int(waterData.GoleMount) *  148/1000)円")
                        .font(.largeTitle)
                        .foregroundColor(Color(red:0.443,green:0.722, blue:0.753))
                    Color.white
                        .frame(width:300,height: 150)
                        .cornerRadius(30)
                    TextField("\(Int(waterData.GoleMount) *  waterData.MonthTotal/1000)", value: $waterData.Golemoney,formatter: NumberFormatter(),

                              onEditingChanged: { begin in
                        /// 入力開始処理
                        if begin {
                            /// 入力終了処理
                        } else {
                            self.editting = false   // 編集フラグをオフ
                            self.editting = true

                            UserDefaults.standard.set(waterData.Golemoney,forKey: "GolemoneyData")
                        }
                    })
                    .foregroundColor(.green)
                    .keyboardType(.numbersAndPunctuation).multilineTextAlignment(.center).textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 150, height: 20, alignment: .center)
                }
            }
            VStack{
                ZStack{Color.blue
                    .frame(width:200,height: 80)
                    .cornerRadius(40)
                Text("目標節水量")
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
            }
            ZStack{
                Color.white
                    .frame(width:300,height: 150)
                    .cornerRadius(30)
                Picker(selection: $selection, label: Text("水道の使用量"))
                {
                    Text("41㎥~").tag("41㎥~")
                    Text("31㎥~40㎥").tag("31㎥~40㎥")
                    Text("21㎥~30㎥").tag("21㎥~30㎥")
                    Text("11㎥~20㎥").tag("11㎥~20㎥")
                    Text("1㎥~10㎥").tag("1㎥~10㎥")
                }
            }
            }
            }
        }
    }
}

struct SettingPage_Previews: PreviewProvider {
    static var previews: some View {
        SettingPage()
            .previewInterfaceOrientation(.landscapeLeft)
        
    }
}
