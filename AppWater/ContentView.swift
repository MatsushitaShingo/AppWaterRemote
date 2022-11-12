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
    @Published var sss = false
    @Published var display:Bool
    init() {
        MonthTotal = UserDefaults.standard.object(forKey: "MonthTotalData") as? Int ?? 1
        AllTotal = UserDefaults.standard.object(forKey: "AllTotalData") as? Int ?? 1
        price = UserDefaults.standard.object(forKey: "priceData") as? Int ?? 1
        UntilGoleMount = UserDefaults.standard.object(forKey: "UntilGoleMountData") as? Int ?? 1
        GoleMount = UserDefaults.standard.object(forKey: "GoleMountData") as? Int ?? 1
        Golemoney = UserDefaults.standard.object(forKey: "GolemoneyData") as? Int ?? 1
        ThisMonthUsed = UserDefaults.standard.object(forKey: "ThisMonthUsedData") as? Int ?? 1
        self.display = true
        }
}

//class WaterMove: ObservableObject {
//    @Published var display:Bool
//    init(){
//        self.display = true
//    }
//}

//にくまるフォントに変更
extension Font {
    static func mainFont (size: CGFloat) -> Font {
        return Font.custom("07NikumaruFont", size: size)
    }
}

struct ContentView: View {
    
    @State private var scale = false
    @State private var flag = false
    
    @EnvironmentObject var waterData: WaterData
    
    var body: some View {
        
            NavigationView{
                ZStack{
                    Color(red:0.754,green:0.887, blue:0.914)
                        .ignoresSafeArea()
                    Image("画面背景ウォタべる")
                        .offset(y:-80)
                        .scaleEffect(scale ? 1.1 : 0.94)
                        .opacity(scale ? 1:0.7)
                        .animation(.linear(duration: 3).repeatForever(), value: scale)
                    
                    NavigationLink(destination: CharaEcp()){
                        HStack{
                            Image("キャラナンちゃん")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 300, height: 300)
                                .offset(y:30)
                            Image("キャラコウくん")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 300, height: 300)
                                .offset(x:-30,y:50)
                            Image("カエル先生")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100)
//                            Image("キャラたかし")
//                                .scaledToFit()
//                                .frame(width: 20, height: 20)
                        }
                    }.offset(y: 280)
                       
                   
                        
//                    Image("キャラコウくん")
//                        .scaleEffect(scale ? 1.1 : 0.5)
//                        .rotationEffect(Angle(degrees: flag ? 420 : 0)) // Viewの回転
//                        .animation(.default.speed(0.5).repeatForever(),value: flag)
//                    Image(systemName: "plus")
//                        .rotationEffect(Angle(degrees: flag ? 45 : 0))
//                        //.offset(x:100,y: 200)
//                    Image(systemName: "circle")
//                        //.offset(x:200,y: 200)
//                    ZStack{
//                        Image(systemName: "rectangle.fill")
//                            .resizable()
//                            .frame(width: 100, height: 100)
//                            .foregroundColor(Color.red)
//                            //.offset(x:-100,y: 200)
//                        Image(systemName: "rectangle.fill")
//                            .resizable()
//                            .frame(width: 50, height: 50)
//                            .foregroundColor(Color.white)
//                    }
                    
                    Group{
                        Image("雲1")
                            .offset(x:-400,y:-300)
                            .scaleEffect(scale ? 1.01 : 1)
                            .opacity(scale ? 1:0.9)
                            .animation(.linear(duration: 1.1).repeatForever(), value: scale)
                        Image("雲2")
                            .offset(x:-170,y:-290)
                            .scaleEffect(scale ? 1.03 : 1)
                            .opacity(scale ? 1:0.94)
                            .animation(.linear(duration: 1.2).repeatForever(), value: scale)
                        Image("雲3")
                            .offset(y:-200)
                            .scaleEffect(scale ? 1.01 : 1)
                            .opacity(scale ? 1:0.92)
                            .animation(.linear(duration: 1.3).repeatForever(), value: scale)
                        Image("雲4")
                            .offset(x:220,y:-300)
                            .scaleEffect(scale ? 1.03 : 1)
                            .opacity(scale ? 1:0.96)
                            .animation(.linear(duration: 1.7).repeatForever(), value: scale)
                        Image("雲5")
                            .offset(x:450,y:-300)
                            .scaleEffect(scale ? 1.02 : 1)
                            .opacity(scale ? 1:0.95)
                            //.rotationEffect(Angle(degrees: scale ? 180 : 0))
                            .animation(.linear(duration: 1.6).repeatForever(), value: scale)
                            
                    }
                    .offset(y:-55)
                   
//                    Image("タイトル画面Ver1")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 1080, height: 830)
//                        .offset(y:-20)
//                    ZStack{
//                        Color.blue
//                            .frame(width:600,height: 140)
//                            .cornerRadius(30)
//                        Text("ウォタべる")
//                            .foregroundColor(.white)
//                            .font(Font.mainFont(size: 40))
//                            .bold()
//                    }.offset(y:-110)
                    HStack{
                        NavigationLink(destination: MovieView()){
                                ZStack{
                                    ZStack{
                                        Color(red: 0.929, green: 0.549, blue: 0.549)
                                            .frame(width:300,height: 120)
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 100)
                                                    .stroke(Color.white, lineWidth: 10)
                                            )
                                            .cornerRadius(100)
                                            .shadow(color:Color(red:0.741,green:0.776, blue:0.776), radius: 3, x: 5, y: 5)
                                        HStack{
                                            Image(systemName: "play.rectangle")
                                                .resizable()
                                                .frame(width: 50, height: 50)
                                            Text("学ぼう")
                                                .font(Font.mainFont(size: 40))
                                                .bold()
                                                .foregroundColor(Color(red:0.659,green:0.086, blue:0.075))
                                        }
                                    }
                                }
                        }
                        
