//
//  Quiz1.swift
//  AppWater
//
//  Created by 松下慎吾 on 2022/04/13.
//

import SwiftUI
import AVKit

struct ModalView1: View {
    
    @Environment(\.presentationMode)var PresentationMode
    
    var body: some View {
        NavigationView{
            NavigationLink(destination: Quiz1answer1()){
                ZStack{
                    Image(systemName: "drop.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .foregroundColor(.yellow)
                    Text("START!")
                        .padding(.vertical)
                        .foregroundColor(.white)
                        .navigationBarItems(trailing:Button(action:{self.PresentationMode.wrappedValue.dismiss()
                        })
                                            {
                            Text("戻る")
                        })
                    
                }
                
            }.navigationViewStyle(.stack)
            
            
        }
    }
}

struct Quiz1answer1: View {
    
    @State private var isShowing2View1: Bool = false
    
    var body: some View {
        
        
        VStack (spacing: 10){
            Button(action: {self.isShowing2View1.toggle()}){
                ZStack{
                    Image(systemName: "drop.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.blue)
                    Text("戻る")
                        .padding(.vertical)
                        .foregroundColor(.white)
                }
            }.fullScreenCover(isPresented:$isShowing2View1){
                finishView()
            }.offset(x:500,y: -100)
            
            Text("地下水１")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding()
            
            
            ZStack{
                Rectangle()
                    .stroke(lineWidth: 5)
                    .frame(width:800,height: 300)
                Text("熊本の地下水を汚染している代表的な物質はどれ？")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
            }
            
            .padding()
            .padding()
            HStack {
                
                NavigationLink(destination: Quiz1answer1true()) {
                    
                    Label("硝酸性窒素", systemImage: "suit.heart.fill")
                        .labelStyle(MyLabelStyle1(color: .red))
                }
                
                NavigationLink(destination: Quiz1answer1false()) {
                    
                    Label("全シアン", systemImage: "suit.club.fill")
                        .labelStyle(MyLabelStyle1(color: .green))
                }
                
                NavigationLink(destination: Quiz1answer1false()) {
                    
                    Label("四塩化炭素", systemImage: "suit.diamond.fill")
                        .labelStyle(MyLabelStyle1(color: .yellow))
                    
                }
                
                
            }
            
        }
    }
}

struct MyLabelStyle1: LabelStyle {
    let color: Color
    
    func makeBody(configuration: Configuration) -> some View {
        
        HStack {
            configuration.icon      // アイコン
                .padding(10)
                .background(Circle().fill(color))
            
            configuration.title     // タイトル
                .padding(.trailing, 10)
                .lineLimit(1)       // 改行させない
        }
        .padding(6)
        .background(RoundedRectangle(cornerRadius: 10).stroke(color, lineWidth: 3))
    }
}

struct Quiz1answer1true: View {
    var body: some View {
        VStack(spacing: 30){
            Text("正解")
                .fontWeight(.heavy)
                .font(.system(size: 80, weight: .black, design: .default))
            
            Image(systemName: "poweroff")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.red)
            ZStack{
                Color.red
                    .frame(width:650,height: 200)
                Text("解説")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                    .bold()
            }
            
            HStack {
                
                NavigationLink(destination: moviestart1()) {
                    
                    Text("動画を見る")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }.ignoresSafeArea()
                
                NavigationLink(destination: Quiz1answer2()) {
                    
                    Text("次の問題へ")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
            }
        }
    }
}
struct Quiz1answer1false: View {
    var body: some View {
        VStack(spacing: 30){
            Text("不正解")
                .fontWeight(.heavy)
                .font(.system(size: 80, weight: .black, design: .default))
            
            Image(systemName: "multiply")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.blue)
            ZStack{
                Color.blue
                    .frame(width:650,height: 200)
                Text("解説")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                    .bold()
            }
            
            HStack {
                
                NavigationLink(destination: moviestart1()) {
                    
                    Text("動画を見る")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
                
                NavigationLink(destination: Quiz1answer2()) {
                    
                    Text("次の問題へ")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
            }
        }
    }
}

//地下水2
struct Quiz1answer2: View {
    @State private var isShowing2View2: Bool = false
    var body: some View {
        VStack (spacing: 10){
            Button(action: {self.isShowing2View2.toggle()}){
                ZStack{
                    Image(systemName: "drop.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.blue)
                    Text("戻る")
                        .padding(.vertical)
                        .foregroundColor(.white)
                }
            }.fullScreenCover(isPresented:$isShowing2View2){
                finishView()
            }.offset(x:500,y: -100)
            Text("地下水２")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding()
            
            
            ZStack{
                Rectangle()
                    .stroke(lineWidth: 5)
                    .frame(width:850,height: 300)
                Text("地下水は日本の水使用量全体の約何％を占めている？")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
            }
            
            .padding()
            .padding()
            HStack {
                
                NavigationLink(destination: Quiz1answer2false()) {
                    
                    Label("30%", systemImage: "suit.heart.fill")
                        .labelStyle(MyLabelStyle2(color: .red))
                }
                
                NavigationLink(destination: Quiz1answer2true()) {
                    
                    Label("10%", systemImage: "suit.club.fill")
                        .labelStyle(MyLabelStyle2(color: .green))
                }
                
                NavigationLink(destination: Quiz1answer2false()) {
                    
                    Label("50%", systemImage: "suit.diamond.fill")
                        .labelStyle(MyLabelStyle2(color: .yellow))
                    
                }
                
                
            }
            
        }
    }
}

struct MyLabelStyle2: LabelStyle {
    let color: Color
    
