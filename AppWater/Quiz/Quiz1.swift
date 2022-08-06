////
////  Quiz1.swift
////  AppWater
////
////  Created by 松下慎吾 on 2022/04/13.
////
//
//import SwiftUI
//import AVKit
//
//struct ModalView1: View {
//
//    @Environment(\.presentationMode)var PresentationMode
//
//    var body: some View {
//        NavigationView{
//            NavigationLink(destination: Quiz1answer1()){
//                ZStack{
//                    Image(systemName: "drop.fill")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 200, height: 200)
//                        .foregroundColor(.yellow)
//                    Text("START!")
//                        .padding(.vertical)
//                        .foregroundColor(.white)
//                        .navigationBarItems(trailing:Button(action:{self.PresentationMode.wrappedValue.dismiss()
//                        })
//                                            {
//                            Text("戻る")
//                        })
//
//                }
//
//            }.navigationViewStyle(.stack)
//
//
//        }
//    }
//}
//
//struct Quiz1answer1: View {
//
//    @State private var isShowing2View1: Bool = false
//
//    var body: some View {
//
//
//        VStack (spacing: 10){
//            Button(action: {self.isShowing2View1.toggle()}){
//                ZStack{
//                    Image(systemName: "drop.fill")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 70, height: 70)
//                        .foregroundColor(.blue)
//                    Text("やめる")
//                        .padding(.vertical)
//                        .foregroundColor(.white)
//                }
//            }.fullScreenCover(isPresented:$isShowing2View1){
//                finishView()
//            }.offset(x:500,y: -100)
//
//            Text("地下水１")
//                .font(Font.mainFont(size: 40))
//                .fontWeight(.heavy)
//                .padding()
//
//
//            ZStack{
//                Rectangle()
//                    .stroke(lineWidth: 5)
//                    .frame(width:800,height: 300)
//                Text("熊本の地下水を汚染している代表的な物質はどれ？")
//                    .foregroundColor(.black)
//                    .font(Font.mainFont(size: 40))
//                    .bold()
//                    .multilineTextAlignment(.center)
//            }
//
//            .padding()
//            .padding()
//            HStack {
//
//                NavigationLink(destination: Quiz1answer1true()) {
//
//                    Label("硝酸性窒素", systemImage: "suit.heart.fill")
//                        .labelStyle(MyLabelStyle1(color: .red))
//                }
//
//                NavigationLink(destination: Quiz1answer1false()) {
//
//                    Label("全シアン", systemImage: "suit.club.fill")
//                        .labelStyle(MyLabelStyle1(color: .green))
//                }
//
//                NavigationLink(destination: Quiz1answer1false()) {
//
//                    Label("四塩化炭素", systemImage: "suit.diamond.fill")
//                        .labelStyle(MyLabelStyle1(color: .yellow))
//
//                }
//
//
//            }
//
//        }
//    }
//}
//
//struct MyLabelStyle1: LabelStyle {
//    let color: Color
//
//    func makeBody(configuration: Configuration) -> some View {
//
//        HStack {
//            configuration.icon      // アイコン
//                .padding(10)
//                .background(Circle().fill(color))
//
//            configuration.title     // タイトル
//                .padding(.trailing, 10)
//                .lineLimit(1)       // 改行させない
//        }
//        .padding(6)
//        .background(RoundedRectangle(cornerRadius: 10).stroke(color, lineWidth: 3))
//    }
//}
//
//struct Quiz1answer1true: View {
//    @State var showingmovie1 = false
//    var body: some View {
//        VStack(spacing: 30){
//            Text("正解")
//                .fontWeight(.heavy)
//                .font(.system(size: 80, weight: .black, design: .default))
//
//            Image(systemName: "poweroff")
//                .resizable()
//                .scaledToFit()
//                .frame(width: 200, height: 200)
//                .foregroundColor(.red)
//            ZStack{
//                Color.red
//                    .frame(width:650,height: 200)
//                Text("解説")
//                    .foregroundColor(.black)
//                    .font(Font.mainFont(size: 40))
//                    .bold()
//            }
//
//            HStack {
//                Button(action:{
//                    showingmovie1 = true
//                }){Text("動画を見る")
//                    .foregroundColor(.red)
//                    .font(Font.mainFont(size: 40))
//                    .bold()
//                    .frame(width: 200, height: 100)
//                    .border(Color.gray, width: 5)
//                }.fullScreenCover(isPresented: $showingmovie1){
//                    moviestart1()
//                }
////                NavigationLink(destination: moviestart1()) {
////
////                    Text("動画を見る")
////                        .foregroundColor(.red)
////                        .font(Font.mainFont(size: 40))
////                        .bold()
////                        .frame(width: 200, height: 100)
////                        .border(Color.gray, width: 5)
////                }.ignoresSafeArea()
//
//                NavigationLink(destination: Quiz1answer2()) {
//
//                    Text("次の問題へ")
//                        .foregroundColor(.red)
//                        .font(Font.mainFont(size: 40))
//                        .bold()
//                        .frame(width: 200, height: 100)
//                        .border(Color.gray, width: 5)
//                }
//            }
//        }
//    }
//}
//
//struct Quiz1answer1false: View {
//    var body: some View {
//        VStack(spacing: 30){
//            Text("不正解")
//                .fontWeight(.heavy)
//                .font(.system(size: 80, weight: .black, design: .default))
//
//            Image(systemName: "multiply")
//                .resizable()
//                .scaledToFit()
//                .frame(width: 200, height: 200)
//                .foregroundColor(.blue)
//            ZStack{
//                Color.blue
//                    .frame(width:650,height: 200)
//                Text("解説")
//                    .foregroundColor(.black)
//                    .font(Font.mainFont(size: 40))
//                    .bold()
//            }
//
//            HStack {
//
//                NavigationLink(destination: moviestart1()) {
//
//                    Text("動画を見る")
//                        .foregroundColor(.red)
//                        .font(Font.mainFont(size: 40))
//                        .bold()
//                        .frame(width: 200, height: 100)
//                        .border(Color.gray, width: 5)
//                }
//
//                NavigationLink(destination: Quiz1answer2()) {
//
//                    Text("次の問題へ")
//                        .foregroundColor(.red)
//                        .font(Font.mainFont(size: 40))
//                        .bold()
//                        .frame(width: 200, height: 100)
//                        .border(Color.gray, width: 5)
//                }
//            }
//        }
//    }
//}
//
////地下水2
//struct Quiz1answer2: View {
//    @State private var isShowing2View2: Bool = false
//    var body: some View {
//        VStack (spacing: 10){
//            Button(action: {self.isShowing2View2.toggle()}){
//                ZStack{
//                    Image(systemName: "drop.fill")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 50, height: 50)
//                        .foregroundColor(.blue)
//                    Text("戻る")
//                        .padding(.vertical)
//                        .foregroundColor(.white)
//                }
//            }.fullScreenCover(isPresented:$isShowing2View2){
//                finishView()
//            }.offset(x:500,y: -100)
//            Text("地下水２")
//                .font(Font.mainFont(size: 40))
//                .fontWeight(.heavy)
//                .padding()
//
//
//            ZStack{
//                Rectangle()
//                    .stroke(lineWidth: 5)
//                    .frame(width:850,height: 300)
//                Text("地下水は日本の水使用量全体の約何％を占めている？")
//                    .foregroundColor(.black)
//                    .font(Font.mainFont(size: 40))
//                    .bold()
//                    .multilineTextAlignment(.center)
//            }
//
//            .padding()
//            .padding()
//            HStack {
//
//                NavigationLink(destination: Quiz1answer2false()) {
//
//                    Label("30%", systemImage: "suit.heart.fill")
//                        .labelStyle(MyLabelStyle2(color: .red))
//                }
//
//                NavigationLink(destination: Quiz1answer2true()) {
//
//                    Label("10%", systemImage: "suit.club.fill")
//                        .labelStyle(MyLabelStyle2(color: .green))
//                }
//
//                NavigationLink(destination: Quiz1answer2false()) {
//
//                    Label("50%", systemImage: "suit.diamond.fill")
//                        .labelStyle(MyLabelStyle2(color: .yellow))
//
//                }
//
//
//            }
//
//        }
//    }
//}
//
//struct MyLabelStyle2: LabelStyle {
//    let color: Color
//
//    func makeBody(configuration: Configuration) -> some View {
//
//        HStack {
//            configuration.icon      // アイコン
//                .padding(10)
//                .background(Circle().fill(color))
//
//            configuration.title     // タイトル
//                .padding(.trailing, 10)
//                .lineLimit(1)       // 改行させない
//        }
//        .padding(6)
//        .background(RoundedRectangle(cornerRadius: 10).stroke(color, lineWidth: 3))
//    }
//}
//
//struct Quiz1answer2true: View {
//    var body: some View {
//        VStack(spacing: 30){
//            Text("正解")
//                .fontWeight(.heavy)
//                .font(.system(size: 80, weight: .black, design: .default))
//
//            Image(systemName: "poweroff")
//                .resizable()
//                .scaledToFit()
//                .frame(width: 200, height: 200)
//                .foregroundColor(.red)
//            ZStack{
//                Color.red
//                    .frame(width:650,height: 200)
//                Text("解説")
//                    .foregroundColor(.black)
//                    .font(Font.mainFont(size: 40))
//                    .bold()
//            }
//
//            HStack {
//
//                NavigationLink(destination: moviestart2()) {
//
//                    Text("動画を見る")
//                        .foregroundColor(.red)
//                        .font(Font.mainFont(size: 40))
//                        .bold()
//                        .frame(width: 200, height: 100)
//                        .border(Color.gray, width: 5)
//                }
//
//                NavigationLink(destination: Quiz1answer3()) {
//
//                    Text("次の問題へ")
//                        .foregroundColor(.red)
//                        .font(Font.mainFont(size: 40))
//                        .bold()
//                        .frame(width: 200, height: 100)
//                        .border(Color.gray, width: 5)
//                }
//            }
//        }
//    }
//}
//
//struct Quiz1answer2false: View {
//    var body: some View {
//        VStack(spacing: 30){
//            Text("不正解")
//                .fontWeight(.heavy)
//                .font(.system(size: 80, weight: .black, design: .default))
//
//            Image(systemName: "multiply")
//                .resizable()
//                .scaledToFit()
//                .frame(width: 200, height: 200)
//                .foregroundColor(.blue)
//            ZStack{
//                Color.blue
//                    .frame(width:650,height: 200)
//                Text("解説")
//                    .foregroundColor(.black)
//                    .font(Font.mainFont(size: 40))
//                    .bold()
//            }
//
//            HStack {
//
//                NavigationLink(destination: moviestart2()) {
//
//                    Text("動画を見る")
//                        .foregroundColor(.red)
//                        .font(Font.mainFont(size: 40))
//                        .bold()
//                        .frame(width: 200, height: 100)
//                        .border(Color.gray, width: 5)
//                }
//
//                NavigationLink(destination: Quiz1answer3()) {
//
//                    Text("次の問題へ")
//                        .foregroundColor(.red)
//                        .font(Font.mainFont(size: 40))
//                        .bold()
//                        .frame(width: 200, height: 100)
//                        .border(Color.gray, width: 5)
//                }
//            }
//        }
//    }
//}
////地下水３
//struct Quiz1answer3: View {
//    @State private var isShowing2View3: Bool = false
//    var body: some View {
//        VStack (spacing: 10){
//            Button(action: {self.isShowing2View3.toggle()}){
//                ZStack{
//                    Image(systemName: "drop.fill")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 50, height: 50)
//                        .foregroundColor(.blue)
//                    Text("戻る")
//                        .padding(.vertical)
//                        .foregroundColor(.white)
//                }
//            }.fullScreenCover(isPresented:$isShowing2View3){
//                finishView()
//            }.offset(x:500,y: -100)
//            Text("地下水3")
//                .font(Font.mainFont(size: 40))
//                .fontWeight(.heavy)
//                .padding()
//
//
//            ZStack{
//                Rectangle()
//                    .stroke(lineWidth: 5)
//                    .frame(width:1050,height: 300)
//                Text("地下水が減少している理由は2つあり、一つは、水田が畑になっていることである。もう一つは？")
//                    .foregroundColor(.black)
//                    .font(Font.mainFont(size: 40))
//                    .bold()
//                    .multilineTextAlignment(.center)
//            }
//
//            .padding()
//            .padding()
//            HStack {
//
//                NavigationLink(destination: Quiz1answer3false()) {
//
//                    Label("街が広がって、雨水が染み込まないから", systemImage: "suit.heart.fill")
//                        .labelStyle(MyLabelStyle3(color: .red))
//                }
//
//                NavigationLink(destination: Quiz1answer3false()) {
//
//                    Label("森が広がって、雨水が染み込まないから", systemImage: "suit.club.fill")
//                        .labelStyle(MyLabelStyle3(color: .green))
//                }
//
//                NavigationLink(destination: Quiz1answer3true()) {
//
//                    Label("土地が汚れて、雨水が染み込まないから", systemImage: "suit.diamond.fill")
//                        .labelStyle(MyLabelStyle3(color: .yellow))
//
//                }
//
//
//            }
//
//        }
//    }
//}
//
//struct MyLabelStyle3: LabelStyle {
//    let color: Color
//
//    func makeBody(configuration: Configuration) -> some View {
//
//        HStack {
//            configuration.icon      // アイコン
//                .padding(10)
//                .background(Circle().fill(color))
//
//            configuration.title     // タイトル
//                .padding(.trailing, 10)
//                .lineLimit(1)       // 改行させない
//        }
//        .padding(6)
//        .background(RoundedRectangle(cornerRadius: 10).stroke(color, lineWidth: 3))
//    }
//}
//
//struct Quiz1answer3true: View {
//    var body: some View {
//        VStack(spacing: 30){
//            Text("正解")
//                .fontWeight(.heavy)
//                .font(.system(size: 80, weight: .black, design: .default))
//
//            Image(systemName: "poweroff")
//                .resizable()
//                .scaledToFit()
//                .frame(width: 200, height: 200)
//                .foregroundColor(.red)
//            ZStack{
//                Color.red
//                    .frame(width:650,height: 200)
//                Text("解説")
//                    .foregroundColor(.black)
//                    .font(Font.mainFont(size: 40))
//                    .bold()
//            }
//
//            HStack {
//
//                NavigationLink(destination: moviestart3()) {
//
//                    Text("動画を見る")
//                        .foregroundColor(.red)
//                        .font(Font.mainFont(size: 40))
//                        .bold()
//                        .frame(width: 200, height: 100)
//                        .border(Color.gray, width: 5)
//                }
//
//                NavigationLink(destination: Quiz1answer4()) {
//
//                    Text("次の問題へ")
//                        .foregroundColor(.red)
//                        .font(Font.mainFont(size: 40))
//                        .bold()
//                        .frame(width: 200, height: 100)
//                        .border(Color.gray, width: 5)
//                }
//            }
//        }
//    }
//}
//
//struct Quiz1answer3false: View {
//    var body: some View {
//        VStack(spacing: 30){
//            Text("不正解")
//                .fontWeight(.heavy)
//                .font(.system(size: 80, weight: .black, design: .default))
//
//            Image(systemName: "multiply")
//                .resizable()
//                .scaledToFit()
//                .frame(width: 200, height: 200)
//                .foregroundColor(.blue)
//            ZStack{
//                Color.blue
//                    .frame(width:650,height: 200)
//                Text("解説")
//                    .foregroundColor(.black)
//                    .font(Font.mainFont(size: 40))
//                    .bold()
//            }
//
//            HStack {
//
//                NavigationLink(destination: moviestart3()) {
//
//                    Text("動画を見る")
//                        .foregroundColor(.red)
//                        .font(Font.mainFont(size: 40))
//                        .bold()
//                        .frame(width: 200, height: 100)
//                        .border(Color.gray, width: 5)
//                }
//
//                NavigationLink(destination: Quiz1answer4()) {
//
//                    Text("次の問題へ")
//                        .foregroundColor(.red)
//                        .font(Font.mainFont(size: 40))
//                        .bold()
//                        .frame(width: 200, height: 100)
//                        .border(Color.gray, width: 5)
//                }
//            }
//        }
//    }
//}
////地下水４
//struct Quiz1answer4: View {
//    @State private var isShowing2View4: Bool = false
//    var body: some View {
//        VStack (spacing: 10){
//            Button(action: {self.isShowing2View4.toggle()}){
//                ZStack{
//                    Image(systemName: "drop.fill")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 50, height: 50)
//                        .foregroundColor(.blue)
//                    Text("戻る")
//                        .padding(.vertical)
//                        .foregroundColor(.white)
//                }
//            }.fullScreenCover(isPresented:$isShowing2View4){
//                finishView()
//            }.offset(x:500,y: -100)
//            Text("地下水4")
//                .font(Font.mainFont(size: 40))
//                .fontWeight(.heavy)
//                .padding()
//
//
//            ZStack{
//                Color.red
//                    .frame(width:650,height: 300)
//                Text("問題")
//                    .foregroundColor(.black)
//                    .font(Font.mainFont(size: 40))
//                    .bold()
//            }
//
//            .padding()
//            .padding()
//            HStack {
//
//                NavigationLink(destination: Quiz1answer4false()) {
//
//                    Label("ハート", systemImage: "suit.heart.fill")
//                        .labelStyle(MyLabelStyle4(color: .red))
//                }
//
//                NavigationLink(destination: Quiz1answer4true()) {
//
//                    Label("クラブ", systemImage: "suit.club.fill")
//                        .labelStyle(MyLabelStyle4(color: .green))
//                }
//
//                NavigationLink(destination: Quiz1answer4false()) {
//
//                    Label("ダイヤ", systemImage: "suit.diamond.fill")
//                        .labelStyle(MyLabelStyle4(color: .yellow))
//
//                }
//
//
//            }
//
//        }
//    }
//}
//
//struct MyLabelStyle4: LabelStyle {
//    let color: Color
//
//    func makeBody(configuration: Configuration) -> some View {
//
//        HStack {
//            configuration.icon      // アイコン
//                .padding(10)
//                .background(Circle().fill(color))
//
//            configuration.title     // タイトル
//                .padding(.trailing, 10)
//                .lineLimit(1)       // 改行させない
//        }
//        .padding(6)
//        .background(RoundedRectangle(cornerRadius: 10).stroke(color, lineWidth: 3))
//    }
//}
//
//struct Quiz1answer4true: View {
//    var body: some View {
//        VStack(spacing: 30){
//            Text("正解")
//                .fontWeight(.heavy)
//                .font(.system(size: 80, weight: .black, design: .default))
//
//            Image(systemName: "poweroff")
//                .resizable()
//                .scaledToFit()
//                .frame(width: 200, height: 200)
//                .foregroundColor(.red)
//            ZStack{
//                Color.red
//                    .frame(width:650,height: 200)
//                Text("解説")
//                    .foregroundColor(.black)
//                    .font(Font.mainFont(size: 40))
//                    .bold()
//            }
//
//            HStack {
//
//                NavigationLink(destination: moviestart4()) {
//
//                    Text("動画を見る")
//                        .foregroundColor(.red)
//                        .font(Font.mainFont(size: 40))
//                        .bold()
//                        .frame(width: 200, height: 100)
//                        .border(Color.gray, width: 5)
//                }
//
//                NavigationLink(destination: Quiz1answer5()) {
//
//                    Text("次の問題へ")
//                        .foregroundColor(.red)
//                        .font(Font.mainFont(size: 40))
//                        .bold()
//                        .frame(width: 200, height: 100)
//                        .border(Color.gray, width: 5)
//                }
//            }
//        }
//    }
//}
//
//struct Quiz1answer4false: View {
//    var body: some View {
//        VStack(spacing: 30){
//            Text("不正解")
//                .fontWeight(.heavy)
//                .font(.system(size: 80, weight: .black, design: .default))
//
//            Image(systemName: "multiply")
//                .resizable()
//                .scaledToFit()
//                .frame(width: 200, height: 200)
//                .foregroundColor(.blue)
//            ZStack{
//                Color.blue
//                    .frame(width:650,height: 200)
//                Text("解説")
//                    .foregroundColor(.black)
//                    .font(Font.mainFont(size: 40))
//                    .bold()
//            }
//
//            HStack {
//
//                NavigationLink(destination: moviestart4()) {
//
//                    Text("動画を見る")
//                        .foregroundColor(.red)
//                        .font(Font.mainFont(size: 40))
//                        .bold()
//                        .frame(width: 200, height: 100)
//                        .border(Color.gray, width: 5)
//                }
//
//                NavigationLink(destination: Quiz1answer5()) {
//
//                    Text("次の問題へ")
//                        .foregroundColor(.red)
//                        .font(Font.mainFont(size: 40))
//                        .bold()
//                        .frame(width: 200, height: 100)
//                        .border(Color.gray, width: 5)
//                }
//            }
//        }
//    }
//}
//
////地下水５
//struct Quiz1answer5: View {
//    @State private var isShowing2View5: Bool = false
//    var body: some View {
//        VStack (spacing: 10){
//            Button(action: {self.isShowing2View5.toggle()}){
//                ZStack{
//                    Image(systemName: "drop.fill")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 50, height: 50)
//                        .foregroundColor(.blue)
//                    Text("戻る")
//                        .padding(.vertical)
//                        .foregroundColor(.white)
//                }
//            }.fullScreenCover(isPresented:$isShowing2View5){
//                finishView()
//            }.offset(x:500,y: -100)
//            Text("地下水5")
//                .font(Font.mainFont(size: 40))
//                .fontWeight(.heavy)
//                .padding()
//
//
//            ZStack{
//                Color.red
//                    .frame(width:650,height: 300)
//                Text("問題")
//                    .foregroundColor(.black)
//                    .font(Font.mainFont(size: 40))
//                    .bold()
//            }
//
//            .padding()
//            .padding()
//            HStack {
//
//                NavigationLink(destination: Quiz1answer5true()) {
//
//                    Label("ハート", systemImage: "suit.heart.fill")
//                        .labelStyle(MyLabelStyle5(color: .red))
//                }
//
//                NavigationLink(destination: Quiz1answer5false()) {
//
//                    Label("クラブ", systemImage: "suit.club.fill")
//                        .labelStyle(MyLabelStyle5(color: .green))
//                }
//
//                NavigationLink(destination: Quiz1answer5false()) {
//
//                    Label("ダイヤ", systemImage: "suit.diamond.fill")
//                        .labelStyle(MyLabelStyle5(color: .yellow))
//
//                }
//
//
//            }
//
//        }
//    }
//}
//
//struct MyLabelStyle5: LabelStyle {
//    let color: Color
//
//    func makeBody(configuration: Configuration) -> some View {
//
//        HStack {
//            configuration.icon      // アイコン
//                .padding(10)
//                .background(Circle().fill(color))
//
//            configuration.title     // タイトル
//                .padding(.trailing, 10)
//                .lineLimit(1)       // 改行させない
//        }
//        .padding(6)
//        .background(RoundedRectangle(cornerRadius: 10).stroke(color, lineWidth: 3))
//    }
//}
//
//struct Quiz1answer5true: View {
//    var body: some View {
//        VStack(spacing: 30){
//            Text("正解")
//                .fontWeight(.heavy)
//                .font(.system(size: 80, weight: .black, design: .default))
//
//            Image(systemName: "poweroff")
//                .resizable()
//                .scaledToFit()
//                .frame(width: 200, height: 200)
//                .foregroundColor(.red)
//            ZStack{
//                Color.red
//                    .frame(width:650,height: 200)
//                Text("解説")
//                    .foregroundColor(.black)
//                    .font(Font.mainFont(size: 40))
//                    .bold()
//            }
//
//            HStack {
//
//                NavigationLink(destination: moviestart5()) {
//
//                    Text("動画を見る")
//                        .foregroundColor(.red)
//                        .font(Font.mainFont(size: 40))
//                        .bold()
//                        .frame(width: 200, height: 100)
//                        .border(Color.gray, width: 5)
//                }
//
//                NavigationLink(destination: Quiz1End()) {
//
//                    Text("次の問題へ")
//                        .foregroundColor(.red)
//                        .font(Font.mainFont(size: 40))
//                        .bold()
//                        .frame(width: 200, height: 100)
//                        .border(Color.gray, width: 5)
//                }
//            }
//        }
//    }
//}
//
//struct Quiz1answer5false: View {
//    var body: some View {
//        VStack(spacing: 30){
//            Text("不正解")
//                .fontWeight(.heavy)
//                .font(.system(size: 80, weight: .black, design: .default))
//
//            Image(systemName: "multiply")
//                .resizable()
//                .scaledToFit()
//                .frame(width: 200, height: 200)
//                .foregroundColor(.blue)
//            ZStack{
//                Color.blue
//                    .frame(width:650,height: 200)
//                Text("解説")
//                    .foregroundColor(.black)
//                    .font(Font.mainFont(size: 40))
//                    .bold()
//            }
//
//            HStack {
//
//                NavigationLink(destination: moviestart5()) {
//
//                    Text("動画を見る")
//                        .foregroundColor(.red)
//                        .font(Font.mainFont(size: 40))
//                        .bold()
//                        .frame(width: 200, height: 100)
//                        .border(Color.gray, width: 5)
//                }
//
//                NavigationLink(destination: Quiz1End()) {
//
//                    Text("次の問題へ")
//                        .foregroundColor(.red)
//                        .font(Font.mainFont(size: 40))
//                        .bold()
//                        .frame(width: 200, height: 100)
//                        .border(Color.gray, width: 5)
//                }
//            }
//        }
//    }
//}
//
//struct finishView: View{
//
//    var body: some View{
//        VStack{
//            Text("　中止しますか？")
//                .font(.system(size: 70, weight: .black))
//            HStack{
//                NavigationLink(destination: StudyView()){
//
//                    Text("はい")
//                        .foregroundColor(.red)
//                        .font(Font.mainFont(size: 40))
//                        .bold()
//                        .frame(width: 200, height: 150)
//                        .border(Color.gray, width: 5)
//                }
//
//                NavigationLink(destination: Quiz1answer1()){
//                    HStack{
//                        Text("いいえ")
//                            .foregroundColor(.red)
//                            .font(Font.mainFont(size: 40))
//                            .bold()
//                            .frame(width: 200, height: 150)
//                            .border(Color.gray, width: 5)
//                    }
//                }
//            }
//        }
//    }
//}
//
//struct Quiz1End: View{
//
//    var body: some View{
//        VStack{
//            Text("５問中〇〇問正解しました！")
//                .font(.system(size: 70, weight: .black, design: .default))
//                .bold()
//                .padding()
//                .padding()
//                .padding()
//            NavigationLink(destination: StudyView()){
//                ZStack{
//                    Color.red
//                        .frame(width:200,height: 110)
//                    Text("終了")
//                        .foregroundColor(.black)
//                        .font(Font.mainFont(size: 40))
//                        .bold()
//                }
//            }
//        }
//    }
//}
//
//
//struct Quiz1_Previews: PreviewProvider {
//    static var previews: some View {
//        Quiz1answer1()
//            .previewInterfaceOrientation(.landscapeLeft)
//    }
//}


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
                        .foregroundColor(Color(red: 0.671, green: 0.863, blue: 0.678))
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
    
    @State private var isShowing1View1: Bool = false
    
    @State var progress: CGFloat = 0.30
    
    @State var startAnimation:CGFloat = 0
    
    var body: some View {
        ZStack{
            Color(red: 0.671, green: 0.863, blue: 0.678)
                .ignoresSafeArea()
            Waterwave(progress: progress, waveHeght: 0.015, offset: startAnimation)
                .fill(Color.white)
            VStack (spacing: 10){
                
                Button(action: {self.isShowing1View1.toggle()}){
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
                }.fullScreenCover(isPresented:$isShowing1View1){
                    finishView()
                }.offset(x:500,y: -100)
                
                    Text("第１問")
                        .font(Font.mainFont(size: 60))
                        .fontWeight(.heavy)
                        .padding()
                        .offset(y: -100)
                        .foregroundColor(Color(red: 0.275,green: 0.459,blue:0.255))

                ZStack{
                                    Text("熊本の地下水を汚染している\n代表的な物質はどれ？")
                                        .font(Font.mainFont(size: 60))
                                        .bold()
                                        .multilineTextAlignment(.center)
                                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                    
                                        
                }.offset(y: -80)

                HStack {

                    NavigationLink(destination: Quiz1answer1true()) {
                        ZStack{
                               Rectangle()
                                .fill(Color.white)
                                .frame(width:250,height: 150)
                                .cornerRadius(10)
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                            Text("硝酸性窒素")
                                .font(Font.mainFont(size: 40))
                                .background(Color.white)
                                .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                                .frame(width: 300, height: 100)
                                                
                        }
                            
                    }
                            
                    NavigationLink(destination: Quiz1answer1false()) {

                        ZStack{
                               Rectangle()
                                .fill(Color.white)
                                
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                .frame(width:250,height: 150)
                                .cornerRadius(10)
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                            Text("全シアン")
                                .font(Font.mainFont(size: 40))
                                .background(Color.white)
                                .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                                .frame(width: 300, height: 100)
                                                
                        }
                    }
                            
                    
                    NavigationLink(destination: Quiz1answer1false()) {

                        ZStack{
                               Rectangle()
                                .fill(Color.white)
                                
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                .frame(width:250,height: 150)
                                .cornerRadius(10)
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                            Text("四塩化炭素")
                                .font(Font.mainFont(size: 40))
                                .background(Color.white)
                                .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                                .frame(width: 300, height: 100)
                                                
                        }


                    }

                 
                        }
                .padding()
                .padding()
                ZStack{
                    Color(red: 0.898,green: 0.361,blue:0.306)
                        .frame(width:500,height: 120)
                        .cornerRadius(30)
                    Text("こたえる")
                        .font(Font.mainFont(size: 40))
                        .bold()
                        .foregroundColor(.white)
                }
        }

            
        }
    }
}