//                        .offset(y: flag ? 0 : 10)
//                            .animation(.linear(duration: 1.7).repeatForever(), value: flag)
                        NavigationLink(destination: TransitionTest()){
                                ZStack{
                                    ZStack{
                                        Color(red: 0.901, green: 0.937, blue: 0.620)
                                            .frame(width:300,height: 120)
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 100)
                                                    .stroke(Color.white, lineWidth: 10)
                                            )
                                            .cornerRadius(100)
                                            .shadow(color:Color(red:0.741,green:0.776, blue:0.776), radius: 3, x: 5, y: 5)
                                        HStack{
                                            Image(systemName: "questionmark.circle")
                                                .resizable()
                                                .frame(width: 40, height: 40)
                                            Text("クイズ")
                                                .font(Font.mainFont(size: 40))
                                                .bold()
                                                .foregroundColor(Color(red:0.667,green:0.620, blue:0.027))
                                        }
                                    }
                                }
                        }.offset(y: flag ? 5 : -5)
                            .animation(.linear(duration: 1.5).repeatForever(), value: flag)
                        
                        NavigationLink(destination: VisualizationView()){
                            ZStack{
                                Color(red: 0.447, green: 0.859, blue: 0.847)
                                    .frame(width:300,height: 120)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 100)
                                            .stroke(Color.white, lineWidth: 10)
                                    )
                                    .cornerRadius(100)
                                    .shadow(color:Color(red:0.741,green:0.776, blue:0.776), radius: 3, x: 5, y: 5)
                                HStack{
                                    Image(systemName: "eyes")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                    Text("きろく")
                                        .font(Font.mainFont(size: 40))
                                        .bold()
                                        .foregroundColor(Color(red:0.02,green:0.549, blue:0.576))
                                }
                            }
                        }.offset(y: flag ? -3: 5)
                            .animation(.linear(duration: 1.0).repeatForever(), value: flag)
                    }.offset(y:150)
                }
                .onAppear{
                    self.scale.toggle()
                    self.flag.toggle()
                    //可視化機能からの波アニメーション遷移時に、波を消す
                    waterData.display = false
                }.onDisappear{
                    self.scale.toggle()
                    self.flag.toggle()
                    //waterData.display = true
                }
            }
        //遷移後のボタンのtextを”戻る”にする
//                .navigationTitle("3つの機能")
            .navigationBarHidden(true)
            //iPadのナビゲーション遷移でiPhoneと同じようにする
            .navigationViewStyle(.stack)
        //音を出す
//        .onAppear(){
//            playSound()
//        }
    }
    
    func savedata(){
        
    }
}
struct CustomBackButton: ViewModifier {
    
    @Environment(\.dismiss) var dismiss

    func body(content: Content) -> some View {
        content
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(
                        action: {
                            dismiss()
                        }, label: {
                            Image(systemName: "chevron.backward")
                                .resizable()
                                .frame(width: 30, height: 30)
                        }
                    ).tint(.black)
                }
            }
    }
}
extension View {
    func customBackButton() -> some View {
        self.modifier(CustomBackButton())
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}


struct DropShadow: View {
    let characters: String
    let baseTime: Double
    let textSize: Double
    @State var shadowSize: Double = 0
    @State var offsetX: Double = 0
    @State var offsetY: Double = 0

    init(text:String, textSize: Double, startTime: Double) {
        self.characters = text
        self.textSize = textSize
        self.baseTime = startTime
    }

    var body: some View {
        Text(characters)
            .font(.custom("HiraMinProN-W3", fixedSize: textSize))
            .offset(x: offsetX, y: offsetY)
            .animation(.easeInOut, value: offsetX)
            .shadow(color: .black.opacity(0.8),
                    radius: shadowSize, x: shadowSize, y: shadowSize)
            .animation(.easeInOut, value: shadowSize)
            .onTapGesture {
                animate(delayTime: 0.0)
            }
            .onAppear{
                animate(delayTime: 0.2)
            }
    }

    func animate(delayTime: Double) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.01 + delayTime) {
            shadowSize = 0
            self.offsetX = 2
            self.offsetY = 2
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3 + delayTime) {
            shadowSize = 6
            self.offsetX = -6
            self.offsetY = -6
        }
    }
}
