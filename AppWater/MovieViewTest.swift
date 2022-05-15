//
//  MovieViewTest.swift
//  AppWater
//
//  Created by 松下慎吾 on 2022/05/07.
//

import SwiftUI
import AVKit

struct MovieViewTest: View {
    //それぞれのサムネの場合に応じて対応した動画を出す
    @State var showingmovie1 = false
    @State var showingmovie2 = false
    @State var showingmovie3 = false
    @State var showingmovie4 = false
    @State var showingmovie5 = false
    @State var showingmovie6 = false
    @State var showingmovie7 = false
    @State var showingmovie8 = false
    @State var showingmovie9 = false
    @State var showingmovie10 = false
    //動画を選ぶ
    @State var selectmoview1 = true
    @State var selectmoview2 = false
    @State var selectmoview3 = false
    @State var selectmoview4 = false
    @State var selectmoview5 = false
    @State var selectmoview6 = false
    @State var selectmoview7 = false
    @State var selectmoview8 = false
    @State var selectmoview9 = false
    @State var selectmoview10 = false
    //buttonのスタイル
    @State private var buttonmovie1 : Bool = false
    @State private var buttonmovie2 : Bool = true
    @State private var buttonmovie3 : Bool = true
    @State private var buttonmovie4 : Bool = true
    @State private var buttonmovie5 : Bool = true
    @State private var buttonmovie6 : Bool = true
    @State private var buttonmovie7 : Bool = true
    @State private var buttonmovie8 : Bool = true
    @State private var buttonmovie9 : Bool = true
    @State private var buttonmovie10 : Bool = true
    
    @Environment(\.presentationMode)var PresentationMode
    