struct Quiz1answer1true: View {
    var body: some View {
        ZStack{
            Color(red: 0.671, green: 0.863, blue: 0.678)
                .ignoresSafeArea()

            VStack(spacing: 30){
                Text("正解")
                    .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                .fontWeight(.heavy)
                .font(.system(size: 80, weight: .black, design: .default))
                
                Image(systemName: "poweroff")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .foregroundColor(.red)
                ZStack{
                    Text("解説")
                                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                                        .font(Font.mainFont(size: 40))
                                        .bold()
                                        .frame(width:650,height: 200)
                                        .border(Color.red, width: 10)
                                }
                
                HStack {

                    NavigationLink(destination: moviestart1()) {

                        Text("動画を見る")
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .font(Font.mainFont(size: 40))
                            .bold()
                            .frame(width: 200, height: 100)
                            .border(Color.gray, width: 5)
                    }
                            
                    NavigationLink(destination: Quiz1answer2()) {

                        Text("次の問題へ")
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .font(Font.mainFont(size: 40))
                            .bold()
                            .frame(width: 200, height: 100)
                            .border(Color.gray, width: 5)
                    }
            }
        }
        }

}
}
struct Quiz1answer1false: View {
    var body: some View {
        
        ZStack{
            Color(red: 0.671, green: 0.863, blue: 0.678)
                .ignoresSafeArea()
        VStack(spacing: 30){
            Text("不正解")
            .fontWeight(.heavy)
            .font(.system(size: 80, weight: .black, design: .default))
            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
            
            Image(systemName: "multiply")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.blue)
            ZStack{
                    Text("解説")
                    .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                    .font(Font.mainFont(size: 40))
                    .bold()
                    .frame(width:650,height: 200)
                    .border(Color.blue, width: 10)
                            }
            
            HStack {

                NavigationLink(destination: moviestart1()) {

                    Text("動画を見る")
                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                        .font(Font.mainFont(size: 40))
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
                        
                NavigationLink(destination: Quiz1answer2()) {

                    Text("次の問題へ")
                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                        .font(Font.mainFont(size: 40))
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
        }
    }
        }
}
}
//地下水2
struct Quiz1answer2: View {
    @State private var isShowing1View2: Bool = false
    
