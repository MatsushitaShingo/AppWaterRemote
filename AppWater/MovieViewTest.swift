//
//  MovieViewTest.swift
//  AppWater
//
//  Created by 松下慎吾 on 2022/05/07.
//

import SwiftUI
import AVKit

struct MovieViewTest: View {
    
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
    
    var body: some View {
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
                    Image("夜景")
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
            HStack{
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
                }){
                    Image(systemName: "play.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                }.padding(.horizontal)
                
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
                }){
                    Image(systemName: "play.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                }.padding(.horizontal)
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
                }){
                    Image(systemName: "play.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                }.padding(.horizontal)
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
                }){
                    Image(systemName: "play.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                }.padding(.horizontal)
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
                }){
                    Image(systemName: "play.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                }.padding(.horizontal)
            }
            HStack{
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
                }){
                    Image(systemName: "play.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                }.padding(.horizontal)
                
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
                }){
                    Image(systemName: "play.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                }.padding(.horizontal)
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
                }){
                    Image(systemName: "play.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                }.padding(.horizontal)
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
                }){
                    Image(systemName: "play.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                }.padding(.horizontal)
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
                }){
                    Image(systemName: "play.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                }.padding(.horizontal)
            }
            .padding(.bottom)
            ZStack{
                Color(red:0.9,green:0.9, blue:0.7)
                    .frame(width:800,height: 110)
                    .cornerRadius(30)
                    .shadow(color: .gray, radius: 3, x: 10, y: 10)
                if selectmoview1 == true{
                    Text("ここに説明111111")
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
}



struct MovieViewTest_Previews: PreviewProvider {
    static var previews: some View {
        MovieViewTest()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
