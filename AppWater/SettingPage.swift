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
    var body: some View {
        VStack{
            HStack{
                Text("目標節水量")
                    .font(.largeTitle)
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
                })
                .foregroundColor(.black)
                .font(.title)
                .keyboardType(.numbersAndPunctuation).multilineTextAlignment(.center).textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 150, height: 20, alignment: .center)
                Text("L")
                    .font(.largeTitle)
            }
            HStack{
                Text("目標料金\(Int(waterData.GoleMount) *  148/1000)円")
                    .font(.largeTitle)
//                TextField("\(Int(waterData.GoleMount) *  waterData.MonthTotal/1000)", value: $waterData.Golemoney,formatter: NumberFormatter(),
//
//                          onEditingChanged: { begin in
//                    /// 入力開始処理
//                    if begin {
//                        /// 入力終了処理
//                    } else {
//                        self.editting = false   // 編集フラグをオフ
//                        self.editting = true
//
//                        UserDefaults.standard.set(waterData.Golemoney,forKey: "GolemoneyData")
//                    }
//                })
//                .foregroundColor(.green)
//                .keyboardType(.numbersAndPunctuation).multilineTextAlignment(.center).textFieldStyle(RoundedBorderTextFieldStyle())
//                .frame(width: 150, height: 20, alignment: .center)
            }
//                      Text("今月の使用量")
//                .font(.largeTitle)
        }
    }
}

struct SettingPage_Previews: PreviewProvider {
    static var previews: some View {
        SettingPage()
    }
}