    @State var progress: CGFloat = 0.35
        @State var startAnimation:CGFloat = 0
    var body: some View {
        ZStack{
            Color(red: 0.671, green: 0.863, blue: 0.678)
                .ignoresSafeArea()
            Waterwave(progress: progress, waveHeght: 0.03, offset: startAnimation)
                .fill(Color.white)
        VStack (spacing: 10){
            Button(action: {self.isShowing1View2.toggle()}){
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
            }.fullScreenCover(isPresented:$isShowing1View2){
                finishView()
            }.offset(x:500,y: -100)
            Text("第２問")
                .font(Font.mainFont(size: 60))
                .fontWeight(.heavy)
                .padding()
                .offset(y: -100)
                .foregroundColor(Color(red: 0.275,green: 0.459,blue:0.255))
                .font(.system(size: 80, weight: .black, design: .default))
            

            ZStack{
                                Text("川の水源や地下水を守るために\n水を蓄える働きをする森を何という？")
                    .font(Font.mainFont(size: 60))
                                    .bold()
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                
                                    
            }.offset(y: -80)

            HStack {

                NavigationLink(destination: Quiz1answer2false()) {

                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("間違い")
                            .font(Font.mainFont(size: 40))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                                            
                    }
                        
                }
                        
                NavigationLink(destination: Quiz1answer2true()) {

                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("水源かん養林")
                            .font(Font.mainFont(size: 40))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                                            
                    }
                        
                }
                        
                NavigationLink(destination: Quiz1answer2false()) {

                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("間違い")
                            .font(Font.mainFont(size: 40))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                                            
                    }
                        
                }

             
                    }
            .padding()
            .padding()
            ZStack{
                Color(red: 0.898,green: 0.361,blue:0.306)
                    .frame(width:500,height: 120)
                    .cornerRadius(30)
                Text("こたえる")
                    .font(Font.mainFont(size: 40))
                    .bold()
                    .foregroundColor(.white)
            }
        }
        }
    }
}

