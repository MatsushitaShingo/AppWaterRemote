//
//  MovieView.swift
//  AppWater
//
//  Created by 松下慎吾 on 2022/03/15.
//

import SwiftUI
import AVKit

struct MovieView: View {
    @State var showingDetail1 = false
    @State var showingDetail2 = false
//    let player = URL(fileURLWithPath: Bundle.main.path(forResource:"movie",ofType: "mp4")!)
    
     
     
    
    var body: some View {
        ScrollView{
            VStack{
                VStack{
                    Text("節水")
                    HStack{
                        Button(action: {
                            self.showingDetail1.toggle()
                        }){
                            Image("夜景")
                        }.fullScreenCover(isPresented: $showingDetail1){
                            moviestart()
                        }
                        
                        Button(action: {
                            self.showingDetail2.toggle()
                        }){
                            Image("飛行機窓")
                        }.fullScreenCover(isPresented: $showingDetail2){
                            moviestart1()
                        }
                    }
                }
                .frame(width: 750, height: 250)
                .border(Color.blue, width: 5)
                .padding()
                VStack{
                    Text("地下水")
                    HStack{
                        Button(action: {
                            self.showingDetail1.toggle()
                        }){
                            Image("夜景")
                        }.fullScreenCover(isPresented: $showingDetail1){
                            moviestart()
                        }
                        
                        Button(action: {
                            self.showingDetail2.toggle()
                        }){
                            Image("飛行機窓")
                        }.fullScreenCover(isPresented: $showingDetail2){
                            moviestart1()
                        }
                    }
                }
                .frame(width: 750, height: 250)
                .border(Color.green, width: 5)
                .padding()
                VStack{
                    Text("歴史")
                    HStack{
                        Button(action: {
                            self.showingDetail1.toggle()
                        }){
                            Image("夜景")
                        }.fullScreenCover(isPresented: $showingDetail1){
                            moviestart()
                        }
                        
                        Button(action: {
                            self.showingDetail2.toggle()
                        }){
                            Image("飛行機窓")
                        }.fullScreenCover(isPresented: $showingDetail2){
                            moviestart1()
                        }
                    }
                }
                .frame(width: 750, height: 250)
                .border(Color.purple, width: 5)
                .padding()
                VStack{
                    Text("世界の水")
                    HStack{
                        Button(action: {
                            self.showingDetail1.toggle()
                        }){
                            Image("夜景")
                        }.fullScreenCover(isPresented: $showingDetail1){
                            moviestart()
                        }
                        
                        Button(action: {
                            self.showingDetail2.toggle()
                        }){
                            Image("飛行機窓")
                        }.fullScreenCover(isPresented: $showingDetail2){
                            moviestart1()
                        }
                    }
                }
                .frame(width: 750, height: 250)
                .border(Color.yellow, width: 5)
                .padding()
                VStack{
                    Text("水循環")
                    HStack{
                        Button(action: {
                            self.showingDetail1.toggle()
                        }){
                            Image("夜景")
                        }.fullScreenCover(isPresented: $showingDetail1){
                            moviestart()
                        }
                        
                        Button(action: {
                            self.showingDetail2.toggle()
                        }){
                            Image("飛行機窓")
                        }.fullScreenCover(isPresented: $showingDetail2){
                            moviestart1()
                        }
                    }
                }
                .frame(width: 750, height: 250)
                .border(Color.red, width: 5)
                .padding()
        }
            //Vstackのフレームサイズ変更
            .frame(width: 800,
                   alignment:.center)
    }
}
struct moviestart: View{
    
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
    struct moviestart1: View{
        
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

struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView()
.previewInterfaceOrientation(.landscapeLeft)
    }
}