    func makeBody(configuration: Configuration) -> some View {
        
        HStack {
            configuration.icon      // アイコン
                .padding(10)
                .background(Circle().fill(color))
            
            configuration.title     // タイトル
                .padding(.trailing, 10)
                .lineLimit(1)       // 改行させない
        }
        .padding(6)
        .background(RoundedRectangle(cornerRadius: 10).stroke(color, lineWidth: 3))
    }
}

struct Quiz1answer2true: View {
    var body: some View {
        VStack(spacing: 30){
            Text("正解")
                .fontWeight(.heavy)
                .font(.system(size: 80, weight: .black, design: .default))
            
            Image(systemName: "poweroff")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.red)
            ZStack{
                Color.red
                    .frame(width:650,height: 200)
                Text("解説")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                    .bold()
            }
            
            HStack {
                
                NavigationLink(destination: moviestart2()) {
                    
                    Text("動画を見る")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
                
                NavigationLink(destination: Quiz1answer3()) {
                    
                    Text("次の問題へ")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
            }
        }
    }
}
struct Quiz1answer2false: View {
    var body: some View {
        VStack(spacing: 30){
            Text("不正解")
                .fontWeight(.heavy)
                .font(.system(size: 80, weight: .black, design: .default))
            
            Image(systemName: "multiply")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.blue)
            ZStack{
                Color.blue
                    .frame(width:650,height: 200)
                Text("解説")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                    .bold()
            }
            
            HStack {
                
                NavigationLink(destination: moviestart2()) {
                    
                    Text("動画を見る")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
                
                NavigationLink(destination: Quiz1answer3()) {
                    
                    Text("次の問題へ")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
            }
        }
    }
}




//地下水３
struct Quiz1answer3: View {
    @State private var isShowing2View3: Bool = false
    var body: some View {
        VStack (spacing: 10){
            Button(action: {self.isShowing2View3.toggle()}){
                ZStack{
                    Image(systemName: "drop.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.blue)
                    Text("戻る")
                        .padding(.vertical)
                        .foregroundColor(.white)
                }
            }.fullScreenCover(isPresented:$isShowing2View3){
                finishView()
            }.offset(x:500,y: -100)
            Text("地下水3")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding()
            
            
            ZStack{
                Rectangle()
                    .stroke(lineWidth: 5)
                    .frame(width:1050,height: 300)
                Text("地下水が減少している理由は2つあり、一つは、水田が畑になっていることである。もう一つは？")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
            }
            
            .padding()
            .padding()
            HStack {
                
                NavigationLink(destination: Quiz1answer3false()) {
                    
                    Label("街が広がって、雨水が染み込まないから", systemImage: "suit.heart.fill")
                        .labelStyle(MyLabelStyle3(color: .red))
                }
                
                NavigationLink(destination: Quiz1answer3false()) {
                    
                    Label("森が広がって、雨水が染み込まないから", systemImage: "suit.club.fill")
                        .labelStyle(MyLabelStyle3(color: .green))
                }
                
                NavigationLink(destination: Quiz1answer3true()) {
                    
                    Label("土地が汚れて、雨水が染み込まないから", systemImage: "suit.diamond.fill")
                        .labelStyle(MyLabelStyle3(color: .yellow))
                    
                }
                
                
            }
            
        }
    }
}

struct MyLabelStyle3: LabelStyle {
    let color: Color
    