struct Quiz1answer2true: View {
    var body: some View {
        ZStack{
            Color(red: 0.671, green: 0.863, blue: 0.678)
                .ignoresSafeArea()
        VStack(spacing: 30){
            Text("正解")
            .fontWeight(.heavy)
            .font(Font.mainFont(size: 40))
            
            Image(systemName: "poweroff")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.red)
            ZStack{
                Text("解説")
                                                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                                                        .font(Font.mainFont(size: 40))
                                                        .bold()
                                                        .frame(width:650,height: 200)
                                                        .border(Color.red, width: 10)
                            }
            
            HStack {

                NavigationLink(destination: moviestart2()) {

                    Text("動画を見る")
                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                        .font(Font.mainFont(size: 40))
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
                        
                NavigationLink(destination: Quiz1answer3()) {

                    Text("次の問題へ")
                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                        .font(Font.mainFont(size: 40))
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
        }
    }
        }
}
}
struct Quiz1answer2false: View {
    var body: some View {
        ZStack{
            Color(red: 0.671, green: 0.863, blue: 0.678)
                .ignoresSafeArea()
        VStack(spacing: 30){
            Text("不正解")
                .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
            .fontWeight(.heavy)
            .font(.system(size: 80, weight: .black, design: .default))
            
            Image(systemName: "multiply")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.blue)
            ZStack{
                Text("解説")
                                    .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                                    .font(Font.mainFont(size: 40))
                                    .bold()
                                    .frame(width:650,height: 200)
                                    .border(Color.blue, width: 10)
                            }
            
            HStack {

                NavigationLink(destination: moviestart2()) {

                    Text("動画を見る")
                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                        .font(Font.mainFont(size: 40))
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
                        
                NavigationLink(destination: Quiz1answer3()) {

                    Text("次の問題へ")
                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                        .font(Font.mainFont(size: 40))
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
        }
    }
        }
}
}


//地下水３
struct Quiz1answer3: View {
    @State private var isShowing1View3: Bool = false
    
