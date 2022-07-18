//
//  ContentView.swift
//  AppWater
//
//  Created by 松下慎吾 on 2022/03/15.
//

import SwiftUI
import CoreData

//データ管理
class WaterData: ObservableObject {
    @Published var MonthTotal: Int {
        didSet {
            UserDefaults.standard.set(MonthTotal, forKey: "MonthTotalData")
        }
    }
    @Published var AllTotal: Int {
        didSet {
            UserDefaults.standard.set(AllTotal, forKey: "AllTotalData")
        }
    }
    @Published var price: Int {
        didSet {
            UserDefaults.standard.set(price, forKey: "priceData")
        }
    }
    @Published var UntilGoleMount: Int {
        didSet {
            UserDefaults.standard.set(UntilGoleMount, forKey: "UntilGoleMountData")
        }
    }
    @Published var GoleMount: Int {
        didSet {
            UserDefaults.standard.set(GoleMount, forKey: "GoleMountData")
        }
    }
    @Published var Golemoney: Int {
        didSet {
            UserDefaults.standard.set(Golemoney, forKey: "GolemoneyData")
        }
    }
    @Published var ThisMonthUsed: Int {
        didSet {
            UserDefaults.standard.set(ThisMonthUsed, forKey: "ThisMonthUsedData")
        }
    }
    init() {
        MonthTotal = UserDefaults.standard.object(forKey: "MonthTotalData") as? Int ?? 1
        AllTotal = UserDefaults.standard.object(forKey: "AllTotalData") as? Int ?? 1
        price = UserDefaults.standard.object(forKey: "priceData") as? Int ?? 1
        UntilGoleMount = UserDefaults.standard.object(forKey: "UntilGoleMountData") as? Int ?? 1
        GoleMount = UserDefaults.standard.object(forKey: "GoleMountData") as? Int ?? 1
        Golemoney = UserDefaults.standard.object(forKey: "GolemoneyData") as? Int ?? 1
        ThisMonthUsed = UserDefaults.standard.object(forKey: "ThisMonthUsedData") as? Int ?? 1
        }
}

struct ContentView: View {
    var body: some View {
            NavigationView{
                ZStack{
                    Image("タイトル画面Ver1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 1080, height: 830)
                        .offset(y:-20)
                    ZStack{
                        Color.blue
                            .frame(width:600,height: 140)
                            .cornerRadius(30)
                        Text("アプリ名")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .bold()
                        
                    }.offset(y:-110)
                    
                    HStack{
                        NavigationLink(destination: MovieViewTest()){
                            ZStack{
                                Image(systemName: "drop.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 200, height: 250)
                                    .foregroundColor(Color(red:0.443,green:0.721, blue:0.752))
                                    .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                Text("どうが")
                                    .foregroundColor(.white)
                                    .font(.largeTitle)
                            }
                        }.offset(x: -50, y: 100)
                        NavigationLink(destination: StudyView()){
                            ZStack{
                                Image(systemName: "drop.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 200, height: 250)
                                    .foregroundColor(Color(red:0.443,green:0.721, blue:0.752))
                                    .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                Text("クイズ")
                                    .font(.largeTitle)
                                    .foregroundColor(.white)
                            }
                        }.offset(x: 0, y: 200)
                        NavigationLink(destination: VisulalizationViewTest()){
                            ZStack{
                                Image(systemName: "drop.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 200, height: 250)
                                    .foregroundColor(Color(red:0.443,green:0.721, blue:0.752))
                                    .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                Text("きろく")
                                    .font(.largeTitle)
                                    .foregroundColor(.white)
                            }
                        }.offset(x: 50, y: 100)
                    }
                }
                //遷移後のボタンのtextを”戻る”にする
                .navigationTitle("3つの機能")
                .navigationBarHidden(true)
            }
            //iPadのナビゲーション遷移でiPhoneと同じようにする
            .navigationViewStyle(.stack)
        //音を出す
//        .onAppear(){
//            playSound()
//        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