    func makeBody(configuration: Configuration) -> some View {
        
        HStack {
            configuration.icon      // アイコン
                .padding(10)
                .background(Circle().fill(color))
            
            configuration.title     // タイトル
                .padding(.trailing, 10)
                .lineLimit(1)       // 改行させない
        }
        .padding(6)
        .background(RoundedRectangle(cornerRadius: 10).stroke(color, lineWidth: 3))
    }
}

struct Quiz1answer3true: View {
    var body: some View {
        VStack(spacing: 30){
            Text("正解")
                .fontWeight(.heavy)
                .font(.system(size: 80, weight: .black, design: .default))
            
            Image(systemName: "poweroff")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.red)
            ZStack{
                Color.red
                    .frame(width:650,height: 200)
                Text("解説")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                    .bold()
            }
            
            HStack {
                
                NavigationLink(destination: moviestart3()) {
                    
                    Text("動画を見る")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
                
                NavigationLink(destination: Quiz1answer4()) {
                    
                    Text("次の問題へ")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
            }
        }
    }
}
struct Quiz1answer3false: View {
    var body: some View {
        VStack(spacing: 30){
            Text("不正解")
                .fontWeight(.heavy)
                .font(.system(size: 80, weight: .black, design: .default))
            
            Image(systemName: "multiply")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.blue)
            ZStack{
                Color.blue
                    .frame(width:650,height: 200)
                Text("解説")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                    .bold()
            }
            
            HStack {
                
                NavigationLink(destination: moviestart3()) {
                    
                    Text("動画を見る")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
                
                NavigationLink(destination: Quiz1answer4()) {
                    
                    Text("次の問題へ")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
            }
        }
    }
}

struct moviestart3: View{
    
    private let player = AVPlayer(url: Bundle.main.url(forResource:"movie",withExtension: "mp4")!)
    
    var body: some View{
        VideoPlayer(player: player)
            .onAppear(){
                player.play()
                
            }
            .onDisappear(){
                player.pause()
            }
    }
}

//地下水４
struct Quiz1answer4: View {
    @State private var isShowing2View4: Bool = false
    var body: some View {
        VStack (spacing: 10){
            Button(action: {self.isShowing2View4.toggle()}){
                ZStack{
                    Image(systemName: "drop.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.blue)
                    Text("戻る")
                        .padding(.vertical)
                        .foregroundColor(.white)
                }
            }.fullScreenCover(isPresented:$isShowing2View4){
                finishView()
            }.offset(x:500,y: -100)
            Text("地下水4")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding()
            
            
            ZStack{
                Color.red
                    .frame(width:650,height: 300)
                Text("問題")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                    .bold()
            }
            
            .padding()
            .padding()
            HStack {
                
                NavigationLink(destination: Quiz1answer4false()) {
                    
                    Label("ハート", systemImage: "suit.heart.fill")
                        .labelStyle(MyLabelStyle4(color: .red))
                }
                
                NavigationLink(destination: Quiz1answer4true()) {
                    
                    Label("クラブ", systemImage: "suit.club.fill")
                        .labelStyle(MyLabelStyle4(color: .green))
                }
                
                NavigationLink(destination: Quiz1answer4false()) {
                    
                    Label("ダイヤ", systemImage: "suit.diamond.fill")
                        .labelStyle(MyLabelStyle4(color: .yellow))
                    
                }
                
                
            }
            
        }
    }
}

struct MyLabelStyle4: LabelStyle {
    let color: Color
    
    func makeBody(configuration: Configuration) -> some View {
        
        HStack {
            configuration.icon      // アイコン
                .padding(10)
                .background(Circle().fill(color))
            
            configuration.title     // タイトル
                .padding(.trailing, 10)
                .lineLimit(1)       // 改行させない
        }
        .padding(6)
        .background(RoundedRectangle(cornerRadius: 10).stroke(color, lineWidth: 3))
    }
}

struct Quiz1answer4true: View {
    var body: some View {
        VStack(spacing: 30){
            Text("正解")
                .fontWeight(.heavy)
                .font(.system(size: 80, weight: .black, design: .default))
            
            Image(systemName: "poweroff")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.red)
            ZStack{
                Color.red
                    .frame(width:650,height: 200)
                Text("解説")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                    .bold()
            }
            
            HStack {
                
                NavigationLink(destination: moviestart4()) {
                    
                    Text("動画を見る")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
                
                NavigationLink(destination: Quiz1answer5()) {
                    
                    Text("次の問題へ")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
            }
        }
    }
}
struct Quiz1answer4false: View {
    var body: some View {
        VStack(spacing: 30){
            Text("不正解")
                .fontWeight(.heavy)
                .font(.system(size: 80, weight: .black, design: .default))
            
            Image(systemName: "multiply")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.blue)
            ZStack{
                Color.blue
                    .frame(width:650,height: 200)
                Text("解説")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                    .bold()
            }
            
            HStack {
                
                NavigationLink(destination: moviestart4()) {
                    
                    Text("動画を見る")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
                
                NavigationLink(destination: Quiz1answer5()) {
                    
                    Text("次の問題へ")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
            }
        }
    }
}

struct moviestart4: View{
    
    private let player = AVPlayer(url: Bundle.main.url(forResource:"movie",withExtension: "mp4")!)
    