    @State var progress: CGFloat = 0.35
            @State var startAnimation:CGFloat = 0
    var body: some View {
        ZStack{
            Color(red: 0.671, green: 0.863, blue: 0.678)
                .ignoresSafeArea()
            Waterwave(progress: progress, waveHeght: 0.03, offset: startAnimation)
                            .fill(Color.white)
        VStack (spacing: 10){
            Button(action: {self.isShowing1View3.toggle()}){
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
            }.fullScreenCover(isPresented:$isShowing1View3){
                finishView()
            }.offset(x:500,y: -100)
            Text("第３問")
                .font(Font.mainFont(size: 60))
                .fontWeight(.heavy)
                .padding()
                .offset(y: -100)
                .foregroundColor(Color(red: 0.275,green: 0.459,blue:0.255))
                .font(.system(size: 80, weight: .black, design: .default))
            
            

            ZStack{
                                Text("地下水を育む田畑で栽培された農産物や、\nそれを食べて育った畜産物を購入・消費することで\n地下水保全につながる、\n熊本市独自の取り組みをなんというか")
                    .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                                    .font(Font.mainFont(size: 40))
                                    .bold()
                                    .multilineTextAlignment(.center)
                            }

            HStack {

                NavigationLink(destination: Quiz1answer3false()) {
                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("間違い")
                            .font(Font.mainFont(size: 40))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                                            
                    }
                        
                }
                        
                NavigationLink(destination: Quiz1answer3false()) {
                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("間違い")
                            .font(Font.mainFont(size: 40))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                                            
                    }
                }
                        
                NavigationLink(destination: Quiz1answer3true()) {
                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("ウォーター\nオフセット")
                            .font(Font.mainFont(size: 40))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                                            
                    }

                }

             
                    }
            .padding()
                            .padding()
                            ZStack{
                                Color(red: 0.898,green: 0.361,blue:0.306)
                                    .frame(width:500,height: 120)
                                    .cornerRadius(30)
                                Text("こたえる")
                                    .font(Font.mainFont(size: 40))
                                    .bold()
                                    .foregroundColor(.white)
                            }
        }
        }
    }
}