    var body: some View {
        ZStack{
//            Color.yellow
//                .frame(width:80,height: 10)
//                .cornerRadius(15)
//                .offset(x:-240,y:155)
//            Color.red
//                .frame(width:80,height: 10)
//                .cornerRadius(15)
//                .offset(x:-120,y:155)
//            Color.blue
//                .frame(width:80,height: 10)
//                .cornerRadius(15)
//                .offset(y:155)
//            Color.purple
//                .frame(width:80,height: 10)
//                .cornerRadius(15)
//                .offset(x:120,y:155)
//            Color.green
//                .frame(width:80,height: 10)
//                .cornerRadius(15)
//                .offset(x:240,y:155)
            VStack{
                Button(action: {
                    //それぞれのサムネの場合に応じて対応した動画を出す
                    if selectmoview1 == true{
                        showingmovie1 = true
                        showingmovie2 = false
                        showingmovie3 = false
                        showingmovie4 = false
                        showingmovie5 = false
                        showingmovie6 = false
                        showingmovie7 = false
                        showingmovie8 = false
                        showingmovie9 = false
                        showingmovie10 = false
                    }else if selectmoview2 == true{
                        showingmovie1 = false
                        showingmovie2 = true
                        showingmovie3 = false
                        showingmovie4 = false
                        showingmovie5 = false
                        showingmovie6 = false
                        showingmovie7 = false
                        showingmovie8 = false
                        showingmovie9 = false
                        showingmovie10 = false
                    }
                    else if selectmoview3 == true{
                        showingmovie1 = false
                        showingmovie2 = false
                        showingmovie3 = true
                        showingmovie4 = false
                        showingmovie5 = false
                        showingmovie6 = false
                        showingmovie7 = false
                        showingmovie8 = false
                        showingmovie9 = false
                        showingmovie10 = false
                    }
                    else if selectmoview4 == true{
                        showingmovie1 = false
                        showingmovie2 = false
                        showingmovie3 = false
                        showingmovie4 = true
                        showingmovie5 = false
                        showingmovie6 = false
                        showingmovie7 = false
                        showingmovie8 = false
                        showingmovie9 = false
                        showingmovie10 = false
                    }
                    else if selectmoview5 == true{
                        showingmovie1 = false
                        showingmovie2 = false
                        showingmovie3 = false
                        showingmovie4 = false
                        showingmovie5 = true
                        showingmovie6 = false
                        showingmovie7 = false
                        showingmovie8 = false
                        showingmovie9 = false
                        showingmovie10 = false
                    }
                    else if selectmoview6 == true{
                        showingmovie1 = false
                        showingmovie2 = false
                        showingmovie3 = false
                        showingmovie4 = false
                        showingmovie5 = false
                        showingmovie6 = true
                        showingmovie7 = false
                        showingmovie8 = false
                        showingmovie9 = false
                        showingmovie10 = false
                    }
                    else if selectmoview7 == true{
                        showingmovie1 = false
                        showingmovie2 = false
                        showingmovie3 = false
                        showingmovie4 = false
                        showingmovie5 = false
                        showingmovie6 = false
                        showingmovie7 = true
                        showingmovie8 = false
                        showingmovie9 = false
                        showingmovie10 = false
                    }
                    else if selectmoview8 == true{
                        showingmovie1 = false
                        showingmovie2 = false
                        showingmovie3 = false
                        showingmovie4 = false
                        showingmovie5 = false
                        showingmovie6 = false
                        showingmovie7 = false
                        showingmovie8 = true
                        showingmovie9 = false
                        showingmovie10 = false
                    }
                    else if selectmoview9 == true{
                        showingmovie1 = false
                        showingmovie2 = false
                        showingmovie3 = false
                        showingmovie4 = false
                        showingmovie5 = false
                        showingmovie6 = false
                        showingmovie7 = false
                        showingmovie8 = false
                        showingmovie9 = true
                        showingmovie10 = false
                    }
                    else if selectmoview10 == true{
                        showingmovie1 = false
                        showingmovie2 = false
                        showingmovie3 = false
                        showingmovie4 = false
                        showingmovie5 = false
                        showingmovie6 = false
                        showingmovie7 = false
                        showingmovie8 = false
                        showingmovie9 = false
                        showingmovie10 = true
                    }
                }){
                    if selectmoview1 == true{
                        Image("サムネ")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 700, height: 400)
                    }else if selectmoview2 == true{
                        Image("水族館")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 700, height: 400)
                    }
                    else if selectmoview3 == true{
                        Image("飛行機窓")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 700, height: 400)
                    }
                    else if selectmoview4 == true{
                        Image("夜景")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 700, height: 400)
                    }
                    else if selectmoview5 == true{
                        Image("飛行機窓")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 700, height: 400)
                    }
                    else if selectmoview6 == true{
                        Image("水族館")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 700, height: 400)
                    }
                    else if selectmoview7 == true{
                        Image("バケツ")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 700, height: 400)
                    }
                    else if selectmoview8 == true{
                        Image("コップ1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 700, height: 400)
                    }
                    else if selectmoview9 == true{
                        Image("コップ2")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 700, height: 400)
                    }
                    else if selectmoview10 == true{
                        Image("夜景")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 700, height: 400)
                    }
                }.fullScreenCover(isPresented: $showingmovie1){
                    moviestart1()
                }.fullScreenCover(isPresented: $showingmovie2){
                    moviestart2()}
    //            }.fullScreenCover(isPresented: $showingmovie3){
    //                moviestart3()
    //            }.fullScreenCover(isPresented: $showingmovie4){
    //                moviestart4()
    //            }.fullScreenCover(isPresented: $showingmovie5){
    //                moviestart5()
    //            }.fullScreenCover(isPresented: $showingmovie6){
    //                moviestart6()
    //            }.fullScreenCover(isPresented: $showingmovie7){
    //                moviestart7()
    //            }.fullScreenCover(isPresented: $showingmovie8){
    //                moviestart8()
    //            }.fullScreenCover(isPresented: $showingmovie9){
    //                moviestart9()
    //            }.fullScreenCover(isPresented: $showingmovie10){
    //                moviestart10()
    //            }
                
                .padding()
                
    //            //クイズ機能に飛ぶ
    //            NavigationLink(destination: Quiz1answer1()){
    //                ZStack{
    //                    Color.yellow
    //                        .frame(width:800,height: 60)
    //                        .cornerRadius(30)
    //                        .shadow(color: .gray, radius: 3, x: 10, y: 10)
    //                    Text("クイズを解く")
    //                        .foregroundColor(.white)
    //                        .font(.largeTitle)
    //                        .bold()
    //
    //                }.navigationViewStyle(.stack)
    //            }
                
                HStack{
                    
                VStack{
                    Button(action: {
                        selectmoview1 = true
                        selectmoview2 = false
                        selectmoview3 = false
                        selectmoview4 = false
                        selectmoview5 = false
                        selectmoview6 = false
                        selectmoview7 = false
                        selectmoview8 = false
                        selectmoview9 = false
                        selectmoview10 = false
                        
                        buttonmovie1.toggle()
                        buttonmovie2 = true
                        buttonmovie3 = true
                        buttonmovie4 = true
                        buttonmovie5 = true
                        buttonmovie6 = true
                        buttonmovie7 = true
                        buttonmovie8 = true
                        buttonmovie9 = true
                        buttonmovie10 = true
                    }){
                        Image(systemName: "play.rectangle.fill")
                            .resizable()
                            .scaledToFit()
                        
                            .frame(width: 80, height: 80)
                            .buttonStyle(MyButtonStyle())
                            .disabled(buttonmovie1)
                    }.padding(.horizontal)//1
                    Button(action: {
                        selectmoview1 = false
                        selectmoview2 = true
                        selectmoview3 = false
                        selectmoview4 = false
                        selectmoview5 = false
                        selectmoview6 = false
                        selectmoview7 = false
                        selectmoview8 = false
                        selectmoview9 = false
                        selectmoview10 = false
                        
                        buttonmovie1 = true
                        buttonmovie2.toggle()
                        buttonmovie3 = true
                        buttonmovie4 = true
                        buttonmovie5 = true
                        buttonmovie6 = true
                        buttonmovie7 = true
                        buttonmovie8 = true
                        buttonmovie9 = true
                        buttonmovie10 = true
                    }){
                        Image(systemName: "play.rectangle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .buttonStyle(MyButtonStyle())
                            .disabled(buttonmovie2)
                    }.padding(.horizontal)//2
                }
                VStack{
                    
                    Button(action: {
                        selectmoview1 = false
                        selectmoview2 = false
                        selectmoview3 = true
                        selectmoview4 = false
                        selectmoview5 = false
                        selectmoview6 = false
                        selectmoview7 = false
                        selectmoview8 = false
                        selectmoview9 = false
                        selectmoview10 = false
                        
                        buttonmovie1 = true
                        buttonmovie2 = true
                        buttonmovie3.toggle()
                        buttonmovie4 = true
                        buttonmovie5 = true
                        buttonmovie6 = true
                        buttonmovie7 = true
                        buttonmovie8 = true
                        buttonmovie9 = true
                        buttonmovie10 = true
                    }){
                        Image(systemName: "play.rectangle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .buttonStyle(MyButtonStyle())
                            .disabled(buttonmovie3)
                    }.padding(.horizontal)//3
                    Button(action: {
                        selectmoview1 = false
                        selectmoview2 = false
                        selectmoview3 = false
                        selectmoview4 = true
                        selectmoview5 = false
                        selectmoview6 = false
                        selectmoview7 = false
                        selectmoview8 = false
                        selectmoview9 = false
                        selectmoview10 = false
                        
                        buttonmovie1 = true
                        buttonmovie2 = true
                        buttonmovie3 = true
                        buttonmovie4.toggle()
                        buttonmovie5 = true
                        buttonmovie6 = true
                        buttonmovie7 = true
                        buttonmovie8 = true
                        buttonmovie9 = true
                        buttonmovie10 = true
                    }){
                        Image(systemName: "play.rectangle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .buttonStyle(MyButtonStyle())
                            .disabled(buttonmovie4)
                    }.padding(.horizontal)//4
                    
                }
                VStack{
                    
                    Button(action: {
                        selectmoview1 = false
                        selectmoview2 = false
                        selectmoview3 = false
                        selectmoview4 = false
                        selectmoview5 = true
                        selectmoview6 = false
                        selectmoview7 = false
                        selectmoview8 = false
                        selectmoview9 = false
                        selectmoview10 = false
                        
                        buttonmovie1 = true
                        buttonmovie2 = true
                        buttonmovie3 = true
                        buttonmovie4 = true
                        buttonmovie5.toggle()
                        buttonmovie6 = true
                        buttonmovie7 = true
                        buttonmovie8 = true
                        buttonmovie9 = true
                        buttonmovie10 = true
                    }){
                        Image(systemName: "play.rectangle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .buttonStyle(MyButtonStyle())
                            .disabled(buttonmovie5)
                    }.padding(.horizontal)//5
                    Button(action: {
                        selectmoview1 = false
                        selectmoview2 = false
                        selectmoview3 = false
                        selectmoview4 = false
                        selectmoview5 = false
                        selectmoview6 = true
                        selectmoview7 = false
                        selectmoview8 = false
                        selectmoview9 = false
                        selectmoview10 = false
                        
                        buttonmovie1 = true
                        buttonmovie2 = true
                        buttonmovie3 = true
                        buttonmovie4 = true
                        buttonmovie5 = true
                        buttonmovie6.toggle()
                        buttonmovie7 = true
                        buttonmovie8 = true
                        buttonmovie9 = true
                        buttonmovie10 = true
                    }){
                        Image(systemName: "play.rectangle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .buttonStyle(MyButtonStyle())
                            .disabled(buttonmovie6)
                    }.padding(.horizontal)//6
                    
                }
                VStack{
                    
                    Button(action: {
                        selectmoview1 = false
                        selectmoview2 = false
                        selectmoview3 = false
                        selectmoview4 = false
                        selectmoview5 = false
                        selectmoview6 = false
                        selectmoview7 = true
                        selectmoview8 = false
                        selectmoview9 = false
                        selectmoview10 = false
                        
                        buttonmovie1 = true
                        buttonmovie2 = true
                        buttonmovie3 = true
                        buttonmovie4 = true
                        buttonmovie5 = true
                        buttonmovie6 = true
                        buttonmovie7.toggle()
                        buttonmovie8 = true
                        buttonmovie9 = true
                        buttonmovie10 = true
                    }){
                        Image(systemName: "play.rectangle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .buttonStyle(MyButtonStyle())
                            .disabled(buttonmovie7)
                    }.padding(.horizontal)//7
                    Button(action: {
                        selectmoview1 = false
                        selectmoview2 = false
                        selectmoview3 = false
                        selectmoview4 = false
                        selectmoview5 = false
                        selectmoview6 = false
                        selectmoview7 = false
                        selectmoview8 = true
                        selectmoview9 = false
                        selectmoview10 = false
                        
                        buttonmovie1 = true
                        buttonmovie2 = true
                        buttonmovie3 = true
                        buttonmovie4 = true
                        buttonmovie5 = true
                        buttonmovie6 = true
                        buttonmovie7 = true
                        buttonmovie8.toggle()
                        buttonmovie9 = true
                        buttonmovie10 = true
                    }){
                        Image(systemName: "play.rectangle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .buttonStyle(MyButtonStyle())
                            .disabled(buttonmovie8)
                    }.padding(.horizontal)//8
                }
                VStack{
                   
                    Button(action: {
                        selectmoview1 = false
                        selectmoview2 = false
                        selectmoview3 = false
                        selectmoview4 = false
                        selectmoview5 = false
                        selectmoview6 = false
                        selectmoview7 = false
                        selectmoview8 = false
                        selectmoview9 = true
                        selectmoview10 = false
                        
                        buttonmovie1 = true
                        buttonmovie2 = true
                        buttonmovie3 = true
                        buttonmovie4 = true
                        buttonmovie5 = true
                        buttonmovie6 = true
                        buttonmovie7 = true
                        buttonmovie8 = true
                        buttonmovie9.toggle()
                        buttonmovie10 = true
                    }){
                        Image(systemName: "play.rectangle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .buttonStyle(MyButtonStyle())
                            .disabled(buttonmovie9)
                    }.padding(.horizontal)//9
                    Button(action: {
                        selectmoview1 = false
                        selectmoview2 = false
                        selectmoview3 = false
                        selectmoview4 = false
                        selectmoview5 = false
                        selectmoview6 = false
                        selectmoview7 = false
                        selectmoview8 = false
                        selectmoview9 = false
                        selectmoview10 = true
                        
                        buttonmovie1 = true
                        buttonmovie2 = true
                        buttonmovie3 = true
                        buttonmovie4 = true
                        buttonmovie5 = true
                        buttonmovie6 = true
                        buttonmovie7 = true
                        buttonmovie8 = true
                        buttonmovie9 = true
                        buttonmovie10.toggle()
                    }){
                        Image(systemName: "play.rectangle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .buttonStyle(MyButtonStyle())
                            .disabled(buttonmovie10)
                    }.padding(.horizontal)//10
                }
            }
                .padding(.bottom)
                ZStack{
                    Color(red:0.9,green:0.9, blue:0.7)
                        .frame(width:800,height: 110)
                        .cornerRadius(30)
                        .shadow(color: .gray, radius: 3, x: 10, y: 10)
                    if selectmoview1 == true{
                        Text("この動画では水の硬度や、熊本水遺産について説明するよ！")
                            .font(.title)
                            .bold()
                    }else if selectmoview2 == true{
                        Text("ここに説明222222")
                    }
                    else if selectmoview3 == true{
                        Text("ここに説明333333")
                    }
                    else if selectmoview4 == true{
                        Text("ここに説明444444")
                    }
                    else if selectmoview5 == true{
                        Text("ここに説明555555")
                    }
                    else if selectmoview6 == true{
                        Text("ここに説明666666")
                    }
                    else if selectmoview7 == true{
                        Text("ここに説明777777")
                    }
                    else if selectmoview8 == true{
                        Text("ここに説明888888")
                    }
                    else if selectmoview9 == true{
                        Text("ここに説明999999")
                    }
                    else if selectmoview10 == true{
                        Text("ここに説明101010")
                    }
                    
                }
                
            }
            .navigationTitle("動画を見よう！")
            .navigationBarTitleDisplayMode(.inline)
    //        .toolbar {
    //            /// ナビゲーションバー左、戻るボタンでSFシンボルを使いたい
    //            ToolbarItem(placement: .navigationBarLeading){
    //                Button(action: {}) {
    //                    Image(systemName: "house")
    //                }
    //            }
    //        }
        }
    }
}
struct moviestart1: View{
    
     private let player = AVPlayer(url: Bundle.main.url(forResource:"熊本の水２　仮完成",withExtension: "mp4")!)
    
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
struct moviestart2: View{
    
     private let player1 = AVPlayer(url: Bundle.main.url(forResource:"SDGs 山北-1",withExtension: "mov")!)
    
     var body: some View{
        VideoPlayer(player: player1)
            .onAppear(){
                player1.play()
                
            }
            .onDisappear(){
                player1.pause()
            }
        }
    }


struct MovieViewTest_Previews: PreviewProvider {
    static var previews: some View {
        MovieViewTest()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
