//
//  VisulalizationViewTest.swift
//  AppWater
//
//  Created by 松下慎吾 on 2022/05/07.
//

import SwiftUI
import CoreData
import AVKit

struct VisualizationView: View {
    
    @State private var scale = false
    //@EnvironmentObject var waterMove: WaterMove
    
    @State private var ShowingWaterEx = false
    @State private var ShowingPetEx = false
    @State private var ShowingMoneyEx = false
    
    //波
    let universalSize = UIScreen.main.bounds
    @State private var isAnimated = false
    
    @EnvironmentObject var waterData: WaterData
    @State private var selectDate = Date()
    
    @State var progress: CGFloat = 0.5
    @State var startAnimation:CGFloat = 0
    
    @State var circleCenter:CGFloat = 1
    
    private let player = AVPlayer(url: Bundle.main.url(forResource:"VSQSE_0649_river_02",withExtension: "mp3")!)
    
    var body: some View {
        ZStack{
//            GeometryReader{proxy in
//                let size = proxy.size
//            //Wave Form Shepe
////            Waterwave(progress: progress, waveHeght: 0.03, offset: startAnimation)
////                .fill(Color(red:0.754,green:0.887, blue:0.914))
////                .onAppear{
////                    withAnimation(.linear(duration:6).repeatForever(autoreverses: false)){
////                        startAnimation = size.width
////                    }
////                }
//            }
//            if waterMove.display == true{
//
//            }
                getSinWave(interval: universalSize.width,amplitude: 200,baseline:  -50 + universalSize.height/2)
                    .foregroundColor(Color.init(red:0.754,green:0.887, blue:0.914).opacity(0.4))
                    .offset(x: isAnimated ? -1*universalSize.width : 0)
                    .animation(Animation.linear(duration: 12).repeatForever(autoreverses: false), value: isAnimated)
        
            getSinWave(interval: universalSize.width*1.2, amplitude: 150,baseline:50 +  universalSize.height/2)
                    .foregroundColor(Color.init(red:0.754,green:0.887, blue:0.914).opacity(0.7))
                    .offset(x: isAnimated ? -1*(universalSize.width*1.2) : 0)
                    .animation(Animation.linear(duration: 8).repeatForever(autoreverses: false), value: isAnimated)
            
            getSinWave(interval: universalSize.width*2, amplitude: 150,baseline:50 +  universalSize.height/2)
                    .foregroundColor(Color.init(red:0.754,green:0.887, blue:0.914).opacity(1))
                    .offset(x: isAnimated ? -1*(universalSize.width*2) : 0)
                    .animation(Animation.linear(duration: 10).repeatForever(autoreverses: false), value: isAnimated)
            NavigationLink(destination: NantyanEx()){
            Image("キャラナンちゃん")
                .resizable()
                .scaledToFit()
                .frame(width: 400, height: 400)
                .scaleEffect(scale ? 1.0 : 1.0)
                    .animation(.easeOut(duration: 3.5).repeatForever(), value: scale)
            }.offset(x: -480)
            NavigationLink(destination: KoukunEx()){
            Image("キャラコウくん")
                .resizable()
                .scaledToFit()
                .frame(width: 400, height:400)
                .scaleEffect(scale ? 1.0 : 1.0)
                    .animation(.easeOut(duration: 4.0).repeatForever(), value: scale)
            }.offset(x: 480)
            
            NavigationLink(destination: KaeruEx()){
                Image("カエル先生")
                    .resizable()
                    .frame(width: 100, height: 100)
            }.offset(x:-270,y:-250)
            NavigationLink(destination: TakashiEx()){
                Image("キャラたかし")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height:300)
            }.offset(x:430,y:-300)
           
                
                //.scaleEffect(scale ? 1.1 : 0.5)
                //.rotationEffect(.init(degrees: scale ? 20 : -20),anchor: UnitPoint.topLeading)
                //.rotationEffect(Angle(degrees: scale ? 20 : -20)) // Viewの回転
                //.animation(.default.speed(0.3).repeatForever(),value: scale)
            
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
                    Button(action: {
                        self.ShowingWaterEx.toggle()
                    }){
                        ZStack{
                            Circle()
                                .fill(Color(red:1,green:0.7, blue:0.746))
                                .frame(width:255,height: 255)
                            Circle()
                                .fill(Color(red:0.914,green:0.543, blue:0.543))
                                .frame(width:250,height: 250)
                                
                            VStack{
                                //節水量リセット機能
//                                Button(action: {
//                                    waterData.MonthTotal = 0
//                                    waterData.AllTotal = 0
//                                    waterData.price = 0
//                                }) {
//                                    Text("リセット")
//                                        .font(Font.mainFont(size: 20))
//                                }.offset(y:-85)
                                Text("節水量")
                                    .foregroundColor(.white)
                                    .font(Font.mainFont(size: 30))
                                    .offset(y: -60)
                                Text("\(waterData.MonthTotal)L")
                                    .font(Font.mainFont(size: 40))
                                    .foregroundColor(.white)
                                    .bold()
                            }
                        }.scaleEffect(scale ? 1.05 : 1.0)
                            .animation(.easeOut(duration: 5.0).repeatForever(), value: scale)
                    }.sheet(isPresented: $ShowingWaterEx){
                        WaterEx()
                    }
                    
//                    .offset(y: scale ? 5 : -5)
//                        .animation(Animation
//                            .easeInOut(duration: 2.0)
//                            .repeatForever(),value: circleCenter
//                        )
                        
                    Button(action: {
                        self.ShowingPetEx.toggle()
                    }){
                        ZStack{
                            Circle()
                                .fill(Color(red:0.363,green:0.8, blue:0.746))
                                .frame(width:255,height: 255)
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
                        }.scaleEffect(scale ? 1.05 : 1.0)
                            .animation(.easeOut(duration: 4.0).repeatForever(), value: scale)
                    }.sheet(isPresented: $ShowingPetEx){
                        PetEx()
                    }
//                    .onAppear{
//                        withAnimation(.linear(duration:6).repeatForever(autoreverses: false)){
//                            startAnimation = size.width
//                        }
//                    }
//                    .offset(y: flag ? 5 : -5)
//                        .animation(Animation
//                            .easeInOut(duration: 2.0)
//                            .repeatForever()
//                            .delay(0.5)
//                        )
                    //.padding()
                    
                    Button(action: {
                        self.ShowingMoneyEx.toggle()
                    }){
                        ZStack{
                            Circle()
                                .fill(Color(red:0.8,green:0.65, blue:0.3))
                                .frame(width:255,height: 255)
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
                        }.scaleEffect(scale ? 1.05 : 1.0)
                            .animation(.easeOut(duration: 1.5).repeatForever(), value: scale)
                    }.sheet(isPresented: $ShowingMoneyEx){
                        MoneyEx()
                    }
                   
                }
                .padding()
                .padding()
                HStack(spacing: 80){
//                    NavigationLink(destination: SettingPage()){
//                        ZStack{
//                            Color.white
//                                .frame(width:120,height: 120)
//                                .cornerRadius(30)
//                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
//                            Image(systemName: "gearshape.fill")
//                                .resizable()
//                                .frame(width:70,height: 70)
//                                .foregroundColor(Color(red:0.441,green:0.719, blue:0.75))
//                        }.offset(y:30)
//                        //遷移後のボタンのtextを”記録の結果”にする
////                        .navigationTitle("記録の結果")
////                        .navigationBarTitleDisplayMode(.inline)
//                    }
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
                            Text("きろくする")
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
//                    .navigationTitle("記録の結果")
//                    .navigationBarTitleDisplayMode(.inline)
                }
//                    NavigationLink(destination: contentview()){
//                ZStack{
//                    Color.white
//                        .frame(width:120,height: 120)
//                        .cornerRadius(30)
//                        .shadow(color: .gray, radius: 3, x: 5, y: 5)
//                    Image(systemName: "chart.line.uptrend.xyaxis")
//                        .resizable()
//                        .frame(width:70,height: 70)
//                        .foregroundColor(Color(red:0.441,green:0.719, blue:0.75))
//                }.offset(y:30)
//                }
                }
            }
            .onAppear(){
                self.scale.toggle()
                self.isAnimated.toggle()
                //音再生
                //player.play()
                waterData.display = true
            }.onDisappear{
                self.scale.toggle()
                self.isAnimated.toggle()
                //player.pause()
            }
        }.customBackButton()
    }
    func getSinWave(interval:CGFloat,amplitude:CGFloat = 100,baseline:CGFloat = UIScreen.main.bounds.height/2) -> Path{
        Path{path in
            path.move(to: CGPoint(x: 0, y: baseline))
            path.addCurve(to: CGPoint(x: 1*interval,y: baseline),
                          control1: CGPoint(x: interval * (0.35),y: amplitude + baseline),
                          control2: CGPoint(x: interval * (0.65),y: -amplitude + baseline )
            )
            path.addCurve(to: CGPoint(x: 2*interval,y: baseline),
                          control1: CGPoint(x: interval * (1.35),y: amplitude + baseline),
                          control2: CGPoint(x: interval * (1.65),y: -amplitude + baseline )
            )
            path.addLine(to: CGPoint(x: 2 * interval,y:universalSize.height))
            path.addLine(to: CGPoint(x: 0, y: universalSize.height))
        }
    }
}