struct Quiz1answer3true: View {
    var body: some View {
        ZStack{
            Color(red: 0.671, green: 0.863, blue: 0.678)
                .ignoresSafeArea()
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
                Text("解説")
                                                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                                                        .font(Font.mainFont(size: 40))
                                                        .bold()
                                                        .frame(width:650,height: 200)
                                                        .border(Color.red, width: 10)
                            }
            
            HStack {

                NavigationLink(destination: moviestart3()) {

                    Text("動画を見る")
                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                        .font(Font.mainFont(size: 40))
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
                        
                NavigationLink(destination: Quiz1answer4()) {

                    Text("次の問題へ")
                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                        .font(Font.mainFont(size: 40))
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
        }
    }
        }
}
}
struct Quiz1answer3false: View {
    var body: some View {
        ZStack{
            Color(red: 0.671, green: 0.863, blue: 0.678)
                .ignoresSafeArea()
        VStack(spacing: 30){
            Text("不正解")
                .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
            .fontWeight(.heavy)
            .font(.system(size: 80, weight: .black, design: .default))
            
            Image(systemName: "multiply")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.blue)
            ZStack{
                Text("解説")
                                    .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                                    .font(Font.mainFont(size: 40))
                                    .bold()
                                    .frame(width:650,height: 200)
                                    .border(Color.blue, width: 10)
                            }
            
            HStack {

                NavigationLink(destination: moviestart3()) {

                    Text("動画を見る")
                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                        .font(Font.mainFont(size: 40))
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
                        
                NavigationLink(destination: Quiz1answer4()) {

                    Text("次の問題へ")
                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                        .font(Font.mainFont(size: 40))
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
        }
    }
        }
}
}

//地下水４
struct Quiz1answer4: View {
    @State private var isShowing1View4: Bool = false
    