    var body: some View{
        VideoPlayer(player: player)
            .onAppear(){
                player.play()
                
            }
            .onDisappear(){
                player.pause()
            }
    }
}


//地下水５
struct Quiz1answer5: View {
    @State private var isShowing2View5: Bool = false
    var body: some View {
        VStack (spacing: 10){
            Button(action: {self.isShowing2View5.toggle()}){
                ZStack{
                    Image(systemName: "drop.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.blue)
                    Text("戻る")
                        .padding(.vertical)
                        .foregroundColor(.white)
                }
            }.fullScreenCover(isPresented:$isShowing2View5){
                finishView()
            }.offset(x:500,y: -100)
            Text("地下水5")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding()
            
            
            ZStack{
                Color.red
                    .frame(width:650,height: 300)
                Text("問題")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                    .bold()
            }
            
            .padding()
            .padding()
            HStack {
                
                NavigationLink(destination: Quiz1answer5true()) {
                    
                    Label("ハート", systemImage: "suit.heart.fill")
                        .labelStyle(MyLabelStyle5(color: .red))
                }
                
                NavigationLink(destination: Quiz1answer5false()) {
                    
                    Label("クラブ", systemImage: "suit.club.fill")
                        .labelStyle(MyLabelStyle5(color: .green))
                }
                
                NavigationLink(destination: Quiz1answer5false()) {
                    
                    Label("ダイヤ", systemImage: "suit.diamond.fill")
                        .labelStyle(MyLabelStyle5(color: .yellow))
                    
                }
                
                
            }
            
        }
    }
}

struct MyLabelStyle5: LabelStyle {
    let color: Color
    
    func makeBody(configuration: Configuration) -> some View {
        
        HStack {
            configuration.icon      // アイコン
                .padding(10)
                .background(Circle().fill(color))
            
            configuration.title     // タイトル
                .padding(.trailing, 10)
                .lineLimit(1)       // 改行させない
        }
        .padding(6)
        .background(RoundedRectangle(cornerRadius: 10).stroke(color, lineWidth: 3))
    }
}

struct Quiz1answer5true: View {
    var body: some View {
        VStack(spacing: 30){
            Text("正解")
                .fontWeight(.heavy)
                .font(.system(size: 80, weight: .black, design: .default))
            
            Image(systemName: "poweroff")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.red)
            ZStack{
                Color.red
                    .frame(width:650,height: 200)
                Text("解説")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                    .bold()
            }
            
            HStack {
                
                NavigationLink(destination: moviestart5()) {
                    
                    Text("動画を見る")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
                
                NavigationLink(destination: Quiz1End()) {
                    
                    Text("次の問題へ")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
            }
        }
    }
}
struct Quiz1answer5false: View {
    var body: some View {
        VStack(spacing: 30){
            Text("不正解")
                .fontWeight(.heavy)
                .font(.system(size: 80, weight: .black, design: .default))
            
            Image(systemName: "multiply")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.blue)
            ZStack{
                Color.blue
                    .frame(width:650,height: 200)
                Text("解説")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                    .bold()
            }
            
            HStack {
                
                NavigationLink(destination: moviestart5()) {
                    
                    Text("動画を見る")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
                
                NavigationLink(destination: Quiz1End()) {
                    
                    Text("次の問題へ")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
            }
        }
    }
}

struct moviestart5: View{
    
    private let player = AVPlayer(url: Bundle.main.url(forResource:"movie",withExtension: "mp4")!)
    
    var body: some View{
        VideoPlayer(player: player)
            .onAppear(){
                player.play()
                
            }
            .onDisappear(){
                player.pause()
            }
    }
}

struct finishView: View{
    
    var body: some View{
        VStack{
            Text("　中止しますか？")
                .font(.system(size: 70, weight: .black))
            HStack{
                NavigationLink(destination: StudyView()){
                    
                    Text("はい")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 200, height: 150)
                        .border(Color.gray, width: 5)
                }
                
                NavigationLink(destination: Quiz1answer1()){
                    HStack{
                        Text("いいえ")
                            .foregroundColor(.red)
                            .font(.largeTitle)
                            .bold()
                            .frame(width: 200, height: 150)
                            .border(Color.gray, width: 5)
                    }
                }
            }
        }
    }
}

struct Quiz1End: View{
    
    var body: some View{
        VStack{
            Text("５問中〇〇問正解しました！")
                .font(.system(size: 70, weight: .black, design: .default))
                .bold()
                .padding()
                .padding()
                .padding()
            NavigationLink(destination: StudyView()){
                ZStack{
                    Color.red
                        .frame(width:200,height: 110)
                    Text("終了")
                        .foregroundColor(.black)
                        .font(.largeTitle)
                        .bold()
                }
            }
        }
    }
}


struct Quiz1_Previews: PreviewProvider {
    static var previews: some View {
        Quiz1answer1()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