struct VisulalizationViewTest_Previews: PreviewProvider {
    static var previews: some View {
        VisualizationView()
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

struct WaterEx:View{
    var body: some View{
        ZStack{
            Color(red:0.957,green:0.651, blue:0.933)
            VStack(alignment: .leading, spacing: 20){
                Text("いままで")
                    .font(Font.mainFont(size: 40))
                Text("どのくらい節水できたか")
                    .font(Font.mainFont(size: 40))
                Text("わかるよ！")
                    .font(Font.mainFont(size: 40))
            }.offset(y:-100)
            Image("キャラナンちゃん")
                .foregroundColor(.white)
                .scaledToFit()
                .frame(width: 600, height: 600)
                .offset(x:200,y:300)
        }
    }
}
struct PetEx:View{
    var body: some View{
        ZStack{
            Color(red:0.455,green:0.824, blue:0.91)
            VStack(alignment: .leading, spacing: 20){
                Text("節水を")
                    .font(Font.mainFont(size: 40))
                Text("ペットボトル何本分したか")
                    .font(Font.mainFont(size: 40))
                Text("わかるよ！")
                    .font(Font.mainFont(size: 40))
            }.offset(y:-100)
            Image("キャラコウくん")
                .foregroundColor(.white)
                .scaledToFit()
                .frame(width: 600, height: 600)
                .offset(x:200,y:300)
        }
        
    }
}
struct MoneyEx:View{
    var body: some View{
        ZStack{
            Color(red:0.957,green:0.863, blue:0.318)
            VStack(alignment: .leading, spacing: 20){
                Text("節水して")
                    .font(Font.mainFont(size: 40))
                    .foregroundColor(.white)
                Text("どれだけ水道料金がかかるか")
                    .font(Font.mainFont(size: 40))
                    .foregroundColor(.white)
                Text("わかるよ！")
                    .font(Font.mainFont(size: 40))
                    .foregroundColor(.white)
                
            }.offset(y:-100)
            Image("カエル先生")
                .resizable()
                .frame(width: 500, height: 500)
                .offset(x:200,y:200)
            Text("節水量×148.5/1000")
                .font(Font.mainFont(size: 20))
                .foregroundColor(.white)
                .offset(x:-50,y:300)
        }
    }
}
struct KaeruEx : View{
    var body: some View{
        VStack{
            Image("説明カエル先生")
                .ignoresSafeArea()
        }.customBackButton()
    }
}
struct KoukunEx : View{
    var body: some View{
        VStack{
            Image("説明コウくん")
                .ignoresSafeArea()
        }.customBackButton()
    }
}
struct NantyanEx : View{
    var body: some View{
        VStack{
            Image("説明ナンちゃん")
                .ignoresSafeArea()
        }.customBackButton()
    }
}
struct TakashiEx : View{
    var body: some View{
        VStack{
            Image("説明たかしくん")
                .ignoresSafeArea()
        }.customBackButton()
    }
}