    @State var progress: CGFloat = 0.35
            @State var startAnimation:CGFloat = 0
    var body: some View {
        ZStack{
            Color(red: 0.671, green: 0.863, blue: 0.678)
                .ignoresSafeArea()
            Waterwave(progress: progress, waveHeght: 0.03, offset: startAnimation)
                            .fill(Color.white)
        VStack (spacing: 10){
            Button(action: {self.isShowing1View4.toggle()}){
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
            }.fullScreenCover(isPresented:$isShowing1View4){
                finishView()
            }.offset(x:500,y: -100)
            Text("第４問")
                .font(Font.mainFont(size: 60))
                .fontWeight(.heavy)
                .padding()
                .offset(y: -100)
                .foregroundColor(Color(red: 0.275,green: 0.459,blue:0.255))
                .font(.system(size: 80, weight: .black, design: .default))

            ZStack{
                                Text("海の水は蒸発して（）になり、\nその後山に雨がふります。\nそして地面に浸透して地下水になります。")
                                    .font(Font.mainFont(size: 40))
                                    .bold()
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                
                                    
            }.offset(y: -80)


            
            HStack {

                NavigationLink(destination: Quiz1answer4true()) {
                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("雲")
                            .font(Font.mainFont(size: 40))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                                            
                    }
                        
                }
                        
                NavigationLink(destination: Quiz1answer4false()) {

                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("間違い")
                            .font(Font.mainFont(size: 40))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                                            
                    }
                }
                        
                
                NavigationLink(destination: Quiz1answer4false()) {

                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("間違い")
                            .font(Font.mainFont(size: 40))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                                            
                    }


                }

             
                    }
            .padding()
                            .padding()
                            ZStack{
                                Color(red: 0.898,green: 0.361,blue:0.306)
                                    .frame(width:500,height: 120)
                                    .cornerRadius(30)
                                Text("こたえる")
                                    .font(Font.mainFont(size: 40))
                                    .bold()
                                    .foregroundColor(.white)
                            }
        }
        }
    }
}



struct Quiz1answer4true: View {
    var body: some View {
        ZStack{
            Color(red: 0.671, green: 0.863, blue: 0.678)
                .ignoresSafeArea()
        VStack(spacing: 30){
            Text("正解")
                .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
            .fontWeight(.heavy)
            .font(.system(size: 80, weight: .black, design: .default))
            
            Image(systemName: "poweroff")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.red)
            ZStack{
                Text("解説")
                                    .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                                    .font(Font.mainFont(size: 40))
                                    .bold()
                                    .frame(width:650,height: 200)
                                    .border(Color.red, width: 10)
                            }
            
            HStack {

                NavigationLink(destination: moviestart4()) {

                    Text("動画を見る")
                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                        .font(Font.mainFont(size: 40))
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
                        
                NavigationLink(destination: Quiz1answer5()) {

                    Text("次の問題へ")
                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                        .font(Font.mainFont(size: 40))
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
        }
    }
        }
}
}
struct Quiz1answer4false: View {
    var body: some View {
        ZStack{
            Color(red: 0.671, green: 0.863, blue: 0.678)
                .ignoresSafeArea()
        VStack(spacing: 30){
            Text("不正解")
                .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
            .fontWeight(.heavy)
            .font(.system(size: 80, weight: .black, design: .default))
            
            Image(systemName: "multiply")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.blue)
            ZStack{
                Text("解説")
                                    .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                                    .font(Font.mainFont(size: 40))
                                    .bold()
                                    .frame(width:650,height: 200)
                                    .border(Color.blue, width: 10)
                            }
            
            HStack {

                NavigationLink(destination: moviestart4()) {

                    Text("動画を見る")
                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                        .font(Font.mainFont(size: 40))
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
                        
                NavigationLink(destination: Quiz1answer5()) {

                    Text("次の問題へ")
                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                        .font(Font.mainFont(size: 40))
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
        }
    }
        }
}
}


//地下水５
struct Quiz1answer5: View {
    @State private var isShowing1View5: Bool = false
    
    @State var progress: CGFloat = 0.35
            @State var startAnimation:CGFloat = 0
    
    var body: some View {
        ZStack{
            Color(red: 0.671, green: 0.863, blue: 0.678)
                .ignoresSafeArea()
            Waterwave(progress: progress, waveHeght: 0.03, offset: startAnimation)
                            .fill(Color.white)
        VStack (spacing: 10){
            Button(action: {self.isShowing1View5.toggle()}){
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
            }.fullScreenCover(isPresented:$isShowing1View5){
                finishView()
            }.offset(x:500,y: -100)
            Text("第５問")
                .font(Font.mainFont(size: 60))
                .fontWeight(.heavy)
                .padding()
                .offset(y: -100)
                .foregroundColor(Color(red: 0.275,green: 0.459,blue:0.255))
                .font(.system(size: 80, weight: .black, design: .default))

            ZStack{
                                Text("地下水が減少している理由は２つあります。\n一つは街が広がって地面がコンクリートに なっていること。\nもう一つは")
                                    .font(Font.mainFont(size: 50))
                                    .bold()
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                
                                    
            }.offset(y: -80)


            HStack {

                NavigationLink(destination: Quiz1answer5true()) {
                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("水田が畑に\nなっているから")
                            .font(Font.mainFont(size: 30))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                                            
                    }
                        
                }
                        
                NavigationLink(destination: Quiz1answer5false()) {

                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("間違い")
                            .font(Font.mainFont(size: 40))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                                            
                    }
                }
                        
                
                NavigationLink(destination: Quiz1answer5false()) {

                    ZStack{
                           Rectangle()
                            .fill(Color.white)
                            
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            .frame(width:250,height: 150)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 5, y: 5)
                                        Text("間違い")
                            .font(Font.mainFont(size: 40))
                            .background(Color.white)
                            .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                            .frame(width: 300, height: 100)
                                            
                    }


                }

             
                    }
            .padding()
                            .padding()
                            ZStack{
                                Color(red: 0.898,green: 0.361,blue:0.306)
                                    .frame(width:500,height: 120)
                                    .cornerRadius(30)
                                Text("こたえる")
                                    .font(Font.mainFont(size: 40))
                                    .bold()
                                    .foregroundColor(.white)
                            }
        }
        }
    }
}

struct Quiz1answer5true: View {
    var body: some View {
        ZStack{
            Color(red: 0.671, green: 0.863, blue: 0.678)
                .ignoresSafeArea()
        VStack(spacing: 30){
            Text("正解")
                .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
            .fontWeight(.heavy)
            .font(.system(size: 80, weight: .black, design: .default))
            
            Image(systemName: "poweroff")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.red)
            ZStack{
                Text("解説")
                                    .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                                    .font(Font.mainFont(size: 40))
                                    .bold()
                                    .frame(width:650,height: 200)
                                    .border(Color.red, width: 10)
                            }
            
            HStack {

                NavigationLink(destination: moviestart5()) {

                    Text("動画を見る")
                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                        .font(Font.mainFont(size: 40))
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
                        
                NavigationLink(destination: Quiz1End()) {

                    Text("次の問題へ")
                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                        .font(Font.mainFont(size: 40))
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
        }
    }
        }
}
}
struct Quiz1answer5false: View {
    var body: some View {
        ZStack{
            Color(red: 0.671, green: 0.863, blue: 0.678)
                .ignoresSafeArea()
        VStack(spacing: 30){
            Text("不正解")
                .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
            .fontWeight(.heavy)
            .font(.system(size: 80, weight: .black, design: .default))
            
            Image(systemName: "multiply")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.blue)
            ZStack{
                Text("解説")
                                    .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                                    .font(Font.mainFont(size: 40))
                                    .bold()
                                    .frame(width:650,height: 200)
                                    .border(Color.blue, width: 10)
                            }
            
            HStack {

                NavigationLink(destination: moviestart5()) {

                    Text("動画を見る")
                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                        .font(Font.mainFont(size: 40))
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
                        
                NavigationLink(destination: Quiz1End()) {

                    Text("次の問題へ")
                        .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                        .font(Font.mainFont(size: 40))
                        .bold()
                        .frame(width: 200, height: 100)
                        .border(Color.gray, width: 5)
                }
        }
    }
        }
}
}

struct finishView: View{
    
     var body: some View{
         NavigationView{
             ZStack{
                 Color(red: 0.671, green: 0.863, blue: 0.678)
                     .ignoresSafeArea()
             VStack{
                         Text("　中止しますか？")
                             .font(.system(size: 70, weight: .black))
                             .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                         HStack{
                             NavigationLink(destination: ContentView()){
                                 
                                 Text("はい")
                                     .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                                     .font(Font.mainFont(size: 40))
                                     .bold()
                                     .frame(width: 200, height: 150)
                                     .border(Color.gray, width: 5)
                             }
                             
                             NavigationLink(destination: Quiz1answer1()){
                                     Text("いいえ")
                                     .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                                         .font(Font.mainFont(size: 40))
                                         .bold()
                                         .frame(width: 200, height: 150)
                                         .border(Color.gray, width: 5)
                             }
                         }
                     }
             }
         }


    }
}

struct Quiz1End: View{
    
    
     var body: some View{
         ZStack{
             Color(red: 0.671, green: 0.863, blue: 0.678)
                 .ignoresSafeArea()
         VStack{
             
                     Text("５問中〇〇問正解しました！")
                         .font(.system(size: 70, weight: .black, design: .default))
                         .bold()
                         .padding()
                         .padding()
                         .padding()
                         .navigationBarHidden(true)
                         .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))
                     NavigationLink(destination: StudyView()){
                         ZStack{
                             Color.red
                                 .frame(width:200,height: 110)
                             Text("終了")
                                 .foregroundColor(Color(red: 0.259,green: 0.259,blue:0.259))                                 .font(Font.mainFont(size: 40))
                                 .bold()
                             
                         }
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
